SET NAMES 'utf8';

USE parking;

--
-- Drop table `request`
--
DROP TABLE IF EXISTS request;

--
-- Drop procedure `parking_driveway_report`
--
DROP PROCEDURE IF EXISTS parking_driveway_report;

--
-- Drop procedure `parking_drivewaytype_report`
--
DROP PROCEDURE IF EXISTS parking_drivewaytype_report;

--
-- Drop procedure `parking_time_driveway_report`
--
DROP PROCEDURE IF EXISTS parking_time_driveway_report;

--
-- Drop view `view_driveway_car`
--
DROP VIEW IF EXISTS view_driveway_car CASCADE;

--
-- Drop view `view_in_out`
--
DROP VIEW IF EXISTS view_in_out CASCADE;

--
-- Drop procedure `add_number`
--
DROP PROCEDURE IF EXISTS add_number;

--
-- Drop table `driveway`
--
DROP TABLE IF EXISTS driveway;

--
-- Drop table `driveway_type`
--
DROP TABLE IF EXISTS driveway_type;

--
-- Drop table `gate`
--
DROP TABLE IF EXISTS gate;

--
-- Drop view `view_cars`
--
DROP VIEW IF EXISTS view_cars CASCADE;

--
-- Drop view `view_numberofuser`
--
DROP VIEW IF EXISTS view_numberofuser CASCADE;

--
-- Drop view `view_ownercar_user`
--
DROP VIEW IF EXISTS view_ownercar_user CASCADE;

--
-- Drop table `link_car`
--
DROP TABLE IF EXISTS link_car;

--
-- Drop view `view_car_number_concat`
--
DROP VIEW IF EXISTS view_car_number_concat CASCADE;

--
-- Drop view `view_cars2`
--
DROP VIEW IF EXISTS view_cars2 CASCADE;

--
-- Drop view `view_car_concat`
--
DROP VIEW IF EXISTS view_car_concat CASCADE;

--
-- Drop view `view_using_car`
--
DROP VIEW IF EXISTS view_using_car CASCADE;

--
-- Drop table `cars`
--
DROP TABLE IF EXISTS cars;

--
-- Drop table `color`
--
DROP TABLE IF EXISTS color;

--
-- Drop view `view_owner_concat`
--
DROP VIEW IF EXISTS view_owner_concat CASCADE;

--
-- Drop view `view_owners`
--
DROP VIEW IF EXISTS view_owners CASCADE;

--
-- Drop procedure `user_autorize`
--
DROP PROCEDURE IF EXISTS user_autorize;

--
-- Drop table `owner`
--
DROP TABLE IF EXISTS owner;

--
-- Drop table `infomation_owners`
--
DROP TABLE IF EXISTS infomation_owners;

--
-- Drop table `parking_areas`
--
DROP TABLE IF EXISTS parking_areas;

--
-- Drop table `parking_plan`
--
DROP TABLE IF EXISTS parking_plan;

--
-- Drop table `entrance`
--
DROP TABLE IF EXISTS entrance;

--
-- Drop view `view_group_concat_users`
--
DROP VIEW IF EXISTS view_group_concat_users CASCADE;

--
-- Drop view `view_users`
--
DROP VIEW IF EXISTS view_users CASCADE;

--
-- Drop procedure `set_default_pass`
--
DROP PROCEDURE IF EXISTS set_default_pass;

--
-- Drop procedure `set_pass`
--
DROP PROCEDURE IF EXISTS set_pass;

--
-- Drop table `users`
--
DROP TABLE IF EXISTS users;


DROP TABLE IF EXISTS access_right;


DROP TABLE IF EXISTS car_models;

DROP TABLE IF EXISTS car_brands;

USE parking;


CREATE TABLE car_brands (
  id_brand int NOT NULL AUTO_INCREMENT,
  name_brand varchar(60) DEFAULT NULL,
  PRIMARY KEY (id_brand)
)
ENGINE = INNODB,
AUTO_INCREMENT = 12,
AVG_ROW_LENGTH = 1489,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create table `car_models`
--
CREATE TABLE car_models (
  id_model int NOT NULL AUTO_INCREMENT,
  name_model varchar(50) DEFAULT NULL,
  id_brand int DEFAULT NULL,
  PRIMARY KEY (id_model)
)
ENGINE = INNODB,
AUTO_INCREMENT = 50,
AVG_ROW_LENGTH = 341,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create foreign key
--
ALTER TABLE car_models
ADD CONSTRAINT FK_car_models_car_brands_id_brand FOREIGN KEY (id_brand)
REFERENCES car_brands (id_brand);

