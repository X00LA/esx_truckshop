USE`es_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_truckdealer', 'LKW Händler', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_truckdealer', 'LKW Händler', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('truckdealer', 'LKW Händler')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('truckdealer', 0, 'recruit', 'Azubi', 10, '{}', '{}'),
	('truckdealer', 1, 'novice', 'Verkäufer/in', 25, '{}', '{}'),
	('truckdealer', 2, 'experienced', 'Verkaufsleiter/in', 40, '{}', '{}'),
	('truckdealer', 3, 'boss', 'Inhaber/in', 0, '{}', '{}')
;

CREATE TABLE IF NOT EXISTS `truckdealer_vehicles` (
	`id` int NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int NOT NULL,

	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `truck_sold` (
	`client` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`plate` VARCHAR(255) NOT NULL,
	`soldby` VARCHAR(255) NOT NULL,
	`date` VARCHAR(255) NOT NULL,

	PRIMARY KEY(`plate`)
);


CREATE TABLE IF NOT EXISTS `owned_vehicles` (
	`owner` VARCHAR(255) NOT NULL,
	`plate` VARCHAR(12) NOT NULL,
	`vehicle` longtext,
	`type` VARCHAR(255) NOT NULL DEFAULT 'car',
	`job` VARCHAR(255) NULL DEFAULT NULL,
	`stored` TINYINT(1) NOT NULL DEFAULT '0',

	PRIMARY KEY(`plate`)
);


CREATE TABLE IF NOT EXISTS `rented_trucks` (
	`vehicle` VARCHAR(255) NOT NULL,
	`plate` VARCHAR(12) NOT NULL,
	`player_name` VARCHAR(255) NOT NULL,
	`base_price` int NOT NULL,
	`rent_price` int NOT NULL,
	`owner` VARCHAR(255) NOT NULL,

	PRIMARY KEY(`plate`)
);


CREATE TABLE IF NOT EXISTS `truck_categories` (
	`name` VARCHAR(255) NOT NULL,
	`label` VARCHAR(255) NOT NULL,

	PRIMARY KEY(`name`)
);


INSERT INTO `truck_categories`(name, label) VALUES
	('haul', 'Zugmaschinen'),
	('box', 'Koffer LKW'),
	('military', 'Militär LKW'),
	('work', 'Arbeits LKW'),
	('special', 'Spezial LKW'),
	('bus', 'Busse'),
	('utility', 'Sonder LKW'),
	('job', 'Job LKW'),
	('offroad',  'Geländegängige LKW')
;

CREATE TABLE IF NOT EXISTS `trucks` (
	`name` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`price` int NOT NULL,
	`category` VARCHAR(255) DEFAULT NULL,

	PRIMARY KEY(`model`)
);


INSERT INTO `trucks` (name, model, price, category) VALUES
	('Hauler', 'hauler', 1300000, 'haul'),
	('Hauler Custom', 'hauler2', 1400000, 'haul'),
	('Packer', 'packer', 1525000, 'haul'),
	('Phantom', 'phantom', 1125000, 'haul'),
	('Phantom Custom', 'phantom3', 1225000, 'haul'),

	('Benson', 'benson', 426000, 'box'),
	('Mule', 'mule', 37000, 'box'),
	('Mule', 'mule2', 37000, 'box'),
	('Mule Gepanzert', 'mule3', 143225, 'box'),
	('Mule Custom', 'mule4', 95760, 'box'),
	('Pounder', 'pounder', 320000, 'box'),
	('Pounder Custom', 'pounder2', 320530, 'box'),
	('Boxville', 'boxville', 210000, 'box'),
	('Boxville', 'boxville2', 59850, 'box'),
	('Boxville', 'boxville3', 59850, 'box'),
	('Boxville', 'boxville4', 59850, 'box'),

	('Flughafen Shuttle Bus', 'airbus', 500000, 'busses'),
	('Bus', 'bus', 500000, 'busses'),
	('Dashound', 'coach', 525000, 'busses'),
	('Festival Bus', 'pbus2', 1842050, 'busses'),
	('Leihwagen Shuttle Bus', 'rentalbus', 95600, 'busses'),
	('Tour Bus', 'tourbus', 95600, 'busses'),
	('Gefängnis Bus', 'pbus', 731500, 'busses'),
	
	('Mixer', 'mixer', 375000, 'work'),
	('Mixer', 'mixer2', 375000, 'work'),
	('Tipper', 'tiptruck', 325000, 'work'),
	('Tipper', 'tiptruck2', 325000, 'work'),
	('Schrott LKW', 'scrap', 275000, 'work'),
	('Rubble', 'rubble', 360000, 'work'),
	('Biff', 'biff', 360000, 'work'),

	('Contender', 'utillitruck3', 55000, 'utility'),
	('Cherry Picker', 'utillitruck2', 352000, 'utility'),
	('Utility LKW', 'utillitruck', 310000, 'utility'),
	('Wastelander', 'wastelander', 658350, 'utility'),
	('Brickade', 'brickade', 1100000, 'utility'),

	('Dune', 'rallytruck', 1300000, 'offroad'),

	('Vetir', 'vetir', 1630000, 'military'),
	('Scarab', 'scarab', 3076290, 'military'),
	('Terrorbyte', 'terbyte', 1375000, 'military'),
	('Barracks Semi', 'barracks2', 875000, 'military'),
	('Barracks', 'barracks3', 975000, 'military'),

	('Slam Truck', 'slamtruck', 1310000, 'special'),
	('Caddy', 'caddy2', 17500, 'special'),
	('Caddy', 'caddy3', 23900, 'special'),
	('Caddy', 'caddy', 18500, 'special'),
	('Stockade', 'stockade', 2240000, 'special'),
	('Stockade', 'stockade3', 2240000, 'special'),

	('Abschleppwagen', 'towtruck', 375000, 'job'),
	('Abschleppwagen', 'towtruck2', 192000, 'job'),
	('Rasenmähertraktor', 'mower', 3200, 'job'),
	('Gabelstapler', 'forklift', 42000, 'job'),
	('Fieldmaster', 'tractor3', 89000, 'job'),
	('Fieldmaster', 'tractor2', 89000, 'job'),
	('Flachbett LKW', 'flatbed', 382000, 'job'),
	('Trashmaster', 'trash2', 1369000, 'job'),
	('Gepanzerter Polizeitransporter', 'riot', 2460000, 'job'),
	('Feuerwehr LKW', 'firetruk', 3295000, 'job'),
	('Rettungswagen', 'ambulance', 92600, 'job')
;