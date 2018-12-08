/* disable key check */

PRAGMA foreign_keys = OFF;



/* InventoryItem         */

INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (1,'Ram','hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie',73,'true','enim in');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (2,'Honda','vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at',55,'false','blandit');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (3,'Hyundai','rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum',16,'true','aliquam convallis');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (4,'Pontiac','vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper',3,'true','pellentesque at');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (5,'Hummer','interdum venenatis turpis enim blandit mi in porttitor pede justo eu',66,'false','duis ac');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (6,'Mitsubishi','vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac',17,'true','interdum eu');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (7,'Mercury','rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet',61,'false','quam');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (8,'Oldsmobile','cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend',31,'true','aliquet');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (9,'GMC','risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum',45,'true','vel nisl');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (10,'Dodge','consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus',77,'false','eget');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (11,'Dodge','donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper',12,'false','commodo');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (12,'Hyundai','porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit',7,'true','turpis');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (13,'Pontiac','hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat',49,'false','nisl duis');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (14,'Subaru','in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut',62,'true','quam pharetra');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (15,'Hyundai','in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra',89,'false','eu magna');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (16,'Chevrolet','eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus',60,'false','magnis');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (17,'Porsche','ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus',59,'false','justo sollicitudin');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (18,'Chevrolet','eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl',33,'true','molestie');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (19,'Honda','luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a',98,'false','aliquam');
INSERT INTO InventoryItem(id,name,details,weight,isPerishable,type) VALUES (20,'Ford','posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor',85,'true','tellus nisi');

/* Location */

INSERT INTO Location(id,lat,long,address) VALUES (1,44.0088432,39.192149,'7 Bunker Hill Junction');
INSERT INTO Location(id,lat,long,address) VALUES (2,7.1801552,79.8842521,'3 Lyons Road');
INSERT INTO Location(id,lat,long,address) VALUES (3,60.0024341,30.2410163,'804 Gateway Lane');
INSERT INTO Location(id,lat,long,address) VALUES (4,32.433378,35.0843,'3 Merrick Park');
INSERT INTO Location(id,lat,long,address) VALUES (5,5.9840985,116.0761121,'447 Melvin Way');
INSERT INTO Location(id,lat,long,address) VALUES (6,-22.7106685,-43.5522256,'18051 Laurel Drive');
INSERT INTO Location(id,lat,long,address) VALUES (7,-9.5961614,119.5752764,'16 Artisan Center');
INSERT INTO Location(id,lat,long,address) VALUES (8,60.9794357,28.0853523,'99881 Havey Way');
INSERT INTO Location(id,lat,long,address) VALUES (9,49.902219,20.636949,'0 Marquette Center');
INSERT INTO Location(id,lat,long,address) VALUES (10,50.2135674,18.5396797,'52 Lukken Lane');
INSERT INTO Location(id,lat,long,address) VALUES (11,-13.3833585,-75.4361391,'03 Thompson Drive');
INSERT INTO Location(id,lat,long,address) VALUES (12,63.8223321,20.2753893,'8995 Lyons Alley');
INSERT INTO Location(id,lat,long,address) VALUES (13,59.0842105,159.9541642,'639 Towne Park');
INSERT INTO Location(id,lat,long,address) VALUES (14,11.3410027,-14.935965,'13912 Sheridan Terrace');
INSERT INTO Location(id,lat,long,address) VALUES (15,33.5041035,11.0881494,'5868 Oneill Center');
INSERT INTO Location(id,lat,long,address) VALUES (16,48.8255395,16.8482236,'068 Messerschmidt Avenue');
INSERT INTO Location(id,lat,long,address) VALUES (17,-2.8429633,33.0817144,'445 Shopko Lane');
INSERT INTO Location(id,lat,long,address) VALUES (18,-7.6378396,107.728092,'275 Coleman Pass');
INSERT INTO Location(id,lat,long,address) VALUES (19,31.4153241,121.2288833,'71816 Tennessee Road');
INSERT INTO Location(id,lat,long,address) VALUES (20,5.61455,7.81191,'54204 Hoffman Park');

/* Mission */

INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (1,'3/7/2018','in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat',1);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (2,'8/23/2018','turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc',2);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (3,'12/10/2017','erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis',3);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (4,'2/18/2018','volutpat quam pede lobortis ligula sit amet eleifend pede libero quis',4);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (5,'7/30/2018','amet diam in magna bibendum imperdiet nullam orci pede venenatis',5);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (6,'6/21/2018','nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim',6);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (7,'1/6/2018','massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in',7);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (8,'5/7/2018','duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh',8);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (9,'11/11/2018','ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis',9);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (10,'7/18/2018','eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat',10);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (11,'6/15/2018','accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae',11);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (12,'9/4/2018','libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus',12);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (13,'6/13/2018','mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque',13);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (14,'11/26/2018','enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue',14);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (15,'7/15/2018','leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien',15);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (16,'7/21/2018','ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel',16);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (17,'6/25/2018','nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia',17);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (18,'6/3/2018','phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin',18);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (19,'3/10/2018','sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et',19);
INSERT INTO Mission(id,dateCreated,details,createdBy) VALUES (20,'8/24/2018','integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo',20);


