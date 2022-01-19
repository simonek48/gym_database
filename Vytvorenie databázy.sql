CREATE DATABASE `gym_system_database`;
USE `gym_system_database`;

CREATE TABLE `membership_types` (
  `membership_id` int(11) AUTO_INCREMENT,
  `membership_length_days` int(11),
  `membership_price` float,
  PRIMARY KEY (`membership_id`)
);

CREATE TABLE `gym_coaches` (
  `coach_id` int(11),
  `expertise` varchar(255),
  PRIMARY KEY (`coach_id`)
);

CREATE TABLE `users` (
  `user_id` int(11) AUTO_INCREMENT,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `membership_id` int(11),
  `coach_id` int(11),
  `email` varchar(255),
  `password` varchar(255),
  `user_type` varchar(255),
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (`membership_id`) REFERENCES `membership_types` (`membership_id`),
  FOREIGN KEY (`coach_id`) REFERENCES `gym_coaches` (`coach_id`)
);

CREATE TABLE `gym` (
  `gym_id` int(11) AUTO_INCREMENT,
  `name` varchar(255),
  `address` varchar(255),
  PRIMARY KEY (`gym_id`)
);

CREATE TABLE `payments` (
  `payment_id` int(11) AUTO_INCREMENT,
  `user_id` int(11),
  `payment_amount` FLOAT,
  `payment_date` date,
  PRIMARY KEY (`payment_id`),
   FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
);

CREATE TABLE `training_session` (
  `session_id` int(11) AUTO_INCREMENT,
  `user_id` int(11),
  `coach_id` int(11),
  `training_start` datetime,
  `training_end` datetime,
  `gym_id` int(11),
  PRIMARY KEY (`session_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  FOREIGN KEY (`coach_id`) REFERENCES `gym_coaches` (`coach_id`),
  FOREIGN KEY (`gym_id`) REFERENCES `gym` (`gym_id`)
);
