PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE airlines (
carrier text primary key,
name text not null,
flight_count int not null
);
INSERT INTO airlines VALUES('9E','Endeavor Air Inc.',47);
INSERT INTO airlines VALUES('AA','American Airlines Inc.',150);
INSERT INTO airlines VALUES('AS','Alaska Airlines Inc.',76);
INSERT INTO airlines VALUES('B6','JetBlue Airways',56);
INSERT INTO airlines VALUES('DL','Delta Air Lines Inc.',97);
INSERT INTO airlines VALUES('EV','ExpressJet Airlines Inc.',64);
INSERT INTO airlines VALUES('F9','Frontier Airlines Inc.',55);
INSERT INTO airlines VALUES('FL','AirTran Airways Corporation',22);
INSERT INTO airlines VALUES('HA','Hawaiian Airlines Inc.',30);
INSERT INTO airlines VALUES('MQ','Envoy Air',32);
INSERT INTO airlines VALUES('OO','SkyWest Airlines Inc.',67);
INSERT INTO airlines VALUES('UA','United Air Lines Inc.',175);
INSERT INTO airlines VALUES('US','US Airways Inc.',57);
INSERT INTO airlines VALUES('VX','Virgin America',28);
INSERT INTO airlines VALUES('WN','Southwest Airlines Co.',100);
INSERT INTO airlines VALUES('YV','Mesa Airlines Inc.',29);
CREATE TABLE airports (
faa text primary key,
name text not null,
tzone text not null,
flight_count int not null
);
INSERT INTO airports VALUES('DFW','Dallas Fort Worth Intl','America/Chicago',54);
INSERT INTO airports VALUES('BQK','Brunswick Golden Isles','American/New_York',33);
INSERT INTO airports VALUES('EWR','Newark Liberty Intl','America/New_York',29);
INSERT INTO airports VALUES('FLL','Fort Lauderdale Hollywood Intl','America/New_York',70);
INSERT INTO airports VALUES('IAH','George Bush Intercontinental','America/Chicago',53);
INSERT INTO airports VALUES('JFK','John F Kennedy Intl','America/New_York',45);
INSERT INTO airports VALUES('LGA','La Guardia','America/New_York',20);
INSERT INTO airports VALUES('MIA','Miami Intl','America/New_York',32);
INSERT INTO airports VALUES('ORD','Chicago Ohare Intl','America/Chicago',42);
INSERT INTO airports VALUES('AMS','AMS-Amsterdam Airport Schiphol','Central European Summer Time',16);
CREATE TABLE flights (
id int not null,
origin text not null,
destination text not null,
duration int not null,
carrier text not null,
max_seat int not null,
pass_count int not null
);
INSERT INTO flights VALUES(1,'DFW','ORD',165,'AA',60,58);
INSERT INTO flights VALUES(2,'EWR','IAH',227,'B6',50,49);
INSERT INTO flights VALUES(3,'JFK','MIA',160,'F9',55,54);
INSERT INTO flights VALUES(4,'JFK','BQK',300,'AA',65,65);
INSERT INTO flights VALUES(5,'EWR','ORD',150,'MQ',60,60);
INSERT INTO flights VALUES(6,'EWR','FLL',158,'FL',50,50);
INSERT INTO flights VALUES(7,'LGA','DFW',257,'AA',45,45);
INSERT INTO flights VALUES(8,'ORD','AMS',450,'9E',36,30);
INSERT INTO flights VALUES(9,'LGA','FLL',250,'UA',40,37);
INSERT INTO flights VALUES(10,'DFW','MIA',100,'WN',55,55);
CREATE TABLE passengers (
name text not null, 
carrier text not null,
date int not null,
origin text not null,
destination text not null,
flight_id int not null
);
INSERT INTO passengers VALUES('Gabriella N.','AA','10/11/21','DFW','ORD',1);
INSERT INTO passengers VALUES('Samaria P.','B6','10/20/21','EWR','IAH',2);
INSERT INTO passengers VALUES('Quinton P.','F9','10/12/21','JFK','MIA',3);
INSERT INTO passengers VALUES('Journey W.','AA','10/23/21','JFK','BQK',4);
INSERT INTO passengers VALUES('Patricia H.','MQ','10/22/21','EWR','ORD',5);
INSERT INTO passengers VALUES('Anthony D.','FL','10/12/21','EWR','FLL',6);
INSERT INTO passengers VALUES('Tiffany R.','FL','10/21/21','EWR','FLL',7);
INSERT INTO passengers VALUES('Kaila G.','9E','10/12/21','ORD','AMS',8);
INSERT INTO passengers VALUES('Deora W. ','AA','10/23/21','LGA','FLL',9);
INSERT INTO passengers VALUES('Jasmine P.','FL','10/21/21','DFW','MIA',10);
COMMIT;