/* MissionInventory */

INSERT INTO MissionInventory(id,missionID,itemID) VALUES (1,1,1);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (2,2,2);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (3,3,3);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (4,4,4);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (5,5,5);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (6,6,6);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (7,7,7);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (8,8,8);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (9,9,9);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (10,10,10);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (11,11,11);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (12,12,12);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (13,13,13);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (14,14,14);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (15,15,15);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (16,16,16);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (17,17,17);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (18,18,18);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (19,19,19);
INSERT INTO MissionInventory(id,missionID,itemID) VALUES (20,20,20);

/* MissionRequests */

INSERT INTO MissionRequests(id,missionID,requestID) VALUES (1,1,1);
INSERT INTO MissionRequests(id,missionID,requestID) VALUES (2,2,2);
INSERT INTO MissionRequests(id,missionID,requestID) VALUES (3,3,3);
INSERT INTO MissionRequests(id,missionID,requestID) VALUES (4,4,4);
INSERT INTO MissionRequests(id,missionID,requestID) VALUES (5,5,5);
INSERT INTO MissionRequests(id,missionID,requestID) VALUES (6,6,6);
INSERT INTO MissionRequests(id,missionID,requestID) VALUES (7,7,7);
INSERT INTO MissionRequests(id,missionID,requestID) VALUES (8,8,8);
INSERT INTO MissionRequests(id,missionID,requestID) VALUES (9,9,9);
INSERT INTO MissionRequests(id,missionID,requestID) VALUES (10,10,10);



/* MissionStatuses */

INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (1,1,1);
INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (2,2,2);
INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (3,3,3);
INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (4,4,4);
INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (5,5,5);
INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (6,6,6);
INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (7,7,7);
INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (8,8,8);
INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (9,9,9);
INSERT INTO MissionStatuses(id,missionID,statusID) VALUES (10,10,10);


/* OperationsChief */

INSERT INTO OperationsChief(id,rank,specialty,userID) VALUES (1,'Aquamarine','Khaki',1);
INSERT INTO OperationsChief(id,rank,specialty,userID) VALUES (2,'Green','Blue',2);
INSERT INTO OperationsChief(id,rank,specialty,userID) VALUES (3,'Goldenrod','Puce',3);
INSERT INTO OperationsChief(id,rank,specialty,userID) VALUES (4,'Violet','Crimson',4);
INSERT INTO OperationsChief(id,rank,specialty,userID) VALUES (5,'Pink','Khaki',5);


/* Rescuer */

INSERT INTO Rescuer(id,type,userID) VALUES (1,'Violet',6);
INSERT INTO Rescuer(id,type,userID) VALUES (2,'Blue',7);
INSERT INTO Rescuer(id,type,userID) VALUES (3,'Turquoise',8);
INSERT INTO Rescuer(id,type,userID) VALUES (4,'Teal',9);
INSERT INTO Rescuer(id,type,userID) VALUES (5,'Khaki',10);
INSERT INTO Rescuer(id,type,userID) VALUES (6,'Violet',11);
INSERT INTO Rescuer(id,type,userID) VALUES (7,'Turquoise',12);
INSERT INTO Rescuer(id,type,userID) VALUES (8,'Khaki',13);

/* RescuerRequest */

INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (1,'12/10/2017','Khaki','Seamless',1,1);
INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (2,'7/29/2018','Pink','well-modulated',2,2);
INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (3,'2/15/2018','Yellow','model',3,3);
INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (4,'5/18/2018','Pink','Persevering',4,4);
INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (5,'1/1/2018','Indigo','uniform',5,5);
INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (6,'9/12/2018','Fuscia','methodology',6,6);
INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (7,'12/14/2017','Teal','Managed',7,7);
INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (8,'6/12/2018','Purple','Reduced',8,8);
INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (9,'5/17/2018','Pink','3rd generation',9,9);
INSERT INTO RescueRequest(id,date,severity,details,requesterID,locationID) VALUES (10,'6/27/2018','Pink','Upgradable',10,10);

/* RescueRequester */

INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (1,'Cristiano Cotta','150-887-8347','Tate Tranfield','622-502-3531','Indigo');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (2,'Levy Wrennall','567-643-7856','Evita Hirth','791-912-8711','Indigo');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (3,'Lanae Story','315-378-4851','Westleigh Marham','719-558-3123','Green');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (4,'Christabel Slemming','906-845-3812','Myles Crease','904-972-3387','Green');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (5,'Jinny Guilford','208-451-4606','Nicolai Kopfen','384-946-0783','Maroon');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (6,'Whitby Doogan','802-162-1559','Helena Lorey','214-847-4034','Indigo');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (7,'Juliet Hembry','657-730-5792','Dacey Coathup','510-550-8967','Pink');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (8,'Stephani Parry','482-103-6114','Bettye Ryott','353-921-5789','Turquoise');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (9,'Eldredge Balme','972-676-1089','Doria Caff','845-641-5382','Green');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (10,'Lani Bielfelt','987-375-1960','Tammie Maccrae','723-347-4978','Goldenrod');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (11,'Sharlene Maddocks','528-786-8185','Yves Pollins','859-447-7108','Crimson');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (12,'Burlie Halladay','519-811-9839','Duane Delleschi','201-246-0653','Pink');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (13,'Chrissy Cicullo','977-343-5958','Elnar O''Doireidh','206-644-5890','Green');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (14,'Ludwig Peaurt','118-549-4932','Thaxter Rhodef','646-686-1066','Puce');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (15,'Noella MacFaul','152-987-6211','Kurtis Morten','754-249-1635','Goldenrod');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (16,'Sharity Tyer','847-453-0656','Gene Lunny','512-723-3802','Fuscia');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (17,'Aloin Charles','932-165-7424','Rosemary Greggor','883-996-6951','Mauv');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (18,'Sigfried Pavis','788-216-2219','Abra Whorlton','313-198-7380','Teal');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (19,'Rivalee Jerrams','315-276-9925','Lebbie Shurmore','513-588-5504','Pink');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (20,'Shay Hebblewhite','238-489-2200','Fabio MacBrearty','406-389-4185','Aquamarine');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (21,'Merilee Oakman','200-799-9722','Francine Hulcoop','659-184-7197','Teal');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (22,'Felita Snoxill','493-940-8366','Ray Gunney','703-585-1322','Fuscia');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (23,'Aubrey De Moreno','838-744-0191','Kerk Scrimshire','259-794-9684','Maroon');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (24,'Hilary Fosten','699-247-9610','Homerus Clowley','873-719-7919','Crimson');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (25,'Alexa Skellen','484-799-8153','Gerome Slaght','145-862-9676','Turquoise');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (26,'Cthrine Attkins','470-330-1550','Trudi Corradeschi','640-481-9252','Khaki');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (27,'Ezekiel Pharoah','274-522-6483','Myrlene Vannuccini','277-534-1766','Red');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (28,'Margot Morden','325-423-8502','Ward Weal','555-338-0274','Indigo');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (29,'Godiva Crowdson','498-819-8355','Erick Van der Mark','470-799-5285','Puce');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (30,'Cherilynn Brosetti','998-464-9782','Stephan Bostick','966-896-0105','Crimson');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (31,'Gleda Itzhaiek','402-744-6220','Hercules Von Der Empten','422-502-6745','Green');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (32,'Marve Michelet','950-637-3813','Harmonia Eagan','603-328-3399','Aquamarine');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (33,'Loleta Joron','865-204-1787','Erv Chastel','890-358-7047','Puce');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (34,'Sholom Noah','844-345-6717','Brew Brason','473-788-0126','Orange');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (35,'Granger Byne','324-833-1701','Kliment MacCrachen','694-896-2828','Red');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (36,'Nelia Sultana','329-896-5415','Redd Polglaze','765-542-2108','Pink');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (37,'Woodrow Bruckshaw','953-212-1296','Linc Kayser','256-215-7483','Turquoise');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (38,'Glendon Ivashinnikov','999-413-5172','Ky MacLure','880-618-2080','Purple');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (39,'Glynda Huddle','897-762-9742','Christian Landers','296-129-3300','Purple');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (40,'Simonette Lindgren','880-324-8592','Dolores Osgordby','478-241-5449','Teal');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (41,'Rivy Tidy','775-641-0253','Cornie Diegan','728-334-8706','Aquamarine');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (42,'Norbert Polgreen','874-152-8046','Sosanna Lanon','630-289-7807','Puce');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (43,'Philipa Haslen','778-206-6892','Claybourne Airton','578-858-6631','Turquoise');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (44,'Astrid Karpychev','478-841-8687','Katee Riseam','599-791-3073','Orange');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (45,'Sara-ann Skelding','758-575-7224','Rollo Pudden','937-280-5742','Purple');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (46,'Minna Marcoolyn','804-579-7849','Hubie Flux','797-383-6019','Aquamarine');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (47,'Joletta Nisbith','179-600-2847','Auberta Hazelton','798-991-5356','Yellow');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (48,'Abelard Desquesnes','325-156-1436','Benjie Bullus','876-883-3311','Blue');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (49,'Reinhold Nicklin','620-760-8918','Etta Emtage','906-575-2337','Mauv');
INSERT INTO RescueRequester(id,name,phoneNumber,emergencyContactName,emergencyContactNum,emergencyContactRelationship) VALUES (50,'Dehlia Longo','180-382-2479','Marie-jeanne Garard','732-557-4964','Mauv');