--
-- Create table `access_right`
--
CREATE TABLE access_right (
  id_access_right int NOT NULL AUTO_INCREMENT,
  name_access_right varchar(255) DEFAULT NULL,
  access_description varchar(255) DEFAULT NULL,
  PRIMARY KEY (id_access_right)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create table `users`
--
CREATE TABLE users (
  id_user int NOT NULL AUTO_INCREMENT,
  user_login varchar(50) DEFAULT NULL,
  user_pass varchar(50) DEFAULT NULL,
  id_access int DEFAULT NULL,
  isDeleted int DEFAULT 0,
  PRIMARY KEY (id_user)
)
ENGINE = INNODB,
AUTO_INCREMENT = 29,
AVG_ROW_LENGTH = 2340,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create foreign key
--
ALTER TABLE users
ADD CONSTRAINT FK_users_access_right_id_access_right FOREIGN KEY (id_access)
REFERENCES access_right (id_access_right);

DELIMITER $$

--
-- Create procedure `set_pass`
--
CREATE
DEFINER = 'root'@'localhost'
PROCEDURE set_pass (IN Param1 int, IN Param2 varchar(255))
BEGIN
  UPDATE LOW_PRIORITY users
  SET user_pass = MD5(TO_BASE64(Param2))
  WHERE id_user = Param1;
END
$$

--
-- Create procedure `set_default_pass`
--
CREATE
DEFINER = 'root'@'localhost'
PROCEDURE set_default_pass (IN Param1 int)
BEGIN
  UPDATE LOW_PRIORITY users
  SET user_pass = MD5(TO_BASE64('123'))
  WHERE id_user = Param1;
END
$$

DELIMITER ;

--
-- Create view `view_users`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_users
AS
SELECT
  `users`.`user_login` AS `user_login`,
  `users`.`user_pass` AS `user_pass`,
  `access_right`.`name_access_right` AS `name_access_right`
FROM (`users`
  JOIN `access_right`
    ON ((`users`.`id_access` = `access_right`.`id_access_right`)));

--
-- Create view `view_group_concat_users`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_group_concat_users
AS
SELECT
  GROUP_CONCAT(`users`.`user_login` SEPARATOR ',') AS `Login`,
  `users`.`id_access` AS `id_access`,
  `access_right`.`name_access_right` AS `name_access_right`
FROM (`users`
  JOIN `access_right`
    ON ((`users`.`id_access` = `access_right`.`id_access_right`)))
GROUP BY `users`.`id_access`,
         `access_right`.`name_access_right`;

--
-- Create table `entrance`
--
CREATE TABLE entrance (
  id_entrance int UNSIGNED NOT NULL AUTO_INCREMENT,
  number_entrance int UNSIGNED NOT NULL,
  PRIMARY KEY (id_entrance)
)
ENGINE = INNODB,
AUTO_INCREMENT = 13,
AVG_ROW_LENGTH = 1365,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Create table `parking_plan`
--
CREATE TABLE parking_plan (
  id_parkingplan int NOT NULL AUTO_INCREMENT,
  id_entrance int UNSIGNED DEFAULT NULL,
  car_place_used int DEFAULT NULL,
  max_cars_parking int DEFAULT NULL,
  PRIMARY KEY (id_parkingplan)
)
ENGINE = INNODB,
AUTO_INCREMENT = 13,
AVG_ROW_LENGTH = 1365,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create foreign key
--
ALTER TABLE parking_plan
ADD CONSTRAINT FK_parking_plan_id_entrance FOREIGN KEY (id_entrance)
REFERENCES entrance (id_entrance);

--
-- Create table `parking_areas`
--
CREATE TABLE parking_areas (
  id_parking_area int NOT NULL AUTO_INCREMENT,
  p_x1 int DEFAULT NULL,
  p_y1 int DEFAULT NULL,
  p_x2 int DEFAULT NULL,
  p_y2 int DEFAULT NULL,
  p_x3 int DEFAULT NULL,
  p_y3 int DEFAULT NULL,
  p_x4 int DEFAULT NULL,
  p_y4 int DEFAULT NULL,
  id_parkingplan int DEFAULT NULL,
  PRIMARY KEY (id_parking_area)
)
ENGINE = INNODB,
AUTO_INCREMENT = 3,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create foreign key
--
ALTER TABLE parking_areas
ADD CONSTRAINT FK_parking_areas_parking_plan_id_parkingplan FOREIGN KEY (id_parkingplan)
REFERENCES parking_plan (id_parkingplan);

--
-- Create table `infomation_owners`
--
CREATE TABLE infomation_owners (
  id_ownerinfo int NOT NULL AUTO_INCREMENT,
  flat varchar(255) DEFAULT NULL,
  id_entrance int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id_ownerinfo)
)
ENGINE = INNODB,
AUTO_INCREMENT = 43,
AVG_ROW_LENGTH = 1170,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create foreign key
--
ALTER TABLE infomation_owners
ADD CONSTRAINT FK_infomation_owners_id_entrance FOREIGN KEY (id_entrance)
REFERENCES entrance (id_entrance);

--
-- Create table `owner`
--
CREATE TABLE owner (
  id_owner int NOT NULL AUTO_INCREMENT,
  firstname varchar(255) DEFAULT NULL,
  middlename varchar(255) DEFAULT NULL,
  lastname varchar(255) DEFAULT NULL,
  phone varchar(20) DEFAULT NULL,
  id_user int DEFAULT NULL,
  id_ownerinfo int DEFAULT NULL,
  PRIMARY KEY (id_owner)
)
ENGINE = INNODB,
AUTO_INCREMENT = 34,
AVG_ROW_LENGTH = 3276,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create foreign key
--
ALTER TABLE owner
ADD CONSTRAINT FK_owner_infomation_owners_id_ownerinfo FOREIGN KEY (id_ownerinfo)
REFERENCES infomation_owners (id_ownerinfo);

--
-- Create foreign key
--
ALTER TABLE owner
ADD CONSTRAINT FK_owner_users_id_user FOREIGN KEY (id_user)
REFERENCES users (id_user);

