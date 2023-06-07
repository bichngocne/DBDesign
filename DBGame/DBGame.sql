CREATE TABLE `Figures` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `description` text,
  `id_attribute` int,
  `starts` int,
  `id_gender` int,
  `image` varchar(255),
  `id_area` int
);

CREATE TABLE `Areas` (
  `id` integer PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `Attributes` (
  `id` integer PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `Weapons` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `id_weapon_type` int
);

CREATE TABLE `Weapon_type` (
  `id` integer PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `Genders` (
  `id` integer PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `Skills` (
  `id` integer PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `Figures_weapons` (
  `id` integer PRIMARY KEY,
  `id_figure` int,
  `id_weapon` int
);

CREATE TABLE `Figures_skills` (
  `id` integer PRIMARY KEY,
  `id_figure` int,
  `id_skill` int
);

ALTER TABLE `Figures` ADD FOREIGN KEY (`id_area`) REFERENCES `Areas` (`id`);

ALTER TABLE `Figures` ADD FOREIGN KEY (`id_gender`) REFERENCES `Genders` (`id`);

ALTER TABLE `Figures` ADD FOREIGN KEY (`id_attribute`) REFERENCES `Attributes` (`id`);

ALTER TABLE `Weapons` ADD FOREIGN KEY (`id_weapon_type`) REFERENCES `Weapon_type` (`id`);

CREATE TABLE `Figures_weapons_Figures` (
  `Figures_weapons_id_figure` int,
  `Figures_id` integer,
  PRIMARY KEY (`Figures_weapons_id_figure`, `Figures_id`)
);

ALTER TABLE `Figures_weapons_Figures` ADD FOREIGN KEY (`Figures_weapons_id_figure`) REFERENCES `Figures_weapons` (`id_figure`);

ALTER TABLE `Figures_weapons_Figures` ADD FOREIGN KEY (`Figures_id`) REFERENCES `Figures` (`id`);


CREATE TABLE `Figures_weapons_Weapons` (
  `Figures_weapons_id_weapon` int,
  `Weapons_id` integer,
  PRIMARY KEY (`Figures_weapons_id_weapon`, `Weapons_id`)
);

ALTER TABLE `Figures_weapons_Weapons` ADD FOREIGN KEY (`Figures_weapons_id_weapon`) REFERENCES `Figures_weapons` (`id_weapon`);

ALTER TABLE `Figures_weapons_Weapons` ADD FOREIGN KEY (`Weapons_id`) REFERENCES `Weapons` (`id`);


CREATE TABLE `Figures_skills_Figures` (
  `Figures_skills_id_figure` int,
  `Figures_id` integer,
  PRIMARY KEY (`Figures_skills_id_figure`, `Figures_id`)
);

ALTER TABLE `Figures_skills_Figures` ADD FOREIGN KEY (`Figures_skills_id_figure`) REFERENCES `Figures_skills` (`id_figure`);

ALTER TABLE `Figures_skills_Figures` ADD FOREIGN KEY (`Figures_id`) REFERENCES `Figures` (`id`);


CREATE TABLE `Figures_skills_Skills` (
  `Figures_skills_id_skill` int,
  `Skills_id` integer,
  PRIMARY KEY (`Figures_skills_id_skill`, `Skills_id`)
);

ALTER TABLE `Figures_skills_Skills` ADD FOREIGN KEY (`Figures_skills_id_skill`) REFERENCES `Figures_skills` (`id_skill`);

ALTER TABLE `Figures_skills_Skills` ADD FOREIGN KEY (`Skills_id`) REFERENCES `Skills` (`id`);

