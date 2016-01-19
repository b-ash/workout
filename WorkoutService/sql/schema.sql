CREATE DATABASE IF NOT EXISTS Workout;

USE Workout;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT KEY,
  `name` VARCHAR(64) NOT NULL,
  `code` VARCHAR(255) NOT NULL,
  UNIQUE (`name`)
);

CREATE TABLE IF NOT EXISTS `routine` (
  `id` INT NOT NULL AUTO_INCREMENT KEY,
  `name` VARCHAR(64) NOT NULL,
  `description` VARCHAR(255) NULL,
  `creator` INT NOT NULL,
  `created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`creator`) REFERENCES `user`(`id`)
);

CREATE TABLE IF NOT EXISTS `exerciseType` (
  `id` INT NOT NULL AUTO_INCREMENT KEY,
  `name` VARCHAR(16) NOT NULL
);

CREATE TABLE IF NOT EXISTS `exercise` (
  `id` INT NOT NULL AUTO_INCREMENT KEY,
  `name` VARCHAR(64) NOT NULL,
  `type` INT NOT NULL,
  `description` VARCHAR(255) NULL,
  `created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`type`) REFERENCES `exerciseType`(`id`)
);

CREATE TABLE IF NOT EXISTS `routineExercise` (
  `routineId` INT NOT NULL,
  `exerciseId` INT NOT NULL,
  `position` INT NOT NULL,
  PRIMARY KEY (`routineId`, `exerciseId`, `position`),
  FOREIGN KEY (`routineId`) REFERENCES `routine`(`id`),
  FOREIGN KEY (`exerciseId`) REFERENCES `exercise`(`id`)
);

CREATE TABLE IF NOT EXISTS `set` (
  `id` INT NOT NULL AUTO_INCREMENT KEY,
  `userId` INT NOT NULL,
  `routineId` INT NOT NULL,
  `exerciseId` INT NOT NULL,
  `position` INT NOT NULL,
  `reps` INT NOT NULL,
  `weight` FLOAT DEFAULT 0,
  `notes` VARCHAR(255) NULL,
  `dateInt` INT NOT NULL,
  FOREIGN KEY (`userId`) REFERENCES `user`(`id`),
  FOREIGN KEY (`routineId`) REFERENCES `routine`(`id`),
  FOREIGN KEY (`exerciseId`) REFERENCES `exercise`(`id`),
  INDEX(`userId`, `routineId`, `exerciseId`)
);
