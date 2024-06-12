import cv2
import numpy as np
import torch
import mysql.connector

# Загрузка модели Yolov7
model = torch.hub.load("yolov7", "custom", path_or_model="yolov7-e6e.pt", source='local')

# Счётчики состояния машин на парковках
car_zone1 = 0
car_zone2 = 0
car_zone1_prev = 0
car_zone2_prev = 0

# Подключение к базе данных MySQL
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="parking",
    charset="utf8")

# Создание курсора для выполнения SQL-запросов
mycursor = mydb.cursor()

# SQL-запрос для добавления данных в таблицу
sql = "SELECT p_x1, p_y1, p_x2, p_y2, p_x3, p_y3, p_x4, p_y4 FROM parking_areas WHERE id_parkingplan = 1"

# Выполнение SQL-запроса
mycursor.execute(sql)
myresult = mycursor.fetchall()

# Координаты зон полигонов на парковке
parking_zone_polygon1 = np.array([[myresult[0][0], myresult[0][1]],
                                  [myresult[0][2], myresult[0][3]], [myresult[0][4],
                                   myresult[0][5]], [myresult[0][6], myresult[0][7]]], np.int32)

parking_zone_polygon2 = np.array([[myresult[1][0], myresult[1][1]],
                                  [myresult[1][2], myresult[1][3]], [myresult[1][4],
                                   myresult[1][5]], [myresult[1][6], myresult[1][7]]], np.int32)

# Вывод изображения
def count_cars (frame_image):
    results = model(frame_image)

    # Получение обнаружений с порогом уверенности
    detections = results.xyxy[0]
    confidence_threshold = 0
    car_results = [obj for obj in detections if obj[5] == 2 and obj[4] > confidence_threshold]

    # Загружаем изображение с помощью OpenCV
    image = frame_image

    # Рисуем ограничивающие рамки вокруг машин
    for car in car_results:
        # Извлечение координат
        x1, y1, x2, y2 = int(car[0]), int(car[1]), int(car[2]), int(car[3])

        # Рисуем прямугольную рамку вокруг машины
        cv2.rectangle(image, (x1, y1), (x2, y2), (0, 255, 0), 2)
        cv2.putText(image, f'Car: {car[4]:.2f}', (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36, 255, 12), 2)

        # Отображение координат центра
        cv2.circle(image, (int((x1 + x2) / 2), int((y1 + y2) / 2)), 5, (255, 0, 0), -1)

    # Рисуем прямоугольник парковочной зоны для отладки
    cv2.polylines(image, [parking_zone_polygon1],
                  isClosed=True, color=(255, 0, 0), thickness=2)
    # Рисуем второй прямоугольник парковочной зоны для отладки
    cv2.polylines(image, [parking_zone_polygon2],
                  isClosed=True, color=(0, 0, 255), thickness=2)

    # Считаем машины на парковке
    # Создаем список для хранения координат центров, находящихся внутри прямоугольника
    centers_inside_parking_zone = []
    # Создаем список для хранения координат центров, находящихся внутри второго прямоугольника
    centers_inside_second_parking_zone = []

    # Проверяем каждую координату центра на вхождение в прямоугольник
    for car in car_results:
        center_x, center_y = int((car[0] + car[2]) / 2), int((car[1] + car[3]) / 2)

        # Проверяем, находится ли центр внутри прямоугольника
        is_inside = cv2.pointPolygonTest(parking_zone_polygon1, (center_x, center_y), False)

        # Если координата центра внутри прямоугольника, добавляем ее в список
        if is_inside >= 0:
            centers_inside_parking_zone.append((center_x, center_y))

    # Проверяем каждую координату центра на вхождение во второй прямоугольник
    for car in car_results:
        center_x, center_y = int((car[0] + car[2]) / 2), int((car[1] + car[3]) / 2)

        # Проверяем, находится ли центр внутри второго прямоугольника
        is_inside = cv2.pointPolygonTest(parking_zone_polygon2, (center_x, center_y), False)

        # Если координата центра внутри второго прямоугольника, добавляем ее в список
        if is_inside >= 0:
            centers_inside_second_parking_zone.append((center_x, center_y))

    # Выводим количество найденных центров в консоль
    #print("Количество машин в первой парковочной зоне:", len(centers_inside_parking_zone))
    #print("Количество машин во второй парковочной зоне:", len(centers_inside_second_parking_zone))

    #all_cars = len(centers_inside_parking_zone) + len(centers_inside_second_parking_zone);

    #print('Количество машин на парковке:', all_cars)

    car_zone1x = len(centers_inside_parking_zone)
    car_zone2x = len(centers_inside_second_parking_zone)

    # Показываем изображение
    # Определение новых размеров
    new_width = 1920
    new_height = 1080
    # Изменение размера изображения
    resized_image = cv2.resize(image, (new_width, new_height))
    # Отображение уменьшенного изображения
    cv2.imshow('Detected Cars', resized_image)
    #cv2.waitKey(0)
    #cv2.destroyAllWindows()
    return car_zone1x, car_zone2x


# Подгружаем наше видео с сервера и ограничиваем раскадровку
cap = cv2.VideoCapture('http://localhost:8080/my_camera')
frame_num = 0
change_cnt1 = 0
change_cnt2 = 0

while True:
    if frame_num % 30 == 0:
      ret, frame = cap.read()
      car_zone1, car_zone2 = count_cars(frame)

      change_cnt1 += 1
      change_cnt2 += 1

     # Обновляем значение занятых парковочных мест в БД.
      # Сбрасываем счётчик если есть различия в течение 5 секунд
      if car_zone1 != car_zone1_prev:
          change_cnt1 = 0
          car_zone1_prev = car_zone1
      if change_cnt1 == 10:
          sum_cars_used = car_zone2 + car_zone1
          sql_update_cars = 'UPDATE parking_plan set car_place_used = %s WHERE id_entrance = 1'
          val_cars_used = (sum_cars_used),
          mycursor.execute(sql_update_cars, val_cars_used)
          # Подтверждение изменений в базе данных
          mydb.commit()

      if car_zone2 != car_zone2_prev:
          change_cnt2 = 0
          car_zone2_prev = car_zone2
      if change_cnt2 == 10:
          sum_cars_used = car_zone2 + car_zone1
          sql_update_cars = 'UPDATE parking_plan set car_place_used = %s WHERE id_entrance = 1'
          val_cars_used = (sum_cars_used),
          mycursor.execute(sql_update_cars, val_cars_used)
          # Подтверждение изменений в базе данных
          mydb.commit()

      if cv2.waitKey(1) == 27:
        exit(0)
    frame_num += 1