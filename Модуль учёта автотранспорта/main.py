import torch
import cv2
import time
import pytesseract
import re
import numpy as np
import easyocr
from collections import Counter
from collections import defaultdict
import mysql.connector
from transliterate import translit

# Глобальные переменные
EASY_OCR = easyocr.Reader(['ru'])
OCR_TH = 0.2

pytesseract.pytesseract.tesseract_cmd = r'C:/Program Files/Tesseract-OCR/tesseract.exe'

# Массив слов
mas_words = []

# Координаты проверки въезда \ выезда
cur_y = 0
prev_y = 0
vector_y = 0

mas_vectors = []

flag_in_out = 0
flag_in_out_counter = 0
flag_counter = 0

mas_words = []


### -------------------------------------- function to run detection ---------------------------------------------------------
def detectx(frame, model):
    frame = [frame]
    print(f"[INFO] Detecting. . . ")
    results = model(frame)
    labels, cordinates = results.xyxyn[0][:, -1], results.xyxyn[0][:, :-1]
    return labels, cordinates


### ------------------------------------ to plot the BBox and results --------------------------------------------------------
def plot_boxes(results, frame, classes):
    global cur_y
    global prev_y
    global vector_y
    global flag_in_out
    global flag_counter
    global flag_in_out_counter
    global mas_words

    labels, cord = results
    n = len(labels)
    x_shape, y_shape = frame.shape[1], frame.shape[0]

    print(f"[INFO] Total {n} detections. . . ")
    print(f"[INFO] Looping through all detections. . . ")

    if cord.numel() > 0:
        flag_in_out_counter += 1
        flag_counter = 0
        print('flag_in_out_counter' + str(flag_in_out_counter))
    else:
        flag_counter += 1
        print('flag_counter' + str(flag_counter))

    ### looping through the detections
    for i in range(n):
        row = cord[i]
        if row[4] >= 0.55:  ### threshold value for detection. We are discarding everything below this value
            print(f"[INFO] Extracting BBox coordinates. . . ")
            x1, y1, x2, y2 = int(row[0] * x_shape), int(row[1] * y_shape), int(row[2] * x_shape), int(
                row[3] * y_shape)  ## BBOx coordniates
            text_d = classes[int(labels[i])]

            coords = [x1, y1, x2, y2]
            if y1 > 300 and y2 < 550:
                if cur_y > 0:
                    prev_y = cur_y
                cur_y = y1

                if prev_y > 0:
                    vector_y = cur_y - prev_y
                    mas_vectors.append(vector_y)

                plate_num = recognize_plate_tesseract(img=frame, coords=coords)
                plate_num = recognize_plate_easyocr(img=frame, coords=coords, reader=EASY_OCR, region_threshold=OCR_TH)
                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)  ## BBox
                cv2.rectangle(frame, (x1, y1 - 20), (x2, y1), (0, 255, 0), -1)  ## for text label background
                cv2.putText(frame, f"{plate_num}", (x1, y1), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
    if flag_counter == 10 and cur_y > 0:
        avg_vect = np.mean(mas_vectors)
        # print(avg_vect)
        # print(mas_vectors)
        if avg_vect > 0:
            print('Въезд!!!!!!!!!!!!!!!!')
            flag_in_out = 1
        if avg_vect < 0:
            print('Выезд!!!!!!!!!!!!!!!!')
            flag_in_out = 2

        # Удаление символов '\n' и пустых элементов
        mas_words = [item.strip() for item in mas_words if item.strip()]
        print(mas_words)
        # Создаем словарь для хранения символов на каждой позиции в словах
        position_chars = defaultdict(list)

        # Заполняем словарь символами на каждой позиции
        for word in mas_words:
            for i, char in enumerate(word):
                position_chars[i].append(char)

        # Формируем итоговое слово из наиболее часто встречаемых символов на каждой позиции
        result_word = ''
        for i in range(6):  # Длина итогового слова
            # Получаем список символов на текущей позиции
            chars_at_position = position_chars[i]
            # Если текущая позиция 1, 5 или 6 и символ - цифра, исключаем его из учета
            if i in [0, 4, 5] and any(char.isdigit() for char in chars_at_position):
                # Фильтруем цифры и спецсимволы
                chars_at_position = [char for char in chars_at_position if char.isalpha()]
            # Находим наиболее часто встречаемый символ на текущей позиции
            if chars_at_position:
                most_common_char = \
                Counter(char.encode('utf-8', 'ignore').decode('utf-8') for char in chars_at_position).most_common(1)[0][
                    0]
                # Добавляем этот символ к итоговому слову
                result_word += most_common_char
        print("Номерной знак:", result_word.upper())
        mas_words.clear()
        mas_vectors.clear()
        prev_y = 0
        cur_y = 0

        # Добавление в БД
        #Подключение к базе данных MySQL
        mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="parking",
            charset="utf8"
        )

        # Переводим символы распознанного номера к латинице
        result_word_latin = translit(result_word.upper(), "ru", reversed=True)
        result_word_utf8 = result_word_latin.encode('utf-8')

        #Создание курсора для выполнения SQL-запросов
        mycursor = mydb.cursor()

        #SQL-запрос для добавления данных в таблицу
        sql = "CALL add_number(%s, %s, %s)"
        val = ('1', result_word_latin, flag_in_out)

        # Выполнение SQL-запроса
        mycursor.execute(sql, val)

        # Подтверждение изменений в базе данных
        mydb.commit()

        # Вывод информации о количестве добавленных строк
        print(mycursor.rowcount, "record inserted.")
    return frame


