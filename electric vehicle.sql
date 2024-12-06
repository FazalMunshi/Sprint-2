Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE ELECTRIC_VEHICLE_POPULATION;
Query OK, 1 row affected (0.02 sec)

mysql> USE ELECTRIC_VEHICLE_POPULATION;
Database changed
mysql> CREATE TABLE ElectricVehicles (
    ->     `Vehicle ID` INT PRIMARY KEY,
    ->     `VIN (1-10)` VARCHAR(10),
    ->     `County` VARCHAR(255),
    ->     `City` VARCHAR(255),
    ->     `State` VARCHAR(50),
    ->     `Postal Code` VARCHAR(20),
    ->     `Model Year` INT,
    ->     `Make` VARCHAR(255),
    ->     `Model` VARCHAR(255),
    ->     `Electric Vehicle Type` VARCHAR(255),
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility` VARCHAR(255),
    ->     `Electric Range` INT,
    ->     `Base MSRP` DECIMAL(10, 2),
    ->     `Legislative District` INT,
    ->     `DOL Vehicle ID` VARCHAR(50),
    ->     `Vehicle Location` VARCHAR(255),
    ->     `Electric Utility` VARCHAR(255),
    ->     `2020 Census Tract` VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> DESCRIBE ElectricVehicles;
+---------------------------------------------------+---------------+------+-----+---------+-------+
| Field                                             | Type          | Null | Key | Default | Extra |
+---------------------------------------------------+---------------+------+-----+---------+-------+
| Vehicle ID                                        | int           | NO   | PRI | NULL    |       |
| VIN (1-10)                                        | varchar(10)   | YES  |     | NULL    |       |
| County                                            | varchar(255)  | YES  |     | NULL    |       |
| City                                              | varchar(255)  | YES  |     | NULL    |       |
| State                                             | varchar(50)   | YES  |     | NULL    |       |
| Postal Code                                       | varchar(20)   | YES  |     | NULL    |       |
| Model Year                                        | int           | YES  |     | NULL    |       |
| Make                                              | varchar(255)  | YES  |     | NULL    |       |
| Model                                             | varchar(255)  | YES  |     | NULL    |       |
| Electric Vehicle Type                             | varchar(255)  | YES  |     | NULL    |       |
| Clean Alternative Fuel Vehicle (CAFV) Eligibility | varchar(255)  | YES  |     | NULL    |       |
| Electric Range                                    | int           | YES  |     | NULL    |       |
| Base MSRP                                         | decimal(10,2) | YES  |     | NULL    |       |
| Legislative District                              | int           | YES  |     | NULL    |       |
| DOL Vehicle ID                                    | varchar(50)   | YES  |     | NULL    |       |
| Vehicle Location                                  | varchar(255)  | YES  |     | NULL    |       |
| Electric Utility                                  | varchar(255)  | YES  |     | NULL    |       |
| 2020 Census Tract                                 | varchar(255)  | YES  |     | NULL    |       |
+---------------------------------------------------+---------------+------+-----+---------+-------+
18 rows in set (0.02 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     01,
    ->     '5YJSA1E22K',
    ->     'King',
    ->     'Seattle',
    ->     'WA',
    ->     '98112',
    ->     2019,
    ->     'TESLA',
    ->     'MODEL S',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     270,
    ->     0,
    ->     43,
    ->     202233958,
    ->     'POINT (-122.300312 47.629782)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)',
    ->     '53033006500'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     02,
    ->     '5YJSA1E22K',
    ->     'King',
    ->     'Seattle',
    ->     'WA',
    ->     '98112',
    ->     2019,
    ->     'TESLA',
    ->     'MODEL S',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     270,
    ->     0,
    ->     43,
    ->     202233958,
    ->     'POINT (-122.300312 47.629782)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)',
    ->     '53033006500'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM ElectricVehicles;
+------------+------------+--------+---------+-------+-------------+------------+-------+---------+--------------------------------+---------------------------------------------------+----------------+-----------+----------------------+----------------+-------------------------------+----------------------------------------------+-------------------+
| Vehicle ID | VIN (1-10) | County | City    | State | Postal Code | Model Year | Make  | Model   | Electric Vehicle Type          | Clean Alternative Fuel Vehicle (CAFV) Eligibility | Electric Range | Base MSRP | Legislative District | DOL Vehicle ID | Vehicle Location              | Electric Utility                             | 2020 Census Tract |
+------------+------------+--------+---------+-------+-------------+------------+-------+---------+--------------------------------+---------------------------------------------------+----------------+-----------+----------------------+----------------+-------------------------------+----------------------------------------------+-------------------+
|          1 | 5YJSA1E22K | King   | Seattle | WA    | 98112       |       2019 | TESLA | MODEL S | Battery Electric Vehicle (BEV) | Clean Alternative Fuel Vehicle Eligible           |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA) | 53033006500       |
|          2 | 5YJSA1E22K | King   | Seattle | WA    | 98112       |       2019 | TESLA | MODEL S | Battery Electric Vehicle (BEV) | Clean Alternative Fuel Vehicle Eligible           |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA) | 53033006500       |
+------------+------------+--------+---------+-------+-------------+------------+-------+---------+--------------------------------+---------------------------------------------------+----------------+-----------+----------------------+----------------+-------------------------------+----------------------------------------------+-------------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     03,
    ->     '3MW39FS05R',
    ->     'Yakima',
    ->     'Zillah',
    ->     'WA',
    ->     '98953',
    ->     2024,
    ->     'BMW',
    ->     '330E',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Not eligible due to low battery range',
    ->     20,
    ->     0,
    ->     15,
    ->     264425178,
    ->     'POINT (-120.2658133 46.4063477)',
    ->     'PACIFICORP',
    ->     '53077002201'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     04,
    ->     '1N4AZ0CP0F',
    ->     'King',
    ->     'Kent',
    ->     'WA',
    ->     '98031',
    ->     2015,
    ->     'NISSAN',
    ->     'LEAF',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     84,
    ->     0,
    ->     11,
    ->     114962025,
    ->     'POINT (-122.201564 47.402358)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)',
    ->     '53033029306'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     05,
    ->     '5YJSA1H20F',
    ->     'Snohomish',
    ->     'Bothell',
    ->     'WA',
    ->     '98012',
    ->     2015,
    ->     'TESLA',
    ->     'MODEL S',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     208,
    ->     0,
    ->     1,
    ->     232724670,
    ->     'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061052107'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     06,
    ->     'JTMAB3FV1N',
    ->     'Yakima',
    ->     'Yakima',
    ->     'WA',
    ->     '98908',
    ->     2022,
    ->     'TOYOTA',
    ->     'RAV4 PRIME',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     42,
    ->     0,
    ->     14,
    ->     221023589,
    ->     'POINT (-120.611068 46.596645)',
    ->     'PACIFICORP',
    ->     '53077000902'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     07,
    ->     '5YJ3E1EB6K',
    ->     'King',
    ->     'Redmond',
    ->     'WA',
    ->     '98052',
    ->     2019,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     220,
    ->     0,
    ->     48,
    ->     296777442,
    ->     'POINT (-122.1207376 47.6705374)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)',
    ->     '53033022606'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     08,
    ->     '5YJ3E1EB0J',
    ->     'Thurston',
    ->     'Yelm',
    ->     'WA',
    ->     '98597',
    ->     2018,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     215,
    ->     0,
    ->     2,
    ->     311913577,
    ->     'POINT (-122.5715761 46.9095798)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067012422'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     09,
    ->     '3FA6P0SU8D',
    ->     'Kitsap',
    ->     'Poulsbo',
    ->     'WA',
    ->     '98370',
    ->     2013,
    ->     'FORD',
    ->     'FUSION',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Not eligible due to low battery range',
    ->     19,
    ->     0,
    ->     23,
    ->     136752115,
    ->     'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53035090400'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     10,
    ->     '5YJSA1E21H',
    ->     'King',
    ->     'Redmond',
    ->     'WA',
    ->     '98052',
    ->     2017,
    ->     'TESLA',
    ->     'MODEL S',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     210,
    ->     0,
    ->     45,
    ->     241259105,
    ->     'POINT (-122.1207376 47.6705374)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)',
    ->     '53033032321'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     11,
    ->     '5YJ3E1EA4J',
    ->     'Snohomish',
    ->     'Bothell',
    ->     'WA',
    ->     '98012',
    ->     2018,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     215,
    ->     0,
    ->     1,
    ->     118035830,
    ->     'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061052009'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     12,
    ->     '5YJSA1E22H',
    ->     'Thurston',
    ->     'Olympia',
    ->     'WA',
    ->     '98501',
    ->     2017,
    ->     'TESLA',
    ->     'MODEL S',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     210,
    ->     0,
    ->     22,
    ->     105283265,
    ->     'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067010100'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     13,
    ->     'JTDKARFP9K',
    ->     'Kitsap',
    ->     'Poulsbo',
    ->     'WA',
    ->     '98370',
    ->     2019,
    ->     'TOYOTA',
    ->     'PRIUS PRIME',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Not eligible due to low battery range',
    ->     25,
    ->     0,
    ->     23,
    ->     340612723,
    ->     'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53035090502'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     14,
    ->     '1N4AZ0CP1F',
    ->     'Kitsap',
    ->     'Port Orchard',
    ->     'WA',
    ->     '98367',
    ->     2015,
    ->     'NISSAN',
    ->     'LEAF',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     84,
    ->     0,
    ->     35,
    ->     162186916,
    ->     'POINT (-122.6530052 47.4739066)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53035092901'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     15,
    ->     '5YJ3E1EA4L',
    ->     'King',
    ->     'Kent',
    ->     'WA',
    ->     '98030',
    ->     2020,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     266,
    ->     0,
    ->     47,
    ->     3417746,
    ->     'POINT (-122.1994204 47.3741045)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)',
    ->     '53033029507'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     16,
    ->     '3C3CFFGE2F',
    ->     'King',
    ->     'Shoreline',
    ->     'WA',
    ->     '98155',
    ->     2015,
    ->     'FIAT',
    ->     '500',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     87,
    ->     0,
    ->     32,
    ->     148799822,
    ->     'POINT (-122.301507 47.761784)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)',
    ->     '53033020500'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     17,
    ->     '2C4RC1N76L',
    ->     'Thurston',
    ->     'Tumwater',
    ->     'WA',
    ->     '98512',
    ->     2020,
    ->     'CHRYSLER',
    ->     'PACIFICA',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     32,
    ->     0,
    ->     22,
    ->     123132670,
    ->     'POINT (-122.957046 46.991391)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067010910'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     18,
    ->     '5YJ3E1EA7L',
    ->     'Snohomish',
    ->     'Bothell',
    ->     'WA',
    ->     '98012',
    ->     2020,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     266,
    ->     0,
    ->     21,
    ->     127118694,
    ->     'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061051922'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     19,
    ->     'WBY73AW09P',
    ->     'Snohomish',
    ->     'Snohomish',
    ->     'WA',
    ->     '98296',
    ->     2023,
    ->     'BMW',
    ->     'I4',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Eligibility unknown as battery range has not been researched',
    ->     0,
    ->     0,
    ->     1,
    ->     221273244,
    ->     'POINT (-122.121841 47.841036)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061052114'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     20,
    ->     '1N4BZ0CP8H',
    ->     'King',
    ->     'Bellevue',
    ->     'WA',
    ->     '98007',
    ->     2017,
    ->     'NISSAN',
    ->     'LEAF',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     107,
    ->     0,
    ->     48,
    ->     211610367,
    ->     'POINT (-122.1436732 47.6157551)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)',
    ->     '53033023201'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     21,
    ->     '5YJYGDEE9L',
    ->     'King',
    ->     'Bothell',
    ->     'WA',
    ->     '98011',
    ->     2020,
    ->     'TESLA',
    ->     'MODEL Y',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     291,
    ->     0,
    ->     1,
    ->     116957438,
    ->     'POINT (-122.201408 47.754528)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)',
    ->     '53033021905'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     22,
    ->     '5YJ3E1EB5K',
    ->     'Kitsap',
    ->     'Poulsbo',
    ->     'WA',
    ->     '98370',
    ->     2019,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     220,
    ->     0,
    ->     23,
    ->     144826083,
    ->     'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53035091100'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     23,
    ->     'JTDKN3DP2C',
    ->     'Kitsap',
    ->     'Poulsbo',
    ->     'WA',
    ->     '98370',
    ->     2012,
    ->     'TOYOTA',
    ->     'PRIUS PLUG-IN',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Not eligible due to low battery range',
    ->     6,
    ->     0,
    ->     23,
    ->     171200151,
    ->     'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53035090502'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     24,
    ->     'WAUTPBFF3G',
    ->     'Thurston',
    ->     'Olympia',
    ->     'WA',
    ->     '98513',
    ->     2016,
    ->     'AUDI',
    ->     'A3',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Not eligible due to low battery range',
    ->     16,
    ->     0,
    ->     2,
    ->     169279939,
    ->     'POINT (-122.7654699 46.9970624)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067012320'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     25,
    ->     '5YJ3E1EB0K',
    ->     'Yakima',
    ->     'Yakima',
    ->     'WA',
    ->     '98902',
    ->     2019,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     220,
    ->     0,
    ->     15,
    ->     476706555,
    ->     'POINT (-120.530331 46.59534)',
    ->     'PACIFICORP',
    ->     '53077001100'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     26,
    ->     'WBY8P2C51K',
    ->     'King',
    ->     'Seattle',
    ->     'WA',
    ->     '98112',
    ->     2019,
    ->     'BMW',
    ->     'I3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     153,
    ->     0,
    ->     43,
    ->     324226689,
    ->     'POINT (-122.300312 47.629782)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)',
    ->     '53033006300'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     27,
    ->     '5UXTA6C02N',
    ->     'Kitsap',
    ->     'Bainbridge Island',
    ->     'WA',
    ->     '98110',
    ->     2022,
    ->     'BMW',
    ->     'X5',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     30,
    ->     0,
    ->     23,
    ->     209660433,
    ->     'POINT (-122.5305071 47.6400595)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53035091002'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     28,
    ->     '1N4AZ0CP9F',
    ->     'King',
    ->     'Seattle',
    ->     'WA',
    ->     '98115',
    ->     2015,
    ->     'NISSAN',
    ->     'LEAF',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     84,
    ->     0,
    ->     46,
    ->     139798599,
    ->     'POINT (-122.3008235 47.6862671)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)',
    ->     '53033002000'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     29,
    ->     'YV4H60CF8R',
    ->     'Snohomish',
    ->     'Stanwood',
    ->     'WA',
    ->     '98292',
    ->     2024,
    ->     'VOLVO',
    ->     'XC90',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     32,
    ->     0,
    ->     10,
    ->     258940244,
    ->     'POINT (-122.326873 48.2144825)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061053202'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     30,
    ->     '5YJ3E1EA0L',
    ->     'Snohomish',
    ->     'Bothell',
    ->     'WA',
    ->     '98012',
    ->     2020,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     266,
    ->     0,
    ->     1,
    ->     2183366,
    ->     'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061052107'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM ElectricVehicles;
+------------+------------+-----------+-------------------+-------+-------------+------------+----------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
| Vehicle ID | VIN (1-10) | County    | City              | State | Postal Code | Model Year | Make     | Model         | Electric Vehicle Type                  | Clean Alternative Fuel Vehicle (CAFV) Eligibility            | Electric Range | Base MSRP | Legislative District | DOL Vehicle ID | Vehicle Location                | Electric Utility                              | 2020 Census Tract |
+------------+------------+-----------+-------------------+-------+-------------+------------+----------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
|          1 | 5YJSA1E22K | King      | Seattle           | WA    | 98112       |       2019 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006500       |
|          2 | 5YJSA1E22K | King      | Seattle           | WA    | 98112       |       2019 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006500       |
|          3 | 3MW39FS05R | Yakima    | Zillah            | WA    | 98953       |       2024 | BMW      | 330E          | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             20 |      0.00 |                   15 | 264425178      | POINT (-120.2658133 46.4063477) | PACIFICORP                                    | 53077002201       |
|          4 | 1N4AZ0CP0F | King      | Kent              | WA    | 98031       |       2015 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   11 | 114962025      | POINT (-122.201564 47.402358)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029306       |
|          5 | 5YJSA1H20F | Snohomish | Bothell           | WA    | 98012       |       2015 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            208 |      0.00 |                    1 | 232724670      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
|          6 | JTMAB3FV1N | Yakima    | Yakima            | WA    | 98908       |       2022 | TOYOTA   | RAV4 PRIME    | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             42 |      0.00 |                   14 | 221023589      | POINT (-120.611068 46.596645)   | PACIFICORP                                    | 53077000902       |
|          7 | 5YJ3E1EB6K | King      | Redmond           | WA    | 98052       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   48 | 296777442      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033022606       |
|          8 | 5YJ3E1EB0J | Thurston  | Yelm              | WA    | 98597       |       2018 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 |                    2 | 311913577      | POINT (-122.5715761 46.9095798) | PUGET SOUND ENERGY INC                        | 53067012422       |
|          9 | 3FA6P0SU8D | Kitsap    | Poulsbo           | WA    | 98370       |       2013 | FORD     | FUSION        | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             19 |      0.00 |                   23 | 136752115      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090400       |
|         10 | 5YJSA1E21H | King      | Redmond           | WA    | 98052       |       2017 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 |                   45 | 241259105      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033032321       |
|         11 | 5YJ3E1EA4J | Snohomish | Bothell           | WA    | 98012       |       2018 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 |                    1 | 118035830      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052009       |
|         12 | 5YJSA1E22H | Thurston  | Olympia           | WA    | 98501       |       2017 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 |                   22 | 105283265      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010100       |
|         13 | JTDKARFP9K | Kitsap    | Poulsbo           | WA    | 98370       |       2019 | TOYOTA   | PRIUS PRIME   | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             25 |      0.00 |                   23 | 340612723      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
|         14 | 1N4AZ0CP1F | Kitsap    | Port Orchard      | WA    | 98367       |       2015 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   35 | 162186916      | POINT (-122.6530052 47.4739066) | PUGET SOUND ENERGY INC                        | 53035092901       |
|         15 | 5YJ3E1EA4L | King      | Kent              | WA    | 98030       |       2020 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                   47 | 3417746        | POINT (-122.1994204 47.3741045) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029507       |
|         16 | 3C3CFFGE2F | King      | Shoreline         | WA    | 98155       |       2015 | FIAT     | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 |                   32 | 148799822      | POINT (-122.301507 47.761784)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033020500       |
|         17 | 2C4RC1N76L | Thurston  | Tumwater          | WA    | 98512       |       2020 | CHRYSLER | PACIFICA      | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 |                   22 | 123132670      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067010910       |
|         18 | 5YJ3E1EA7L | Snohomish | Bothell           | WA    | 98012       |       2020 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                   21 | 127118694      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061051922       |
|         19 | WBY73AW09P | Snohomish | Snohomish         | WA    | 98296       |       2023 | BMW      | I4            | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                    1 | 221273244      | POINT (-122.121841 47.841036)   | PUGET SOUND ENERGY INC                        | 53061052114       |
|         20 | 1N4BZ0CP8H | King      | Bellevue          | WA    | 98007       |       2017 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            107 |      0.00 |                   48 | 211610367      | POINT (-122.1436732 47.6157551) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033023201       |
|         21 | 5YJYGDEE9L | King      | Bothell           | WA    | 98011       |       2020 | TESLA    | MODEL Y       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            291 |      0.00 |                    1 | 116957438      | POINT (-122.201408 47.754528)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033021905       |
|         22 | 5YJ3E1EB5K | Kitsap    | Poulsbo           | WA    | 98370       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   23 | 144826083      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035091100       |
|         23 | JTDKN3DP2C | Kitsap    | Poulsbo           | WA    | 98370       |       2012 | TOYOTA   | PRIUS PLUG-IN | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |              6 |      0.00 |                   23 | 171200151      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
|         24 | WAUTPBFF3G | Thurston  | Olympia           | WA    | 98513       |       2016 | AUDI     | A3            | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             16 |      0.00 |                    2 | 169279939      | POINT (-122.7654699 46.9970624) | PUGET SOUND ENERGY INC                        | 53067012320       |
|         25 | 5YJ3E1EB0K | Yakima    | Yakima            | WA    | 98902       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   15 | 476706555      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077001100       |
|         26 | WBY8P2C51K | King      | Seattle           | WA    | 98112       |       2019 | BMW      | I3            | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            153 |      0.00 |                   43 | 324226689      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006300       |
|         27 | 5UXTA6C02N | Kitsap    | Bainbridge Island | WA    | 98110       |       2022 | BMW      | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 |                   23 | 209660433      | POINT (-122.5305071 47.6400595) | PUGET SOUND ENERGY INC                        | 53035091002       |
|         28 | 1N4AZ0CP9F | King      | Seattle           | WA    | 98115       |       2015 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   46 | 139798599      | POINT (-122.3008235 47.6862671) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033002000       |
|         29 | YV4H60CF8R | Snohomish | Stanwood          | WA    | 98292       |       2024 | VOLVO    | XC90          | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 |                   10 | 258940244      | POINT (-122.326873 48.2144825)  | PUGET SOUND ENERGY INC                        | 53061053202       |
|         30 | 5YJ3E1EA0L | Snohomish | Bothell           | WA    | 98012       |       2020 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                    1 | 2183366        | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
+------------+------------+-----------+-------------------+-------+-------------+------------+----------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
30 rows in set (0.00 sec)

mysql> show databases;
+-----------------------------+
| Database                    |
+-----------------------------+
| anp8905                     |
| electric_vehicle_population |
| information_schema          |
| mehsar                      |
| mysql                       |
| new                         |
| performance_schema          |
| sakila                      |
| school                      |
| sys                         |
| world                       |
+-----------------------------+
11 rows in set (0.00 sec)

mysql> use electric_vehicle_population;
Database changed
mysql> select * from electric_vehicle_population;
ERROR 1146 (42S02): Table 'electric_vehicle_population.electric_vehicle_population' doesn't exist
mysql> select * from ElectricVehicles;
+------------+------------+-----------+-------------------+-------+-------------+------------+----------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
| Vehicle ID | VIN (1-10) | County    | City              | State | Postal Code | Model Year | Make     | Model         | Electric Vehicle Type                  | Clean Alternative Fuel Vehicle (CAFV) Eligibility            | Electric Range | Base MSRP | Legislative District | DOL Vehicle ID | Vehicle Location                | Electric Utility                              | 2020 Census Tract |
+------------+------------+-----------+-------------------+-------+-------------+------------+----------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
|          1 | 5YJSA1E22K | King      | Seattle           | WA    | 98112       |       2019 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006500       |
|          2 | 5YJSA1E22K | King      | Seattle           | WA    | 98112       |       2019 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006500       |
|          3 | 3MW39FS05R | Yakima    | Zillah            | WA    | 98953       |       2024 | BMW      | 330E          | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             20 |      0.00 |                   15 | 264425178      | POINT (-120.2658133 46.4063477) | PACIFICORP                                    | 53077002201       |
|          4 | 1N4AZ0CP0F | King      | Kent              | WA    | 98031       |       2015 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   11 | 114962025      | POINT (-122.201564 47.402358)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029306       |
|          5 | 5YJSA1H20F | Snohomish | Bothell           | WA    | 98012       |       2015 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            208 |      0.00 |                    1 | 232724670      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
|          6 | JTMAB3FV1N | Yakima    | Yakima            | WA    | 98908       |       2022 | TOYOTA   | RAV4 PRIME    | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             42 |      0.00 |                   14 | 221023589      | POINT (-120.611068 46.596645)   | PACIFICORP                                    | 53077000902       |
|          7 | 5YJ3E1EB6K | King      | Redmond           | WA    | 98052       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   48 | 296777442      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033022606       |
|          8 | 5YJ3E1EB0J | Thurston  | Yelm              | WA    | 98597       |       2018 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 |                    2 | 311913577      | POINT (-122.5715761 46.9095798) | PUGET SOUND ENERGY INC                        | 53067012422       |
|          9 | 3FA6P0SU8D | Kitsap    | Poulsbo           | WA    | 98370       |       2013 | FORD     | FUSION        | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             19 |      0.00 |                   23 | 136752115      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090400       |
|         10 | 5YJSA1E21H | King      | Redmond           | WA    | 98052       |       2017 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 |                   45 | 241259105      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033032321       |
|         11 | 5YJ3E1EA4J | Snohomish | Bothell           | WA    | 98012       |       2018 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 |                    1 | 118035830      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052009       |
|         12 | 5YJSA1E22H | Thurston  | Olympia           | WA    | 98501       |       2017 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 |                   22 | 105283265      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010100       |
|         13 | JTDKARFP9K | Kitsap    | Poulsbo           | WA    | 98370       |       2019 | TOYOTA   | PRIUS PRIME   | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             25 |      0.00 |                   23 | 340612723      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
|         14 | 1N4AZ0CP1F | Kitsap    | Port Orchard      | WA    | 98367       |       2015 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   35 | 162186916      | POINT (-122.6530052 47.4739066) | PUGET SOUND ENERGY INC                        | 53035092901       |
|         15 | 5YJ3E1EA4L | King      | Kent              | WA    | 98030       |       2020 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                   47 | 3417746        | POINT (-122.1994204 47.3741045) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029507       |
|         16 | 3C3CFFGE2F | King      | Shoreline         | WA    | 98155       |       2015 | FIAT     | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 |                   32 | 148799822      | POINT (-122.301507 47.761784)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033020500       |
|         17 | 2C4RC1N76L | Thurston  | Tumwater          | WA    | 98512       |       2020 | CHRYSLER | PACIFICA      | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 |                   22 | 123132670      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067010910       |
|         18 | 5YJ3E1EA7L | Snohomish | Bothell           | WA    | 98012       |       2020 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                   21 | 127118694      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061051922       |
|         19 | WBY73AW09P | Snohomish | Snohomish         | WA    | 98296       |       2023 | BMW      | I4            | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                    1 | 221273244      | POINT (-122.121841 47.841036)   | PUGET SOUND ENERGY INC                        | 53061052114       |
|         20 | 1N4BZ0CP8H | King      | Bellevue          | WA    | 98007       |       2017 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            107 |      0.00 |                   48 | 211610367      | POINT (-122.1436732 47.6157551) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033023201       |
|         21 | 5YJYGDEE9L | King      | Bothell           | WA    | 98011       |       2020 | TESLA    | MODEL Y       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            291 |      0.00 |                    1 | 116957438      | POINT (-122.201408 47.754528)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033021905       |
|         22 | 5YJ3E1EB5K | Kitsap    | Poulsbo           | WA    | 98370       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   23 | 144826083      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035091100       |
|         23 | JTDKN3DP2C | Kitsap    | Poulsbo           | WA    | 98370       |       2012 | TOYOTA   | PRIUS PLUG-IN | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |              6 |      0.00 |                   23 | 171200151      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
|         24 | WAUTPBFF3G | Thurston  | Olympia           | WA    | 98513       |       2016 | AUDI     | A3            | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             16 |      0.00 |                    2 | 169279939      | POINT (-122.7654699 46.9970624) | PUGET SOUND ENERGY INC                        | 53067012320       |
|         25 | 5YJ3E1EB0K | Yakima    | Yakima            | WA    | 98902       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   15 | 476706555      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077001100       |
|         26 | WBY8P2C51K | King      | Seattle           | WA    | 98112       |       2019 | BMW      | I3            | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            153 |      0.00 |                   43 | 324226689      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006300       |
|         27 | 5UXTA6C02N | Kitsap    | Bainbridge Island | WA    | 98110       |       2022 | BMW      | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 |                   23 | 209660433      | POINT (-122.5305071 47.6400595) | PUGET SOUND ENERGY INC                        | 53035091002       |
|         28 | 1N4AZ0CP9F | King      | Seattle           | WA    | 98115       |       2015 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   46 | 139798599      | POINT (-122.3008235 47.6862671) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033002000       |
|         29 | YV4H60CF8R | Snohomish | Stanwood          | WA    | 98292       |       2024 | VOLVO    | XC90          | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 |                   10 | 258940244      | POINT (-122.326873 48.2144825)  | PUGET SOUND ENERGY INC                        | 53061053202       |
|         30 | 5YJ3E1EA0L | Snohomish | Bothell           | WA    | 98012       |       2020 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                    1 | 2183366        | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
+------------+------------+-----------+-------------------+-------+-------------+------------+----------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
30 rows in set (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     31,
    ->     'WP0AC2Y15L',
    ->     'King',
    ->     'Seattle',
    ->     'WA',
    ->     '98102',
    ->     2020,
    ->     'PORSCHE',
    ->     'TAYCAN',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     192,
    ->     0,
    ->     43,
    ->     263047151,
    ->     'POINT (-122.3212726 47.6296532)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)',
    ->     '53033006100'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     32,
    ->     '1C4JJXR6XN',
    ->     'Yakima',
    ->     'Yakima',
    ->     'WA',
    ->     '98902',
    ->     2022,
    ->     'JEEP',
    ->     'WRANGLER',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Not eligible due to low battery range',
    ->     22,
    ->     0,
    ->     15,
    ->     203574969,
    ->     'POINT (-120.530331 46.59534)',
    ->     'PACIFICORP',
    ->     '53077001100'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     33,
    ->     '5UXTA6C00M',
    ->     'Thurston',
    ->     'Olympia',
    ->     'WA',
    ->     '98501',
    ->     2021,
    ->     'BMW',
    ->     'X5',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     30,
    ->     0,
    ->     22,
    ->     166391123,
    ->     'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067010700'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     34,
    ->     '1N4AZ0CP7E',
    ->     'Kitsap',
    ->     'Bremerton',
    ->     'WA',
    ->     '98311',
    ->     2014,
    ->     'NISSAN',
    ->     'LEAF',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     84,
    ->     0,
    ->     23,
    ->     198137824,
    ->     'POINT (-122.636245 47.62806)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53035091500'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     35,
    ->     '5YJ3E1EB1P',
    ->     'Thurston',
    ->     'Olympia',
    ->     'WA',
    ->     '98501',
    ->     2023,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Eligibility unknown as battery range has not been researched',
    ->     0,
    ->     0,
    ->     22,
    ->     224408579,
    ->     'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067010700'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     36,
    ->     'KM8K53AG2L',
    ->     'Kitsap',
    ->     'Port Orchard',
    ->     'WA',
    ->     '98366',
    ->     2020,
    ->     'HYUNDAI',
    ->     'KONA',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     258,
    ->     0,
    ->     26,
    ->     131203187,
    ->     'POINT (-122.6064912 47.5236145)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53035092300'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     37,
    ->     '5YJ3E1EBXN',
    ->     'Thurston',
    ->     'Olympia',
    ->     'WA',
    ->     '98502',
    ->     2022,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Eligibility unknown as battery range has not been researched',
    ->     0,
    ->     0,
    ->     22,
    ->     252723138,
    ->     'POINT (-122.943445 47.059252)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067010600'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     38,
    ->     'YV4BR0DM8N',
    ->     'Kitsap',
    ->     'Poulsbo',
    ->     'WA',
    ->     '98370',
    ->     2022,
    ->     'VOLVO',
    ->     'XC60',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Not eligible due to low battery range',
    ->     18,
    ->     0,
    ->     23,
    ->     182754120,
    ->     'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53035090501'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     39,
    ->     '5YJXCAE22L',
    ->     'Snohomish',
    ->     'Bothell',
    ->     'WA',
    ->     '98021',
    ->     2020,
    ->     'TESLA',
    ->     'MODEL X',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     293,
    ->     0,
    ->     1,
    ->     209983889,
    ->     'POINT (-122.2107298 47.7977268)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061051937'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     40,
    ->     '5YJ3E1EA6N',
    ->     'Thurston',
    ->     'Olympia',
    ->     'WA',
    ->     '98501',
    ->     2022,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Eligibility unknown as battery range has not been researched',
    ->     0,
    ->     0,
    ->     22,
    ->     200610329,
    ->     'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067010700'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     41,
    ->     '5YJSA1H16F',
    ->     'Snohomish',
    ->     'Lynnwood',
    ->     'WA',
    ->     '98087',
    ->     2015,
    ->     'TESLA',
    ->     'MODEL S',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     208,
    ->     0,
    ->     21,
    ->     5999080,
    ->     'POINT (-122.27336 47.861417)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061041812'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     42,
    ->     '5YJ3E1EB3K',
    ->     'Snohomish',
    ->     'Lynnwood',
    ->     'WA',
    ->     '98087',
    ->     2019,
    ->     'TESLA',
    ->     'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     220,
    ->     0,
    ->     21,
    ->     478641796,
    ->     'POINT (-122.27336 47.861417)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061041703'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     43,
    ->     '1FTVW1EV9P',
    ->     'Yakima',
    ->     'Yakima',
    ->     'WA',
    ->     '98901',
    ->     2023,
    ->     'FORD',
    ->     'F-150',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Eligibility unknown as battery range has not been researched',
    ->     0,
    ->     0,
    ->     15,
    ->     230080511,
    ->     'POINT (-120.4688751 46.6046178)',
    ->     'PACIFICORP',
    ->     '53077001602'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     44,
    ->     '3C3CFFGEXF',
    ->     'Thurston',
    ->     'Olympia',
    ->     'WA',
    ->     '98506',
    ->     2015,
    ->     'FIAT',
    ->     '500',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     87,
    ->     0,
    ->     22,
    ->     350197970,
    ->     'POINT (-122.86491 47.07503)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067010200'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     45,
    ->     '3C3CFFGE7F',
    ->     'Thurston',
    ->     'Olympia',
    ->     'WA',
    ->     '98512',
    ->     2015,
    ->     'FIAT',
    ->     '500',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     87,
    ->     0,
    ->     35,
    ->     285123072,
    ->     'POINT (-122.957046 46.991391)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067012730'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     47,
    ->     'WVGDMPE24M',
    ->     'Yakima',
    ->     'Yakima',
    ->     'WA',
    ->     '98903',
    ->     2021,
    ->     'VOLKSWAGEN',
    ->     'ID.4',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Eligibility unknown as battery range has not been researched',
    ->     0,
    ->     0,
    ->     14,
    ->     151371216,
    ->     'POINT (-120.5807155 46.5654909)',
    ->     'PACIFICORP',
    ->     '53077002803'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> DELETE FROM ElectricVehicles
    -> WHERE `Vehicle ID` = 47;
Query OK, 1 row affected (0.01 sec)

mysql> select * from ElectricVehicles;
+------------+------------+-----------+-------------------+-------+-------------+------------+----------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
| Vehicle ID | VIN (1-10) | County    | City              | State | Postal Code | Model Year | Make     | Model         | Electric Vehicle Type                  | Clean Alternative Fuel Vehicle (CAFV) Eligibility            | Electric Range | Base MSRP | Legislative District | DOL Vehicle ID | Vehicle Location                | Electric Utility                              | 2020 Census Tract |
+------------+------------+-----------+-------------------+-------+-------------+------------+----------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
|          1 | 5YJSA1E22K | King      | Seattle           | WA    | 98112       |       2019 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006500       |
|          2 | 5YJSA1E22K | King      | Seattle           | WA    | 98112       |       2019 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006500       |
|          3 | 3MW39FS05R | Yakima    | Zillah            | WA    | 98953       |       2024 | BMW      | 330E          | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             20 |      0.00 |                   15 | 264425178      | POINT (-120.2658133 46.4063477) | PACIFICORP                                    | 53077002201       |
|          4 | 1N4AZ0CP0F | King      | Kent              | WA    | 98031       |       2015 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   11 | 114962025      | POINT (-122.201564 47.402358)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029306       |
|          5 | 5YJSA1H20F | Snohomish | Bothell           | WA    | 98012       |       2015 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            208 |      0.00 |                    1 | 232724670      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
|          6 | JTMAB3FV1N | Yakima    | Yakima            | WA    | 98908       |       2022 | TOYOTA   | RAV4 PRIME    | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             42 |      0.00 |                   14 | 221023589      | POINT (-120.611068 46.596645)   | PACIFICORP                                    | 53077000902       |
|          7 | 5YJ3E1EB6K | King      | Redmond           | WA    | 98052       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   48 | 296777442      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033022606       |
|          8 | 5YJ3E1EB0J | Thurston  | Yelm              | WA    | 98597       |       2018 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 |                    2 | 311913577      | POINT (-122.5715761 46.9095798) | PUGET SOUND ENERGY INC                        | 53067012422       |
|          9 | 3FA6P0SU8D | Kitsap    | Poulsbo           | WA    | 98370       |       2013 | FORD     | FUSION        | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             19 |      0.00 |                   23 | 136752115      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090400       |
|         10 | 5YJSA1E21H | King      | Redmond           | WA    | 98052       |       2017 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 |                   45 | 241259105      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033032321       |
|         11 | 5YJ3E1EA4J | Snohomish | Bothell           | WA    | 98012       |       2018 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 |                    1 | 118035830      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052009       |
|         12 | 5YJSA1E22H | Thurston  | Olympia           | WA    | 98501       |       2017 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 |                   22 | 105283265      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010100       |
|         13 | JTDKARFP9K | Kitsap    | Poulsbo           | WA    | 98370       |       2019 | TOYOTA   | PRIUS PRIME   | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             25 |      0.00 |                   23 | 340612723      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
|         14 | 1N4AZ0CP1F | Kitsap    | Port Orchard      | WA    | 98367       |       2015 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   35 | 162186916      | POINT (-122.6530052 47.4739066) | PUGET SOUND ENERGY INC                        | 53035092901       |
|         15 | 5YJ3E1EA4L | King      | Kent              | WA    | 98030       |       2020 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                   47 | 3417746        | POINT (-122.1994204 47.3741045) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029507       |
|         16 | 3C3CFFGE2F | King      | Shoreline         | WA    | 98155       |       2015 | FIAT     | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 |                   32 | 148799822      | POINT (-122.301507 47.761784)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033020500       |
|         17 | 2C4RC1N76L | Thurston  | Tumwater          | WA    | 98512       |       2020 | CHRYSLER | PACIFICA      | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 |                   22 | 123132670      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067010910       |
|         18 | 5YJ3E1EA7L | Snohomish | Bothell           | WA    | 98012       |       2020 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                   21 | 127118694      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061051922       |
|         19 | WBY73AW09P | Snohomish | Snohomish         | WA    | 98296       |       2023 | BMW      | I4            | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                    1 | 221273244      | POINT (-122.121841 47.841036)   | PUGET SOUND ENERGY INC                        | 53061052114       |
|         20 | 1N4BZ0CP8H | King      | Bellevue          | WA    | 98007       |       2017 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            107 |      0.00 |                   48 | 211610367      | POINT (-122.1436732 47.6157551) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033023201       |
|         21 | 5YJYGDEE9L | King      | Bothell           | WA    | 98011       |       2020 | TESLA    | MODEL Y       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            291 |      0.00 |                    1 | 116957438      | POINT (-122.201408 47.754528)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033021905       |
|         22 | 5YJ3E1EB5K | Kitsap    | Poulsbo           | WA    | 98370       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   23 | 144826083      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035091100       |
|         23 | JTDKN3DP2C | Kitsap    | Poulsbo           | WA    | 98370       |       2012 | TOYOTA   | PRIUS PLUG-IN | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |              6 |      0.00 |                   23 | 171200151      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
|         24 | WAUTPBFF3G | Thurston  | Olympia           | WA    | 98513       |       2016 | AUDI     | A3            | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             16 |      0.00 |                    2 | 169279939      | POINT (-122.7654699 46.9970624) | PUGET SOUND ENERGY INC                        | 53067012320       |
|         25 | 5YJ3E1EB0K | Yakima    | Yakima            | WA    | 98902       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   15 | 476706555      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077001100       |
|         26 | WBY8P2C51K | King      | Seattle           | WA    | 98112       |       2019 | BMW      | I3            | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            153 |      0.00 |                   43 | 324226689      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006300       |
|         27 | 5UXTA6C02N | Kitsap    | Bainbridge Island | WA    | 98110       |       2022 | BMW      | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 |                   23 | 209660433      | POINT (-122.5305071 47.6400595) | PUGET SOUND ENERGY INC                        | 53035091002       |
|         28 | 1N4AZ0CP9F | King      | Seattle           | WA    | 98115       |       2015 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   46 | 139798599      | POINT (-122.3008235 47.6862671) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033002000       |
|         29 | YV4H60CF8R | Snohomish | Stanwood          | WA    | 98292       |       2024 | VOLVO    | XC90          | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 |                   10 | 258940244      | POINT (-122.326873 48.2144825)  | PUGET SOUND ENERGY INC                        | 53061053202       |
|         30 | 5YJ3E1EA0L | Snohomish | Bothell           | WA    | 98012       |       2020 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                    1 | 2183366        | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
|         31 | WP0AC2Y15L | King      | Seattle           | WA    | 98102       |       2020 | PORSCHE  | TAYCAN        | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            192 |      0.00 |                   43 | 263047151      | POINT (-122.3212726 47.6296532) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006100       |
|         32 | 1C4JJXR6XN | Yakima    | Yakima            | WA    | 98902       |       2022 | JEEP     | WRANGLER      | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             22 |      0.00 |                   15 | 203574969      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077001100       |
|         33 | 5UXTA6C00M | Thurston  | Olympia           | WA    | 98501       |       2021 | BMW      | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 |                   22 | 166391123      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010700       |
|         34 | 1N4AZ0CP7E | Kitsap    | Bremerton         | WA    | 98311       |       2014 | NISSAN   | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   23 | 198137824      | POINT (-122.636245 47.62806)    | PUGET SOUND ENERGY INC                        | 53035091500       |
|         35 | 5YJ3E1EB1P | Thurston  | Olympia           | WA    | 98501       |       2023 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   22 | 224408579      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010700       |
|         36 | KM8K53AG2L | Kitsap    | Port Orchard      | WA    | 98366       |       2020 | HYUNDAI  | KONA          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            258 |      0.00 |                   26 | 131203187      | POINT (-122.6064912 47.5236145) | PUGET SOUND ENERGY INC                        | 53035092300       |
|         37 | 5YJ3E1EBXN | Thurston  | Olympia           | WA    | 98502       |       2022 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   22 | 252723138      | POINT (-122.943445 47.059252)   | PUGET SOUND ENERGY INC                        | 53067010600       |
|         38 | YV4BR0DM8N | Kitsap    | Poulsbo           | WA    | 98370       |       2022 | VOLVO    | XC60          | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             18 |      0.00 |                   23 | 182754120      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090501       |
|         39 | 5YJXCAE22L | Snohomish | Bothell           | WA    | 98021       |       2020 | TESLA    | MODEL X       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            293 |      0.00 |                    1 | 209983889      | POINT (-122.2107298 47.7977268) | PUGET SOUND ENERGY INC                        | 53061051937       |
|         40 | 5YJ3E1EA6N | Thurston  | Olympia           | WA    | 98501       |       2022 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   22 | 200610329      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010700       |
|         41 | 5YJSA1H16F | Snohomish | Lynnwood          | WA    | 98087       |       2015 | TESLA    | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            208 |      0.00 |                   21 | 5999080        | POINT (-122.27336 47.861417)    | PUGET SOUND ENERGY INC                        | 53061041812       |
|         42 | 5YJ3E1EB3K | Snohomish | Lynnwood          | WA    | 98087       |       2019 | TESLA    | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   21 | 478641796      | POINT (-122.27336 47.861417)    | PUGET SOUND ENERGY INC                        | 53061041703       |
|         43 | 1FTVW1EV9P | Yakima    | Yakima            | WA    | 98901       |       2023 | FORD     | F-150         | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   15 | 230080511      | POINT (-120.4688751 46.6046178) | PACIFICORP                                    | 53077001602       |
|         44 | 3C3CFFGEXF | Thurston  | Olympia           | WA    | 98506       |       2015 | FIAT     | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 |                   22 | 350197970      | POINT (-122.86491 47.07503)     | PUGET SOUND ENERGY INC                        | 53067010200       |
|         45 | 3C3CFFGE7F | Thurston  | Olympia           | WA    | 98512       |       2015 | FIAT     | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 |                   35 | 285123072      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067012730       |
+------------+------------+-----------+-------------------+-------+-------------+------------+----------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
45 rows in set (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     46,
    ->     'WVGDMPE24M',
    ->     'Yakima',
    ->     'Yakima',
    ->     'WA',
    ->     '98903',
    ->     2021,
    ->     'VOLKSWAGEN',
    ->     'ID.4',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Eligibility unknown as battery range has not been researched',
    ->     0,
    ->     0,
    ->     14,
    ->     151371216,
    ->     'POINT (-120.5807155 46.5654909)',
    ->     'PACIFICORP',
    ->     '53077002803'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     47,
    ->     'WBY1Z6C39H',
    ->     'King',
    ->     'Renton',
    ->     'WA',
    ->     '98056',
    ->     2017,
    ->     'BMW',
    ->     'I3',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     81,
    ->     0,
    ->     11,
    ->     144155868,
    ->     'POINT (-122.1819876 47.5098889)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)',
    ->     '53033025401'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     48,
    ->     '1FT6W1EVXN',
    ->     'Thurston',
    ->     'Olympia',
    ->     'WA',
    ->     '98512',
    ->     2022,
    ->     'FORD',
    ->     'F-150',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Eligibility unknown as battery range has not been researched',
    ->     0,
    ->     0,
    ->     35,
    ->     229848937,
    ->     'POINT (-122.957046 46.991391)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53067011901'
    -> );
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     49,
    ->     '1G1RB6E4XF',
    ->     'Snohomish',
    ->     'Monroe',
    ->     'WA',
    ->     '98272',
    ->     2015,
    ->     'CHEVROLET',
    ->     'VOLT',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     38,
    ->     0,
    ->     39,
    ->     160637802,
    ->     'POINT (-121.968385 47.854897)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061052208'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicles (
    ->     `Vehicle ID`,
    ->     `VIN (1-10)`,
    ->     `County`,
    ->     `City`,
    ->     `State`,
    ->     `Postal Code`,
    ->     `Model Year`,
    ->     `Make`,
    ->     `Model`,
    ->     `Electric Vehicle Type`,
    ->     `Clean Alternative Fuel Vehicle (CAFV) Eligibility`,
    ->     `Electric Range`,
    ->     `Base MSRP`,
    ->     `Legislative District`,
    ->     `DOL Vehicle ID`,
    ->     `Vehicle Location`,
    ->     `Electric Utility`,
    ->     `2020 Census Tract`
    -> ) VALUES (
    ->     50,
    ->     '5YJSA1E26G',
    ->     'Snohomish',
    ->     'Lake Stevens',
    ->     'WA',
    ->     '98258',
    ->     2016,
    ->     'TESLA',
    ->     'MODEL S',
    ->     'Battery Electric Vehicle (BEV)',
    ->     'Clean Alternative Fuel Vehicle Eligible',
    ->     210,
    ->     0,
    ->     44,
    ->     143610449,
    ->     'POINT (-122.0816912 48.0122934)',
    ->     'PUGET SOUND ENERGY INC',
    ->     '53061052505'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> select * from ElectricVehicles;
+------------+------------+-----------+-------------------+-------+-------------+------------+------------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
| Vehicle ID | VIN (1-10) | County    | City              | State | Postal Code | Model Year | Make       | Model         | Electric Vehicle Type                  | Clean Alternative Fuel Vehicle (CAFV) Eligibility            | Electric Range | Base MSRP | Legislative District | DOL Vehicle ID | Vehicle Location                | Electric Utility                              | 2020 Census Tract |
+------------+------------+-----------+-------------------+-------+-------------+------------+------------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
|          1 | 5YJSA1E22K | King      | Seattle           | WA    | 98112       |       2019 | TESLA      | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006500       |
|          2 | 5YJSA1E22K | King      | Seattle           | WA    | 98112       |       2019 | TESLA      | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 |                   43 | 202233958      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006500       |
|          3 | 3MW39FS05R | Yakima    | Zillah            | WA    | 98953       |       2024 | BMW        | 330E          | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             20 |      0.00 |                   15 | 264425178      | POINT (-120.2658133 46.4063477) | PACIFICORP                                    | 53077002201       |
|          4 | 1N4AZ0CP0F | King      | Kent              | WA    | 98031       |       2015 | NISSAN     | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   11 | 114962025      | POINT (-122.201564 47.402358)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029306       |
|          5 | 5YJSA1H20F | Snohomish | Bothell           | WA    | 98012       |       2015 | TESLA      | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            208 |      0.00 |                    1 | 232724670      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
|          6 | JTMAB3FV1N | Yakima    | Yakima            | WA    | 98908       |       2022 | TOYOTA     | RAV4 PRIME    | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             42 |      0.00 |                   14 | 221023589      | POINT (-120.611068 46.596645)   | PACIFICORP                                    | 53077000902       |
|          7 | 5YJ3E1EB6K | King      | Redmond           | WA    | 98052       |       2019 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   48 | 296777442      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033022606       |
|          8 | 5YJ3E1EB0J | Thurston  | Yelm              | WA    | 98597       |       2018 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 |                    2 | 311913577      | POINT (-122.5715761 46.9095798) | PUGET SOUND ENERGY INC                        | 53067012422       |
|          9 | 3FA6P0SU8D | Kitsap    | Poulsbo           | WA    | 98370       |       2013 | FORD       | FUSION        | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             19 |      0.00 |                   23 | 136752115      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090400       |
|         10 | 5YJSA1E21H | King      | Redmond           | WA    | 98052       |       2017 | TESLA      | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 |                   45 | 241259105      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033032321       |
|         11 | 5YJ3E1EA4J | Snohomish | Bothell           | WA    | 98012       |       2018 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 |                    1 | 118035830      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052009       |
|         12 | 5YJSA1E22H | Thurston  | Olympia           | WA    | 98501       |       2017 | TESLA      | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 |                   22 | 105283265      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010100       |
|         13 | JTDKARFP9K | Kitsap    | Poulsbo           | WA    | 98370       |       2019 | TOYOTA     | PRIUS PRIME   | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             25 |      0.00 |                   23 | 340612723      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
|         14 | 1N4AZ0CP1F | Kitsap    | Port Orchard      | WA    | 98367       |       2015 | NISSAN     | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   35 | 162186916      | POINT (-122.6530052 47.4739066) | PUGET SOUND ENERGY INC                        | 53035092901       |
|         15 | 5YJ3E1EA4L | King      | Kent              | WA    | 98030       |       2020 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                   47 | 3417746        | POINT (-122.1994204 47.3741045) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029507       |
|         16 | 3C3CFFGE2F | King      | Shoreline         | WA    | 98155       |       2015 | FIAT       | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 |                   32 | 148799822      | POINT (-122.301507 47.761784)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033020500       |
|         17 | 2C4RC1N76L | Thurston  | Tumwater          | WA    | 98512       |       2020 | CHRYSLER   | PACIFICA      | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 |                   22 | 123132670      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067010910       |
|         18 | 5YJ3E1EA7L | Snohomish | Bothell           | WA    | 98012       |       2020 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                   21 | 127118694      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061051922       |
|         19 | WBY73AW09P | Snohomish | Snohomish         | WA    | 98296       |       2023 | BMW        | I4            | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                    1 | 221273244      | POINT (-122.121841 47.841036)   | PUGET SOUND ENERGY INC                        | 53061052114       |
|         20 | 1N4BZ0CP8H | King      | Bellevue          | WA    | 98007       |       2017 | NISSAN     | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            107 |      0.00 |                   48 | 211610367      | POINT (-122.1436732 47.6157551) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033023201       |
|         21 | 5YJYGDEE9L | King      | Bothell           | WA    | 98011       |       2020 | TESLA      | MODEL Y       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            291 |      0.00 |                    1 | 116957438      | POINT (-122.201408 47.754528)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033021905       |
|         22 | 5YJ3E1EB5K | Kitsap    | Poulsbo           | WA    | 98370       |       2019 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   23 | 144826083      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035091100       |
|         23 | JTDKN3DP2C | Kitsap    | Poulsbo           | WA    | 98370       |       2012 | TOYOTA     | PRIUS PLUG-IN | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |              6 |      0.00 |                   23 | 171200151      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
|         24 | WAUTPBFF3G | Thurston  | Olympia           | WA    | 98513       |       2016 | AUDI       | A3            | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             16 |      0.00 |                    2 | 169279939      | POINT (-122.7654699 46.9970624) | PUGET SOUND ENERGY INC                        | 53067012320       |
|         25 | 5YJ3E1EB0K | Yakima    | Yakima            | WA    | 98902       |       2019 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   15 | 476706555      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077001100       |
|         26 | WBY8P2C51K | King      | Seattle           | WA    | 98112       |       2019 | BMW        | I3            | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            153 |      0.00 |                   43 | 324226689      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006300       |
|         27 | 5UXTA6C02N | Kitsap    | Bainbridge Island | WA    | 98110       |       2022 | BMW        | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 |                   23 | 209660433      | POINT (-122.5305071 47.6400595) | PUGET SOUND ENERGY INC                        | 53035091002       |
|         28 | 1N4AZ0CP9F | King      | Seattle           | WA    | 98115       |       2015 | NISSAN     | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   46 | 139798599      | POINT (-122.3008235 47.6862671) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033002000       |
|         29 | YV4H60CF8R | Snohomish | Stanwood          | WA    | 98292       |       2024 | VOLVO      | XC90          | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 |                   10 | 258940244      | POINT (-122.326873 48.2144825)  | PUGET SOUND ENERGY INC                        | 53061053202       |
|         30 | 5YJ3E1EA0L | Snohomish | Bothell           | WA    | 98012       |       2020 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 |                    1 | 2183366        | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
|         31 | WP0AC2Y15L | King      | Seattle           | WA    | 98102       |       2020 | PORSCHE    | TAYCAN        | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            192 |      0.00 |                   43 | 263047151      | POINT (-122.3212726 47.6296532) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006100       |
|         32 | 1C4JJXR6XN | Yakima    | Yakima            | WA    | 98902       |       2022 | JEEP       | WRANGLER      | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             22 |      0.00 |                   15 | 203574969      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077001100       |
|         33 | 5UXTA6C00M | Thurston  | Olympia           | WA    | 98501       |       2021 | BMW        | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 |                   22 | 166391123      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010700       |
|         34 | 1N4AZ0CP7E | Kitsap    | Bremerton         | WA    | 98311       |       2014 | NISSAN     | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 |                   23 | 198137824      | POINT (-122.636245 47.62806)    | PUGET SOUND ENERGY INC                        | 53035091500       |
|         35 | 5YJ3E1EB1P | Thurston  | Olympia           | WA    | 98501       |       2023 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   22 | 224408579      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010700       |
|         36 | KM8K53AG2L | Kitsap    | Port Orchard      | WA    | 98366       |       2020 | HYUNDAI    | KONA          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            258 |      0.00 |                   26 | 131203187      | POINT (-122.6064912 47.5236145) | PUGET SOUND ENERGY INC                        | 53035092300       |
|         37 | 5YJ3E1EBXN | Thurston  | Olympia           | WA    | 98502       |       2022 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   22 | 252723138      | POINT (-122.943445 47.059252)   | PUGET SOUND ENERGY INC                        | 53067010600       |
|         38 | YV4BR0DM8N | Kitsap    | Poulsbo           | WA    | 98370       |       2022 | VOLVO      | XC60          | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             18 |      0.00 |                   23 | 182754120      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090501       |
|         39 | 5YJXCAE22L | Snohomish | Bothell           | WA    | 98021       |       2020 | TESLA      | MODEL X       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            293 |      0.00 |                    1 | 209983889      | POINT (-122.2107298 47.7977268) | PUGET SOUND ENERGY INC                        | 53061051937       |
|         40 | 5YJ3E1EA6N | Thurston  | Olympia           | WA    | 98501       |       2022 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   22 | 200610329      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010700       |
|         41 | 5YJSA1H16F | Snohomish | Lynnwood          | WA    | 98087       |       2015 | TESLA      | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            208 |      0.00 |                   21 | 5999080        | POINT (-122.27336 47.861417)    | PUGET SOUND ENERGY INC                        | 53061041812       |
|         42 | 5YJ3E1EB3K | Snohomish | Lynnwood          | WA    | 98087       |       2019 | TESLA      | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 |                   21 | 478641796      | POINT (-122.27336 47.861417)    | PUGET SOUND ENERGY INC                        | 53061041703       |
|         43 | 1FTVW1EV9P | Yakima    | Yakima            | WA    | 98901       |       2023 | FORD       | F-150         | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   15 | 230080511      | POINT (-120.4688751 46.6046178) | PACIFICORP                                    | 53077001602       |
|         44 | 3C3CFFGEXF | Thurston  | Olympia           | WA    | 98506       |       2015 | FIAT       | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 |                   22 | 350197970      | POINT (-122.86491 47.07503)     | PUGET SOUND ENERGY INC                        | 53067010200       |
|         45 | 3C3CFFGE7F | Thurston  | Olympia           | WA    | 98512       |       2015 | FIAT       | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 |                   35 | 285123072      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067012730       |
|         46 | WVGDMPE24M | Yakima    | Yakima            | WA    | 98903       |       2021 | VOLKSWAGEN | ID.4          | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   14 | 151371216      | POINT (-120.5807155 46.5654909) | PACIFICORP                                    | 53077002803       |
|         47 | WBY1Z6C39H | King      | Renton            | WA    | 98056       |       2017 | BMW        | I3            | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             81 |      0.00 |                   11 | 144155868      | POINT (-122.1819876 47.5098889) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033025401       |
|         48 | 1FT6W1EVXN | Thurston  | Olympia           | WA    | 98512       |       2022 | FORD       | F-150         | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 |                   35 | 229848937      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067011901       |
|         49 | 1G1RB6E4XF | Snohomish | Monroe            | WA    | 98272       |       2015 | CHEVROLET  | VOLT          | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             38 |      0.00 |                   39 | 160637802      | POINT (-121.968385 47.854897)   | PUGET SOUND ENERGY INC                        | 53061052208       |
|         50 | 5YJSA1E26G | Snohomish | Lake Stevens      | WA    | 98258       |       2016 | TESLA      | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 |                   44 | 143610449      | POINT (-122.0816912 48.0122934) | PUGET SOUND ENERGY INC                        | 53061052505       |
+------------+------------+-----------+-------------------+-------+-------------+------------+------------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
50 rows in set (0.00 sec)

mysql> describe electric_vehicle_population;
ERROR 1146 (42S02): Table 'electric_vehicle_population.electric_vehicle_population' doesn't exist
mysql> describe electric_vehicle_population;
ERROR 1146 (42S02): Table 'electric_vehicle_population.electric_vehicle_population' doesn't exist
mysql> DESCRIBE ElectricVehicles;
+---------------------------------------------------+---------------+------+-----+---------+-------+
| Field                                             | Type          | Null | Key | Default | Extra |
+---------------------------------------------------+---------------+------+-----+---------+-------+
| Vehicle ID                                        | int           | NO   | PRI | NULL    |       |
| VIN (1-10)                                        | varchar(10)   | YES  |     | NULL    |       |
| County                                            | varchar(255)  | YES  |     | NULL    |       |
| City                                              | varchar(255)  | YES  |     | NULL    |       |
| State                                             | varchar(50)   | YES  |     | NULL    |       |
| Postal Code                                       | varchar(20)   | YES  |     | NULL    |       |
| Model Year                                        | int           | YES  |     | NULL    |       |
| Make                                              | varchar(255)  | YES  |     | NULL    |       |
| Model                                             | varchar(255)  | YES  |     | NULL    |       |
| Electric Vehicle Type                             | varchar(255)  | YES  |     | NULL    |       |
| Clean Alternative Fuel Vehicle (CAFV) Eligibility | varchar(255)  | YES  |     | NULL    |       |
| Electric Range                                    | int           | YES  |     | NULL    |       |
| Base MSRP                                         | decimal(10,2) | YES  |     | NULL    |       |
| Legislative District                              | int           | YES  |     | NULL    |       |
| DOL Vehicle ID                                    | varchar(50)   | YES  |     | NULL    |       |
| Vehicle Location                                  | varchar(255)  | YES  |     | NULL    |       |
| Electric Utility                                  | varchar(255)  | YES  |     | NULL    |       |
| 2020 Census Tract                                 | varchar(255)  | YES  |     | NULL    |       |
+---------------------------------------------------+---------------+------+-----+---------+-------+
18 rows in set (0.01 sec)

mysql>