DELIMITER $$

--
-- Create procedure `user_autorize`
--
CREATE
DEFINER = 'root'@'localhost'
PROCEDURE user_autorize (IN log varchar(50), IN pass varchar(50))
BEGIN
  SELECT
    users.id_user,
    owner.firstname,
    owner.middlename,
    owner.lastname,
    infomation_owners.id_entrance
  FROM owner
    INNER JOIN users
      ON owner.id_user = users.id_user
    INNER JOIN infomation_owners
      ON owner.id_ownerinfo = infomation_owners.id_ownerinfo
  WHERE users.user_login = log
  AND users.user_pass = pass;
END
$$

DELIMITER ;

--
-- Create view `view_owners`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_owners
AS
SELECT
  `owner`.`firstname` AS `firstname`,
  `owner`.`middlename` AS `middlename`,
  `owner`.`lastname` AS `lastname`,
  `owner`.`phone` AS `phone`,
  `users`.`user_login` AS `user_login`,
  `infomation_owners`.`flat` AS `flat`,
  `owner`.`id_owner` AS `id_owner`
FROM ((`owner`
  LEFT JOIN `users`
    ON ((`owner`.`id_user` = `users`.`id_user`)))
  JOIN `infomation_owners`
    ON ((`owner`.`id_ownerinfo` = `infomation_owners`.`id_ownerinfo`)));

--
-- Create view `view_owner_concat`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_owner_concat
AS
SELECT
  `owner`.`id_owner` AS `id_owner`,
  CONCAT(`owner`.`firstname`, ' ', `owner`.`middlename`, ' ', `owner`.`lastname`) AS `NameOwner`
FROM `owner`;

--
-- Create table `color`
--
CREATE TABLE color (
  id_color int NOT NULL AUTO_INCREMENT,
  name_color varchar(20) DEFAULT NULL,
  PRIMARY KEY (id_color)
)
ENGINE = INNODB,
AUTO_INCREMENT = 13,
AVG_ROW_LENGTH = 1365,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create table `cars`
--
CREATE TABLE cars (
  id_car int NOT NULL AUTO_INCREMENT,
  id_model int DEFAULT NULL,
  number varchar(50) DEFAULT NULL,
  id_color int DEFAULT NULL,
  PRIMARY KEY (id_car)
)
ENGINE = INNODB,
AUTO_INCREMENT = 48,
AVG_ROW_LENGTH = 682,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create foreign key
--
ALTER TABLE cars
ADD CONSTRAINT FK_cars_car_models_id_model FOREIGN KEY (id_model)
REFERENCES car_models (id_model);

--
-- Create foreign key
--
ALTER TABLE cars
ADD CONSTRAINT FK_cars_color_id_color FOREIGN KEY (id_color)
REFERENCES color (id_color);

--
-- Create view `view_using_car`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_using_car
AS
SELECT
  `cars`.`id_car` AS `id_car`,
  `car_brands`.`name_brand` AS `name_brand`,
  `car_models`.`name_model` AS `name_model`,
  `color`.`name_color` AS `name_color`
FROM (((`car_models`
  JOIN `car_brands`
    ON ((`car_models`.`id_brand` = `car_brands`.`id_brand`)))
  JOIN `cars`
    ON ((`cars`.`id_model` = `car_models`.`id_model`)))
  JOIN `color`
    ON ((`cars`.`id_color` = `color`.`id_color`)))
ORDER BY `car_brands`.`name_brand`;

--
-- Create view `view_car_concat`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_car_concat
AS
SELECT
  `view_using_car`.`id_car` AS `id_car`,
  CONCAT(`view_using_car`.`name_brand`, ' ', `view_using_car`.`name_model`, '[', `view_using_car`.`name_color`, ']') AS `CarName`
FROM `view_using_car`;

--
-- Create view `view_cars2`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_cars2
AS
SELECT DISTINCT
  `car_brands`.`name_brand` AS `name_brand`,
  `car_models`.`name_model` AS `name_model`,
  `cars`.`number` AS `number`,
  `color`.`name_color` AS `name_color`,
  `cars`.`id_car` AS `id_car`
FROM (((`car_models`
  JOIN `car_brands`
    ON ((`car_models`.`id_brand` = `car_brands`.`id_brand`)))
  JOIN `cars`
    ON ((`cars`.`id_model` = `car_models`.`id_model`)))
  JOIN `color`
    ON ((`cars`.`id_color` = `color`.`id_color`)));

--
-- Create view `view_car_number_concat`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_car_number_concat
AS
SELECT
  `cars`.`id_car` AS `id_car`,
  CONCAT(`car_brands`.`name_brand`, ' ', `cars`.`id_model`, ' ', '[', `cars`.`number`, ']', ' - ', `color`.`name_color`) AS `CarFullName`
FROM (((`cars`
  JOIN `car_models`
    ON ((`cars`.`id_model` = `car_models`.`id_model`)))
  JOIN `car_brands`
    ON ((`car_models`.`id_brand` = `car_brands`.`id_brand`)))
  JOIN `color`
    ON ((`cars`.`id_color` = `color`.`id_color`)));