#### ---------------------------- function to recognize license plate --------------------------------------


# function to recognize license plate numbers using Tesseract OCR
def recognize_plate_easyocr(img, coords, reader, region_threshold):
    # separate coordinates from box
    xmin, ymin, xmax, ymax = coords
    nplate = img[int(ymin):int(ymax), int(xmin):int(xmax)]  ### cropping the number plate from the whole image

    ocr_result = reader.readtext(nplate)

    text = filter_text(region=nplate, ocr_result=ocr_result, region_threshold=region_threshold)

    # Choose one text from the list, for example, the first one
    if text:
        text = text[0].upper()
        # Убираем символы '\n' из середины строки
        text = text.replace('\n', '')
        mas_words.append(text.strip())  # удаление символов '\n'
        return text
    else:
        return ""

def recognize_plate_tesseract(img, coords):
    # separate coordinates from box
    xmin, ymin, xmax, ymax = coords
    nplate = img[int(ymin):int(ymax), int(xmin):int(xmax)]  ### cropping the number plate from the whole image

    # Преобразовать изображение в оттенки серого
    gray = cv2.cvtColor(nplate, cv2.COLOR_BGR2GRAY)

    # Применить адаптивную пороговую обработку для улучшения качества распознавания
    thresh = cv2.adaptiveThreshold(gray, 255, cv2.ADAPTIVE_THRESH_MEAN_C, cv2.THRESH_BINARY, 11, 2)

    # Используем pytesseract для распознавания текста на изображении
    text = pytesseract.image_to_string(thresh, config='--psm 6')

    print("Распознанный текст:", text)  # Выводим распознанный текст в консоль

    # Убираем символы '\n' из середины строки
    text = text.replace('\n', '')
    mas_words.append(text.strip())  # удаление символов '\n'
    return text.strip()

def filter_text(region, ocr_result, region_threshold):
    rectangle_size = region.shape[0] * region.shape[1]

    plate = []
    print(ocr_result)
    for result in ocr_result:
        length = np.sum(np.subtract(result[0][1], result[0][0]))
        height = np.sum(np.subtract(result[0][2], result[0][1]))

        if length * height / rectangle_size > region_threshold:
            plate.append(result[1])
    return plate

### ---------------------------------------------- Main function -----------------------------------------------------

def main(img_path=None, vid_path=None, vid_out=None):
    global mas_words  # объявляем переменную mas_words как глобальную
    print(f"[INFO] Loading model... ")
    model = torch.hub.load('./yolov5-master', 'custom', source='local', path='best.pt', force_reload=True)  ### The repo is stored locally
    classes = model.names  ### class names in string format

    ### --------------- for detection on image --------------------
    if img_path != None:
        print(f"[INFO] Working with image: {img_path}")
        img_out_name = f"./output/result_{img_path.split('/')[-1]}"

        frame = cv2.imread(img_path)  ### reading the image
        frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

        results = detectx(frame, model=model)  ### DETECTION HAPPENING HERE

        frame = cv2.cvtColor(frame, cv2.COLOR_RGB2BGR)

        frame = plot_boxes(results, frame, classes=classes)

        cv2.namedWindow("img_only", cv2.WINDOW_NORMAL)  ## creating a free windown to show the result

        while True:
            cv2.imshow("img_only", frame)

            if cv2.waitKey(5) & 0xFF == ord('q'):
                print(f"[INFO] Exiting. . . ")
                cv2.imwrite(f"{img_out_name}", frame)  ## if you want to save he output result.
                break

    ### --------------- for detection on video --------------------
    elif vid_path != None:
        print(f"[INFO] Working with video: {vid_path}")

        ## reading the video
        cap = cv2.VideoCapture(vid_path)

        total_frames = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))  # Получаем общее количество кадров в видео
        frame_no = 1
        cv2.namedWindow("vid_out", cv2.WINDOW_NORMAL)
        while True:
            ret, frame = cap.read()
            if frame_no > total_frames:
                break
            if ret and frame_no % 1 == 0:
                if frame_no % 3 == 0:
                    print(f"[INFO] Working with frame {frame_no} ")
                    frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
                    results = detectx(frame, model=model)
                    frame = cv2.cvtColor(frame, cv2.COLOR_RGB2BGR)
                    frame = plot_boxes(results, frame, classes=classes)
                    cv2.imshow("vid_out", frame)

                    if cv2.waitKey(5) & 0xFF == ord('q'):
                        break
            frame_no += 1

        print(f"[INFO] Cleaning up. . . ")
        ## closing all windows
        cv2.destroyAllWindows()


### -------------------  calling the main function-------------------------------
main(vid_path="test_images/cam2.mp4",vid_out="vid_1.mp4") ### for custom video
