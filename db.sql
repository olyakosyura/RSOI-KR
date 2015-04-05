BEGIN TRANSACTION;
DROP TABLE IF EXISTS data_login;
DROP TABLE IF EXISTS data_login_firms;
DROP TABLE IF EXISTS data_users;
DROP TABLE IF EXISTS data_users_firms;
DROP TABLE IF EXISTS data_mobiles;
drop table if exists data_orders;
DROP TABLE IF EXISTS data_mobiles_firms;
drop table if exists data_deteils_of_the_orders;


CREATE TABLE data_login (id integer primary key, login TEXT UNIQUE, password TEXT);
INSERT INTO "data_login" VALUES(1,'olyakosyura','qwerty');
INSERT INTO "data_login" VALUES(2,'barnybrown','0000');
INSERT INTO "data_login" VALUES(3,'Nick','qazxsw');
INSERT INTO "data_login" VALUES(4,'Marina','1234567890');
INSERT INTO "data_login" VALUES(5,'happy','1');

CREATE TABLE data_login_firms (id integer primary key, login TEXT UNIQUE, password TEXT);
INSERT INTO "data_login" VALUES(1,'euroset','qwerty');
INSERT INTO "data_login" VALUES(2,'eldorado','0000');
INSERT INTO "data_login" VALUES(3,'IphoneCustoms','qazxsw');
INSERT INTO "data_login" VALUES(4,'Miranda','1234567890');
INSERT INTO "data_login" VALUES(5,'ILoveYourPhones','1');


CREATE TABLE data_users (id INTEGER PRIMARY KEY, login TEXT UNIQUE, firstname TEXT, secondname TEXT, email TEXT);
INSERT INTO "data_users" VALUES(1,'olyakosyura','Olga','Kosyura','olyakosyura@gmail.ru');
INSERT INTO "data_users" VALUES(2,'barnybrown','Nick','Shabaev','barnybrown@mail.ru');
INSERT INTO "data_users" VALUES(3,'Nick','Nick','Nikitin','nik@yandex.ru');
INSERT INTO "data_users" VALUES(4,'Marina','Marina','Kanischeva','aeifrhen@mail.ru');
INSERT INTO "data_users" VALUES(5,'happy','Ololosha','Ololo','olololo@mail.ru');


CREATE TABLE data_users_firms (id INTEGER PRIMARY KEY, login TEXT UNIQUE, name TEXT,email TEXT);
INSERT INTO "data_users" VALUES(1,'olyakosyura','EuroSet','olyakosyura@gmail.ru');
INSERT INTO "data_users" VALUES(2,'barnybrown','Eldorado"','barnybrown@mail.ru');
INSERT INTO "data_users" VALUES(3,'Nick','Iphone Customs','nik@yandex.ru');
INSERT INTO "data_users" VALUES(4,'Marina','Miranda Productions','aeifrhen@mail.ru');
INSERT INTO "data_users" VALUES(5,'happy','I love your phones','olololo@mail.ru');


CREATE TABLE data_mobiles (id INTEGER PRIMARY KEY, firm TEXT, model TEXT, color TEXT, description TEXT);
INSERT INTO "data_mobiles" VALUES(1,'Nokia','3310','Blue','Двухдиапазонный сотовый телефон фирмы Nokia. Выпущен в четвертом квартале 2000 года, придя на смену модели 3210. Nokia 3310 - одна из самых удачных моделей в истории: было продано около 126 миллионов аппаратов');
INSERT INTO "data_mobiles" VALUES(2,'Apple','Iphone 6','Gold','Смартфон , работающий на iOS 8, представленный 9 сентября 2014 года. Диагональ экрана была значительно увеличена по сравнению с предыдущими моделями. Толщина - около 7 мм, без учета толщины камеры.');
INSERT INTO "data_mobiles" VALUES(3,'Samsung','Galaxy S5','White','Смартфон пятого поколения линейки Galaxy S, анонсированный компанией Samsung Electronics 25 февраля 2014 года на MWC в Барселоне. Поступил в продажу 11 апреля 2014 года в 125 странах.');
INSERT INTO "data_mobiles" VALUES(4,'LG','Optimus G','Blue','The LG Optimus G is a smartphone designed and manufactured by LG Electronics. It was announced on September 19, 2012;On January 18, 2013, LG announced that the device reached 1 million in sales four months after its release in Korea, Japan, Canada, and the U.S. The LG Optimus G is also closely related to the Nexus 4 with similar specifications and a similar design.');
INSERT INTO "data_mobiles" VALUES(5,'LG','Nexus 4','White','Смартфон компании Google, работающий под управлением операционной системы Android. Разработан совместно компаниями LG Electronics и Google Inc. Является представителем четвёртого поколения в линейке смартфонов Google Nexus.Смартфон был представлен 29 октября 2012 года вместе с планшетом Nexus 10 и операционной системой Android 4.2 Jelly Bean. Продажи устройства стартовали 13 ноября 2012 года.');
INSERT INTO "data_mobiles" VALUES(6,'LG','Nexus 5','Black','Флагманский смартфон из линейки Google Nexus 2013 года, работающий под управлением операционной системы Android.Устройство было разработано совместными усилиями компаний LG Electronics и Google Inc. Первый смартфон, работающий на операционной системе Android версии 4.4 KitKat. Официальный анонс состоялся 31 октября 2013 года');

CREATE TABLE data_orders (id INTEGER PRIMARY KEY, id_firm integer, sale integer);
insert into "data_orders" values(1,3,20000);
insert into "data_orders" values(2,5,2340);
insert into "data_orders" values(3,2,23420);
insert into "data_orders" values(4,4,24540);
insert into "data_orders" values(5,1,230);

CREATE TABLE data_deteils_of_the_orders (id_order INTEGER, id_firm integer, id_mobile integer, id_user integer);
insert into "data_deteils_of_the_orders" values(1,1,3,5);
insert into "data_deteils_of_the_orders" values(1,5,4,5);
insert into "data_deteils_of_the_orders" values(2,2,1,4);
insert into "data_deteils_of_the_orders" values(3,5,4,1);
insert into "data_deteils_of_the_orders" values(4,2,3,3);
insert into "data_deteils_of_the_orders" values(4,5,5,3);
insert into "data_deteils_of_the_orders" values(5,5,5,2);
insert into "data_deteils_of_the_orders" values(5,5,4,2);
insert into "data_deteils_of_the_orders" values(5,2,3,2);

CREATE TABLE data_mobiles_firms (id_firm INTEGER, id_mobile integer, sale integer);
insert into "data_mobiles_firms" values(1,3,21340);
insert into "data_mobiles_firms" values(2,3,23330);
insert into "data_mobiles_firms" values(5,5,27240);
insert into "data_mobiles_firms" values(2,1,2300);
insert into "data_mobiles_firms" values(4,1,2340);
insert into "data_mobiles_firms" values(5,4,23040);
insert into "data_mobiles_firms" values(3,2,50030);

COMMIT;