--
-- Create table `link_car`
--
CREATE TABLE link_car (
  id_car int NOT NULL,
  id_owner int NOT NULL,
  PRIMARY KEY (id_car, id_owner)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 2730,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create foreign key
--
ALTER TABLE link_car
ADD CONSTRAINT FK_link_car_cars_id_car FOREIGN KEY (id_car)
REFERENCES cars (id_car);

--
-- Create foreign key
--
ALTER TABLE link_car
ADD CONSTRAINT FK_link_car_owner_id_owner FOREIGN KEY (id_owner)
REFERENCES owner (id_owner);

--
-- Create view `view_ownercar_user`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_ownercar_user
AS
SELECT
  `link_car`.`id_car` AS `id_car`,
  `owner`.`id_user` AS `id_user`
FROM (`link_car`
  JOIN `owner`
    ON ((`link_car`.`id_owner` = `owner`.`id_owner`)));

--
-- Create view `view_numberofuser`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_numberofuser
AS
SELECT
  `users`.`id_user` AS `id_user`,
  `cars`.`number` AS `number`
FROM (((`users`
  LEFT JOIN `owner`
    ON ((`owner`.`id_user` = `users`.`id_user`)))
  LEFT JOIN `link_car`
    ON ((`link_car`.`id_owner` = `owner`.`id_owner`)))
  LEFT JOIN `cars`
    ON ((`link_car`.`id_car` = `cars`.`id_car`)));

--
-- Create view `view_cars`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_cars
AS
SELECT DISTINCT
  `car_brands`.`name_brand` AS `name_brand`,
  `car_models`.`name_model` AS `name_model`,
  `cars`.`number` AS `number`,
  `color`.`name_color` AS `name_color`,
  `cars`.`id_car` AS `id_car`,
  `link_car`.`id_owner` AS `id_owner`
FROM ((((`car_models`
  JOIN `car_brands`
    ON ((`car_models`.`id_brand` = `car_brands`.`id_brand`)))
  JOIN `cars`
    ON ((`cars`.`id_model` = `car_models`.`id_model`)))
  JOIN `color`
    ON ((`cars`.`id_color` = `color`.`id_color`)))
  LEFT JOIN `link_car`
    ON ((`link_car`.`id_car` = `cars`.`id_car`)));

--
-- Create table `gate`
--
CREATE TABLE gate (
  id_gate int NOT NULL AUTO_INCREMENT,
  gate_name varchar(50) DEFAULT NULL,
  gate_description varchar(70) DEFAULT NULL,
  PRIMARY KEY (id_gate)
)
ENGINE = INNODB,
AUTO_INCREMENT = 3,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create table `driveway_type`
--
CREATE TABLE driveway_type (
  id_drivewaytype int NOT NULL AUTO_INCREMENT,
  name_drivewaytype varchar(40) DEFAULT NULL,
  PRIMARY KEY (id_drivewaytype)
)
ENGINE = INNODB,
AUTO_INCREMENT = 3,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create table `driveway`
--
CREATE TABLE driveway (
  id_driveway int NOT NULL AUTO_INCREMENT,
  date_driveway date DEFAULT NULL,
  time_driveway time DEFAULT NULL,
  id_car int DEFAULT NULL,
  id_drivewaytype int DEFAULT NULL,
  id_gate int DEFAULT NULL,
  number varchar(15) DEFAULT NULL,
  PRIMARY KEY (id_driveway)
)
ENGINE = INNODB,
AUTO_INCREMENT = 111,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

--
-- Create foreign key
--
ALTER TABLE driveway
ADD CONSTRAINT FK_driveway_driveway_type_id_drivewaytype FOREIGN KEY (id_drivewaytype)
REFERENCES driveway_type (id_drivewaytype);

--
-- Create foreign key
--
ALTER TABLE driveway
ADD CONSTRAINT FK_driveway_id_car FOREIGN KEY (id_car)
REFERENCES cars (id_car);

--
-- Create foreign key
--
ALTER TABLE driveway
ADD CONSTRAINT FK_driveway_id_gate FOREIGN KEY (id_gate)
REFERENCES gate (id_gate);

DELIMITER $$

--
-- Create procedure `add_number`
--
CREATE
DEFINER = 'root'@'localhost'
PROCEDURE add_number (IN gate_id int, IN number_un varchar(15), IN driveway_type int)
BEGIN
  DECLARE car_id int;
  SELECT
    cars.id_car INTO car_id
  FROM cars
  WHERE cars.number = number_un;
  IF car_id IS NOT NULL THEN
    INSERT INTO driveway (date_driveway, time_driveway, id_car, id_drivewaytype, id_gate)
      VALUES (NOW(), NOW(), car_id, driveway_type, gate_id);
  ELSE
    INSERT INTO driveway (date_driveway, time_driveway, id_drivewaytype, id_gate, number)
      VALUES (NOW(), NOW(), driveway_type, gate_id, number_un);
  END IF;
END
$$

DELIMITER ;

--
-- Create view `view_in_out`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_in_out
AS
SELECT
  SUM((CASE WHEN (`driveway`.`id_drivewaytype` = '1') THEN 1 ELSE 0 END)) AS `V_IN`,
  SUM((CASE WHEN (`driveway`.`id_drivewaytype` = '2') THEN 1 ELSE 0 END)) AS `V_OUT`
FROM (`driveway`
  JOIN `gate`
    ON ((`driveway`.`id_gate` = `gate`.`id_gate`)));

--
-- Create view `view_driveway_car`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_driveway_car
AS
SELECT
  `driveway`.`id_driveway` AS `id_driveway`,
  `driveway`.`date_driveway` AS `date_driveway`,
  `driveway`.`time_driveway` AS `time_driveway`,
  `gate`.`gate_name` AS `gate_name`,
  `driveway_type`.`name_drivewaytype` AS `name_drivewaytype`,
  `view_cars2`.`name_color` AS `name_color`,
  `view_cars2`.`number` AS `number`,
  `view_cars2`.`name_model` AS `name_model`,
  `view_cars2`.`name_brand` AS `name_brand`,
  `driveway`.`number` AS `u_number`,
  `view_ownercar_user`.`id_user` AS `id_user`
FROM ((((`driveway`
  LEFT JOIN `driveway_type`
    ON ((`driveway`.`id_drivewaytype` = `driveway_type`.`id_drivewaytype`)))
  LEFT JOIN `gate`
    ON ((`driveway`.`id_gate` = `gate`.`id_gate`)))
  LEFT JOIN `view_cars2`
    ON ((`driveway`.`id_car` = `view_cars2`.`id_car`)))
  LEFT JOIN `view_ownercar_user`
    ON ((`driveway`.`id_car` = `view_ownercar_user`.`id_car`)))
ORDER BY `driveway`.`date_driveway` DESC, `driveway`.`time_driveway` DESC;

DELIMITER $$

--
-- Create procedure `parking_time_driveway_report`
--
CREATE
DEFINER = 'root'@'localhost'
PROCEDURE parking_time_driveway_report (IN ParamDate varchar(255), IN ParamTime varchar(255))
BEGIN
  IF ParamDate = '*'
    AND ParamTime = '*' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    ORDER BY view_driveway_car.name_brand;

  ELSEIF ParamDate = '*'
    AND ParamTime = '1' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.time_driveway > '08:00:00'
    AND view_driveway_car.time_driveway < '12:00:00'
    ORDER BY view_driveway_car.name_brand;

  ELSEIF ParamDate = '*'
    AND ParamTime = '2' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.time_driveway > '12:00:00'
    AND view_driveway_car.time_driveway < '17:00:00'
    ORDER BY view_driveway_car.name_brand;

  ELSEIF ParamDate = '*'
    AND ParamTime = '3' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.time_driveway > '17:00:00'
    AND view_driveway_car.time_driveway < '22:00:00'
    ORDER BY view_driveway_car.name_brand;

  ELSEIF ParamTime = '1' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.date_driveway = ParamDate
    AND view_driveway_car.time_driveway > '08:00:00'
    AND view_driveway_car.time_driveway < '12:00:00'
    ORDER BY view_driveway_car.name_brand;

  ELSEIF ParamTime = '2' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.date_driveway = ParamDate
    AND view_driveway_car.time_driveway > '12:00:00'
    AND view_driveway_car.time_driveway < '17:00:00'
    ORDER BY view_driveway_car.name_brand;

  ELSEIF ParamTime = '3' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.date_driveway = ParamDate
    AND view_driveway_car.time_driveway > '17:00:00'
    AND view_driveway_car.time_driveway < '22:00:00'
    ORDER BY view_driveway_car.name_brand;
  END IF;
END
$$

--
-- Create procedure `parking_drivewaytype_report`
--
CREATE
DEFINER = 'root'@'localhost'
PROCEDURE parking_drivewaytype_report (IN ParamDate varchar(255), IN ParamType varchar(255))
BEGIN
  IF ParamDate = '*'
    AND ParamType = '1' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_color) AS color_name,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE name_drivewaytype = 'Въезд'
    ORDER BY view_driveway_car.name_brand;

  ELSEIF ParamDate = '*'
    AND ParamType = '2' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_color) AS color_name,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE name_drivewaytype = 'Выезд'
    ORDER BY view_driveway_car.name_brand;

  ELSEIF ParamType = '1' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_color) AS color_name,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.date_driveway = ParamDate
    AND name_drivewaytype = 'Въезд'
    ORDER BY view_driveway_car.name_brand;

  ELSEIF ParamType = '2' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_color) AS color_name,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.date_driveway = ParamDate
    AND name_drivewaytype = 'Выезд'
    ORDER BY view_driveway_car.name_brand;
  END IF;
