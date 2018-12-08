BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `User` (
	`id`	INT NOT NULL,
	`name`	VARCHAR ( 45 ),
	`isPaid`	VARCHAR ( 45 ),
	`phoneNumber`	VARCHAR ( 45 ),
	`email`	VARCHAR ( 45 ),
	`isAvailable`	VARCHAR ( 45 ),
	`locationID`	INT,
	PRIMARY KEY(`id`),
	CONSTRAINT `locationID` FOREIGN KEY(`locationID`) REFERENCES `Location`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE IF NOT EXISTS `Status` (
	`id`	INT NOT NULL,
	`dateUpdated`	DATETIME NOT NULL,
	`status`	VARCHAR ( 45 ),
	`notes`	VARCHAR ( 45 ),
	PRIMARY KEY(`id`)
);
CREATE TABLE IF NOT EXISTS `RescuerMissionAssignments` (
	`id`	INT NOT NULL,
	`rescuerID`	INT,
	`missionID`	INT,
	CONSTRAINT `rm_rescurerID` FOREIGN KEY(`rescuerID`) REFERENCES `Rescuer`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	PRIMARY KEY(`id`),
	CONSTRAINT `rm_missionID` FOREIGN KEY(`missionID`) REFERENCES `Mission`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE IF NOT EXISTS `Rescuer` (
	`id`	INT NOT NULL,
	`type`	VARCHAR ( 45 ),
	`userID`	INT,
	PRIMARY KEY(`id`),
	CONSTRAINT `userID` FOREIGN KEY(`userID`) REFERENCES `User`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE IF NOT EXISTS `RescueRequester` (
	`id`	INT NOT NULL,
	`name`	VARCHAR ( 45 ),
	`phoneNumber`	VARCHAR ( 45 ),
	`emergencyContactName`	VARCHAR ( 45 ),
	`emergencyContactNum`	VARCHAR ( 45 ),
	`emergencyContactRelationship`	VARCHAR ( 45 ),
	PRIMARY KEY(`id`)
);
CREATE TABLE IF NOT EXISTS `RescueRequest` (
	`id`	INT NOT NULL,
	`date`	DATETIME,
	`severity`	VARCHAR ( 45 ),
	`details`	VARCHAR ( 45 ),
	`requesterID`	INT,
	`locationID`	INT,
	CONSTRAINT `req_locationID` FOREIGN KEY(`locationID`) REFERENCES `Location`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	PRIMARY KEY(`id`),
	CONSTRAINT `rescueRequesterID` FOREIGN KEY(`requesterID`) REFERENCES `RescueRequester`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE IF NOT EXISTS `OperationsChief` (
	`id`	INT NOT NULL,
	`rank`	VARCHAR ( 45 ),
	`specialty`	VARCHAR ( 45 ),
	`userID`	INT,
	CONSTRAINT `op_userID` FOREIGN KEY(`userID`) REFERENCES `User`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	PRIMARY KEY(`id`)
);
CREATE TABLE IF NOT EXISTS `MissionStatuses` (
	`id`	INT NOT NULL,
	`missionID`	INT,
	`statusID`	INT,
	CONSTRAINT `ms_statusID` FOREIGN KEY(`statusID`) REFERENCES `Status`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `ms_missionID` FOREIGN KEY(`missionID`) REFERENCES `Mission`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	PRIMARY KEY(`id`)
);
CREATE TABLE IF NOT EXISTS `MissionRequests` (
	`id`	INT NOT NULL,
	`missionID`	INT,
	`requestID`	INT,
	PRIMARY KEY(`id`),
	CONSTRAINT `missionID` FOREIGN KEY(`missionID`) REFERENCES `Mission`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `requestID` FOREIGN KEY(`requestID`) REFERENCES `RescueRequest`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE IF NOT EXISTS `MissionInventory` (
	`id`	INT NOT NULL,
	`missionID`	INT,
	`itemID`	INT,
	CONSTRAINT `mi_inventoryID` FOREIGN KEY(`itemID`) REFERENCES `InventoryItem`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	PRIMARY KEY(`id`),
	CONSTRAINT `mi_missionID` FOREIGN KEY(`missionID`) REFERENCES `Mission`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE IF NOT EXISTS `Mission` (
	`id`	INT NOT NULL,
	`dateCreated`	DATETIME,
	`details`	VARCHAR ( 45 ),
	`createdBy`	INT,
	CONSTRAINT `createdBy` FOREIGN KEY(`createdBy`) REFERENCES `OperationsChief`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	PRIMARY KEY(`id`)
);
CREATE TABLE IF NOT EXISTS `Location` (
	`id`	INT NOT NULL,
	`lat`	FLOAT,
	`long`	FLOAT,
	`address`	VARCHAR ( 45 ),
	PRIMARY KEY(`id`)
);
CREATE TABLE IF NOT EXISTS `InventoryItem` (
	`id`	INT NOT NULL,
	`name`	VARCHAR ( 45 ),
	`details`	VARCHAR ( 45 ),
	`weight`	VARCHAR ( 45 ),
	`isPerishable`	TINYINT,
	`type`	VARCHAR ( 45 ),
	PRIMARY KEY(`id`)
);
CREATE INDEX IF NOT EXISTS `userID_idx` ON `Rescuer` (
	`userID`	ASC
);
CREATE INDEX IF NOT EXISTS `statusID_idx` ON `MissionStatuses` (
	`statusID`	ASC
);
CREATE INDEX IF NOT EXISTS `rescurerID_idx` ON `RescuerMissionAssignments` (
	`rescuerID`	ASC
);
CREATE INDEX IF NOT EXISTS `rescueRequesterID_idx` ON `RescueRequest` (
	`requesterID`	ASC
);
CREATE INDEX IF NOT EXISTS `requestID_idx` ON `MissionRequests` (
	`requestID`	ASC
);
CREATE INDEX IF NOT EXISTS `missionID_idx` ON `MissionRequests` (
	`missionID`	ASC
);
CREATE INDEX IF NOT EXISTS `locationID_idx` ON `User` (
	`locationID`	ASC
);
CREATE INDEX IF NOT EXISTS `inventoryID_idx` ON `MissionInventory` (
	`itemID`	ASC
);
CREATE INDEX IF NOT EXISTS `chiefID_idx` ON `Mission` (
	`createdBy`	ASC
);
COMMIT;