/* RescuerMissionAssignments */

INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (1,6,1);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (2,7,2);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (3,8,3);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (4,9,4);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (5,10,5);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (6,11,6);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (7,12,7);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (8,13,8);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (9,10,9);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (10,10,10);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (11,6,11);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (12,6,12);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (13,7,13);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (14,9,14);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (15,7,15);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (16,13,16);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (17,13,17);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (18,6,18);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (19,6,20);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (20,8,19);
INSERT INTO RescuerMissionAssignments(id,rescuerID,missionID) VALUES (21,10,20);


/* Status */

INSERT INTO Status(id,dateUpdated,status,notes) VALUES (1,'5/16/2018','service-desk','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.');
INSERT INTO Status(id,dateUpdated,status,notes) VALUES (2,'12/25/2017','secondary','Nullam molestie nibh in lectus.');
INSERT INTO Status(id,dateUpdated,status,notes) VALUES (3,'1/28/2018','Centralized','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.');
INSERT INTO Status(id,dateUpdated,status,notes) VALUES (4,'4/18/2018','Virtual','Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO Status(id,dateUpdated,status,notes) VALUES (5,'6/2/2018','local','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO Status(id,dateUpdated,status,notes) VALUES (6,'3/7/2018','policy','Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.');
INSERT INTO Status(id,dateUpdated,status,notes) VALUES (7,'4/2/2018','access','Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.');
INSERT INTO Status(id,dateUpdated,status,notes) VALUES (8,'10/6/2018','application','Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.');
INSERT INTO Status(id,dateUpdated,status,notes) VALUES (9,'4/8/2018','Profound','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.');
INSERT INTO Status(id,dateUpdated,status,notes) VALUES (10,'3/21/2018','open system','Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');


/* User */

INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (1,'Rosabel Heeks','true','911-829-1309','rheeks0@oaic.gov.au','true',1);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (2,'Marinna Fricke','true','758-814-6864','mfricke1@stanford.edu','false',2);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (3,'Celesta Swinnerton','true','271-877-3791','cswinnerton2@feedburner.com','false',3);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (4,'Malcolm Skip','false','242-332-5175','mskip3@businessinsider.com','true',4);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (5,'Tommie Sharville','true','468-118-0700','tsharville4@admin.ch','false',5);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (6,'Rosabel Hunnaball','true','217-317-9224','rhunnaball5@weibo.com','true',6);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (7,'Ekaterina Rouzet','true','325-823-6326','erouzet6@ucoz.com','true',7);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (8,'Jamil Kliche','false','345-778-3681','jkliche7@godaddy.com','false',8);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (9,'Dick Horlick','true','863-221-2355','dhorlick8@tinyurl.com','true',9);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (10,'Vidovic Caffery','false','451-241-7937','vcaffery9@live.com','true',10);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (11,'Savina Clows','true','581-742-0576','sclowsa@washington.edu','false',11);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (12,'Toddy Duddan','false','661-844-6661','tduddanb@bandcamp.com','false',12);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (13,'Kerstin Milby','false','747-201-0208','kmilbyc@tripod.com','false',13);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (14,'Simone Pfleger','false','642-880-2042','spflegerd@adobe.com','false',14);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (15,'Paloma Shorten','false','838-373-9965','pshortene@dedecms.com','false',15);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (16,'Danella Itchingham','false','344-229-6489','ditchinghamf@ca.gov','true',16);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (17,'Melony Hordell','false','869-123-5623','mhordellg@house.gov','true',17);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (18,'Leticia Dowears','true','787-959-3466','ldowearsh@diigo.com','false',18);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (19,'Evelyn Sketcher','false','291-737-5711','esketcheri@mozilla.com','false',19);
INSERT INTO User(id,name,isPaid,phoneNumber,email,isAvailable,locationID) VALUES (20,'Tammie Castro','false','394-825-6660','tcastroj@wired.com','false',20);


/* enable key check */

PRAGMA foreign_keys = ON;