END
$$

--
-- Create procedure `parking_driveway_report`
--
CREATE
DEFINER = 'root'@'localhost'
PROCEDURE parking_driveway_report (IN ParamDate varchar(255), IN ParamGate varchar(255))
BEGIN
  IF ParamDate = '*'
    AND ParamGate = '1' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE gate_name = 'Северный проезд'
    ORDER BY view_driveway_car.name_brand;
  ELSEIF ParamDate = '*'
    AND ParamGate = '2' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE gate_name = 'Западный проезд'
    ORDER BY view_driveway_car.name_brand;
  ELSEIF ParamGate = '1' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.date_driveway = ParamDate
    AND gate_name = 'Северный проезд'
    ORDER BY view_driveway_car.name_brand;
  ELSEIF ParamGate = '2' THEN
    SELECT
      (view_driveway_car.name_brand) AS name_brand,
      (view_driveway_car.name_model) AS name_model,
      (view_driveway_car.name_drivewaytype) AS name_driveway_type,
      (view_driveway_car.time_driveway) AS time_driveway
    FROM view_driveway_car
    WHERE view_driveway_car.date_driveway = ParamDate
    AND gate_name = 'Западный проезд'
    ORDER BY view_driveway_car.name_brand;
  END IF;
END
$$

DELIMITER ;

--
-- Create table `request`
--
CREATE TABLE request (
  id int NOT NULL AUTO_INCREMENT,
  fio varchar(70) NOT NULL,
  login_user varchar(80) NOT NULL,
  pass varchar(30) NOT NULL,
  number_request varchar(50) NOT NULL,
  location_user varchar(70) NOT NULL,
  date_request datetime NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 11,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

-- 
-- Dumping data for table access_right
--
INSERT INTO access_right VALUES
(1, 'Admin', NULL),
(2, 'User', NULL);

-- 
-- Dumping data for table car_brands
--
INSERT INTO car_brands VALUES
(1, 'LADA'),
(2, 'Mazda'),
(3, 'Toyota'),
(4, 'Mercedes'),
(5, 'Honda'),
(6, 'Volkswagen'),
(7, 'Jaguar'),
(8, 'Jeep'),
(9, 'Volga'),
(10, 'Renault'),
(11, 'Peugeot');

-- 
-- Dumping data for table entrance
--
INSERT INTO entrance VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12);

-- 
-- Dumping data for table users
--
INSERT INTO users VALUES
(1, 'nazarik1999', 'root', 1, 0),
(2, 'oleg112', 'a0e69378d1b3a72bfc34bd81b8462edf', 2, 0),
(3, 'nik1195', 'b60848757419428bb3f2fc7c4a143fad', 2, 0),
(17, 'viktor2022', 'dde2785bd00c33f1b8f46fbdc9c93b97', 2, 0),
(28, 'sasha_kov', 'a621c29a846559f43d6c66b439c0d424', 2, 0);

-- 
-- Dumping data for table infomation_owners
--
INSERT INTO infomation_owners VALUES
(1, 'Кв.65', 1),
(2, 'Кв.66', 1),
(3, 'Кв.70', 1),
(4, 'Кв.72', 1),
(5, 'Кв.75', 1),
(6, 'Кв.78', 1),
(7, 'Кв.80', 1),
(8, 'Кв.87', 1),
(9, 'Кв.90', 1),
(10, 'Кв.94', 1),
(11, 'Кв.97', 2),
(12, 'Кв.104', 2),
(13, 'Кв.113', 2),
(14, 'Кв.120', 2),
(15, 'Кв.1', 1),
(16, 'Кв.2', 3),
(17, 'Кв.4', 3),
(18, 'Кв.5', 3),
(19, 'Кв.7', 3),
(20, 'Кв.10', 1),
(21, 'Кв.13', 3),
(22, 'Кв.16', 4),
(23, 'Кв.24', 1),
(24, 'Кв.30', 1),
(25, 'Кв.35', 1),
(26, 'Кв.37', 1),
(27, 'Кв.39', 1),
(28, 'Кв.42', 1),
(29, 'Кв.45', 1),
(30, 'Кв.48', 1),
(31, 'Кв.52', 1),
(32, 'Кв.58', 1),
(33, 'Кв.59', 1),
(34, 'Кв.62', 1),
(35, 'Кв.64\r\n', 1),
(36, 'Кв.90', 7),
(37, 'Кв.91', 6),
(38, 'Кв.44', 4),
(39, 'Кв12', 7),
(40, 'Кв. 71', 1),
(41, 'Кв. 71', 1),
(42, 'Кв.8', 1);

-- 
-- Dumping data for table color
--
INSERT INTO color VALUES
(1, 'Красный'),
(2, 'Жёлтый'),
(3, 'Зелёный'),
(4, 'Синий'),
(5, 'Пурпурный'),
(6, 'Розовый'),
(7, 'Серый'),
(8, 'Чёрный'),
(9, 'Бежевый'),
(10, 'Оранжевый'),
(11, 'Коричневый'),
(12, 'Белый');

-- 
-- Dumping data for table car_models
--
INSERT INTO car_models VALUES
(1, 'Шестёрка', 1),
(2, 'BT-50', 2),
(3, 'CX-3', 2),
(4, 'CX-30', 2),
(5, 'CX-4', 2),
(6, 'CX-5', 2),
(7, 'MPV', 2),
(8, 'Crown', 3),
(9, 'Chaser', 3),
(10, 'Camry', 3),
(11, 'Supra', 3),
(12, 'Corolla', 3),
(13, 'Prius', 3),
(14, 'Benz', 4),
(15, 'E200', 4),
(16, 'AMG C63', 4),
(17, 'E63', 4),
(18, 'Accord', 5),
(19, 'Civic', 5),
(20, 'Freed', 5),
(21, 'NSX', 5),
(22, 'S2000', 5),
(23, 'Touareg', 6),
(24, 'Polo', 6),
(25, 'GTI', 6),
(26, 'Golf', 6),
(27, 'Tiguan', 6),
(28, 'XJ220', 7),
(29, 'XF', 7),
(30, 'XJ', 7),
(31, 'XK120', 7),
(32, 'XKR', 7),
(33, 'Wrangler', 8),
(34, 'Gladiator', 8),
(35, 'Rubicon', 8),
(36, 'Wagoneer', 8),
(37, '24', 9),
(38, 'Siber', 9),
(39, 'Megane 2', 10),
(40, 'Logan', 10),
(41, 'Scenic', 10),
(42, 'Symbol', 10),
(43, 'Fluence', 10),
(44, 'Boxer', 11),
(45, '308', 11),
(46, '406', 11),
(47, '3008', 11),
(48, '508', 11),
(49, 'RCZ', 11);

-- 
-- Dumping data for table parking_plan
--
INSERT INTO parking_plan VALUES
(1, 1, 10, 12),
(2, 2, 7, 10),
(3, 3, 8, 13),
(4, 4, 6, 12),
(5, 5, 5, 10),
(6, 6, 4, 12),
(7, 7, 7, 9),
(8, 8, 5, 13),
(9, 9, 6, 10),
(10, 10, 5, 9),
(11, 11, 2, 9),
(12, 12, 4, 9);

-- 
-- Dumping data for table owner
--
INSERT INTO owner VALUES
(1, 'Григорьев', 'Олег', 'Алексеевич', '89231531235', 2, 2),
(3, 'Карпачёв', 'Никита', 'Валерьевич', '89132632412', 3, 1),
(20, 'Михайлов', 'Виктор', 'Степанович', '89135723412', 17, 19),
(21, 'Григорьева', 'Антонина', 'Ивановна', '89132852312', NULL, 25),
(23, 'Иванцов', 'Иван', 'Юрьевич', '89132572312', NULL, 7),
(33, 'Коваленко', 'Александр', 'Сергеевич', '89132042312', 28, 42);

-- 
-- Dumping data for table gate
--
INSERT INTO gate VALUES
(1, 'Северный проезд', 'Проезд на севере двора'),
(2, 'Западный проезд', 'Проезд на западной');

-- 
-- Dumping data for table driveway_type
--
INSERT INTO driveway_type VALUES
(1, 'Въезд'),
(2, 'Выезд');

-- 
-- Dumping data for table cars
--
INSERT INTO cars VALUES
(1, 1, 'Р118КC', 4),
(2, 2, 'Х105РТ', 1),
(3, 3, 'С24KP', 3),
(4, 4, 'С115MM', 8),
(5, 5, 'А054MB', 2),
(6, 6, 'В112ОT', 5),
(7, 7, 'H342АH', 11),
(8, 8, 'О123PO', 10),
(9, 9, 'B230АD', 7),
(10, 10, 'В164PK', 9),
(11, 11, 'P201PВ', 6),
(12, 12, 'P216РА', 5),
(13, 13, 'М231АA', 5),
(14, 14, 'А123АT', 8),
(15, 15, 'Р231АВ', 2),
(16, 16, 'C213CH', 11),
(17, 17, 'T125TC', 7),
(18, 18, 'К153РО', 8),
(19, 19, 'Р198PТ', 6),
(20, 20, 'C105TK', 6),
(21, 21, 'M123HM', 9),
(22, 22, 'X125XH', 6),
(23, 23, 'T123KT', 8),
(24, 24, 'K132NM', 8),
(25, 25, 'А104КВ', 12),
(26, 26, 'О123HP', 12),
(30, 2, 'P113HB', 4),
(31, 22, 'C923OB', 4),
(32, 29, 'M150KK', 10),
(33, 37, 'А112АР', 3),
(34, 39, 'P421HH', 7),
(35, 46, 'Х235АР', 5),
(36, 35, 'К421РА', 2),
(37, 11, 'B112BB', 2),
(47, 1, 'T558AE', 12);

-- 
-- Dumping data for table request
--
INSERT INTO request VALUES
(10, 'Коваленко Александр Сергеевич', 'sasha_kov', 'sasha123', '89132042312', 'Лен.Комсомола 37 кв.8', '2024-05-14 12:35:55');

-- 
-- Dumping data for table parking_areas
--
INSERT INTO parking_areas VALUES
(1, 643, 324, 1869, 564, 1897, 682, 574, 435, 1),
(2, 550, 560, 1898, 892, 1820, 1044, 402, 685, 1);

-- 
-- Dumping data for table link_car
--
INSERT INTO link_car VALUES
(2, 3),
(17, 20),
(22, 20),
(23, 21),
(31, 23),
(47, 33);

-- 
-- Dumping data for table driveway
--
INSERT INTO driveway VALUES
(5, '2024-04-05', '09:00:00', 3, 1, 1, NULL),
(6, '2024-04-05', '16:45:00', 2, 1, 1, NULL),
(7, '2024-04-05', '17:44:00', 12, 2, 2, NULL),
(8, '2024-04-05', '20:00:00', 6, 2, 1, NULL),
(9, '2024-04-06', '15:53:00', 1, 1, 2, NULL),
(10, '2024-04-06', '09:10:00', 12, 1, 1, NULL),
(11, '2024-04-06', '09:13:00', 19, 2, 1, NULL),
(12, '2024-04-06', '09:14:00', 9, 2, 1, NULL),
(13, '2024-04-07', '10:15:00', 6, 1, 2, NULL),
(14, '2024-04-07', '10:17:00', 6, 2, 1, NULL),
(15, '2024-04-07', '08:45:00', 17, 2, 2, NULL),
(16, '2024-04-07', '08:44:00', 26, 2, 2, NULL),
(18, '2024-04-08', '09:35:00', 20, 2, 1, NULL),
(19, '2024-04-08', '09:13:00', 22, 2, 1, NULL),
(20, '2024-04-08', '19:36:00', 1, 1, 2, NULL),
(21, '2024-04-08', '12:12:00', 12, 2, 1, NULL),
(22, '2024-04-09', '15:36:00', 8, 2, 2, NULL),
(23, '2024-04-09', '09:00:00', 3, 2, 1, NULL),
(24, '2024-04-09', '09:18:00', 1, 2, 2, NULL),
(25, '2024-04-09', '09:24:00', 20, 2, 2, NULL),
(26, '2024-04-09', '08:16:00', 15, 2, 2, NULL),
(27, '2024-04-09', '08:44:00', 19, 2, 1, NULL),
(28, '2024-04-09', '15:00:00', 23, 1, 1, NULL),
(29, '2024-04-09', '09:00:00', 25, 2, 1, NULL),
(30, '2024-04-10', '08:00:00', 12, 2, 1, NULL),
(31, '2024-04-10', '08:01:00', 2, 2, 2, NULL),
(32, '2024-04-10', '08:06:00', 14, 2, 1, NULL),
(33, '2024-04-10', '09:10:00', 1, 2, 1, NULL),
(34, '2024-04-10', '09:22:00', 21, 2, 1, NULL),
(35, '2024-04-11', '15:00:00', 2, 1, 2, NULL),
(36, '2024-04-11', '17:44:00', 15, 1, 2, NULL),
(37, '2024-04-11', '18:42:00', 4, 1, 1, NULL),
(38, '2024-04-11', '07:00:00', 26, 2, 1, NULL),
(39, '2024-04-12', '08:00:00', 11, 2, 2, NULL),
(40, '2024-04-12', '07:12:00', 3, 2, 1, NULL),
(41, '2024-04-12', '08:32:00', 17, 2, 1, NULL),
(42, '2024-04-12', '17:40:00', 22, 1, 2, NULL),
(43, '2024-04-12', '18:19:00', 14, 1, 2, NULL),
(44, '2024-04-12', '07:10:00', 15, 2, 1, NULL),
(45, '2024-04-13', '07:32:00', 31, 2, 1, NULL),
(46, '2024-05-07', '17:42:00', 4, 1, 1, NULL),
(47, '2024-05-08', '12:00:00', 21, 1, 1, NULL),
(48, '2024-05-09', '15:03:00', 36, 1, 1, NULL),
(49, '2024-05-09', '15:10:00', 33, 1, 2, NULL),
(50, '2024-05-09', '17:05:00', 22, 1, 1, NULL),
(51, '2024-05-10', '17:34:00', 20, 1, 1, NULL),
(52, '2024-05-10', '18:36:00', 26, 1, 2, NULL),
(53, '2024-05-10', '19:44:00', 6, 1, 1, NULL),
(55, '2024-05-10', '19:44:00', 25, 1, 1, NULL),
(56, '2024-05-11', '19:32:00', 14, 1, 1, NULL),
(57, '2024-05-11', '20:23:00', 26, 1, 2, NULL),
(58, '2024-05-11', '16:32:00', 33, 1, 1, NULL),
(59, '2024-05-12', '16:32:00', 33, 1, 1, NULL),
(60, '2024-05-12', '09:24:00', 26, 2, 1, NULL),
(61, '2024-05-13', '16:40:15', 31, 1, 1, NULL),
(89, '2024-05-13', '18:02:35', 21, 2, 1, NULL),
(90, '2024-05-13', '16:35:32', 30, 1, 1, NULL),
(91, '2024-05-13', '08:06:22', 31, 2, 2, NULL),
(92, '2024-05-13', '16:21:46', 25, 1, 1, NULL),
(93, '2024-05-13', '08:21:46', 26, 2, 1, NULL),
(94, '2024-05-13', '09:05:00', NULL, 2, 1, 'T558AE'),
(95, '2024-05-13', '16:20:00', NULL, 1, 1, 'T558AE'),
(96, '2024-05-14', '08:44:20', 47, 2, 2, NULL),
(97, '2024-05-14', '12:37:00', 47, 1, 1, NULL),
(98, '2024-05-14', '17:44:00', 47, 2, 2, NULL),
(99, '2024-05-15', '07:33:00', 47, 1, 1, NULL),
(100, '2024-05-15', '13:20:00', 47, 2, 2, NULL),
(101, '2024-05-15', '19:43:24', 47, 1, 1, NULL),
(102, '2024-05-14', '08:33:20', 7, 1, 2, NULL),
(103, '2024-05-16', '08:40:24', 2, 2, 1, NULL),
(104, '2024-05-16', '08:43:20', 9, 2, 1, NULL),
(105, '2024-05-16', '08:48:00', 14, 2, 1, NULL),
(106, '2024-05-16', '08:54:13', 47, 2, 1, NULL);

--
-- Set default database
--
USE parking;

--
-- Drop trigger `encode_pass`
--
DROP TRIGGER IF EXISTS encode_pass;

--
-- Set default database
--
USE parking;

DELIMITER $$

--
-- Create trigger `encode_pass`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER encode_pass
BEFORE INSERT
ON users
FOR EACH ROW
BEGIN
  SET NEW.user_pass = MD5(TO_BASE64(NEW.user_pass));
END
$$

DELIMITER ;
