INSERT INTO `gym` (`gym_id`, `name`, `address`) VALUES
	(1, 'Elite gym', 'Raková 1536, 02351'),
	(2, 'LK fitness', 'Matičné namestie 1, 02201 Čadca'),
	(3, 'Iron fitness', 'Štúrová ulica 2273 Čadca');

INSERT INTO `gym_coaches` (`coach_id`, `expertise`) VALUES
	(1, 'Strength'),
	(2, 'Stamina'),
	(3, 'Fat loss');

INSERT INTO `membership_types` (`membership_id`, `membership_length_days`, `membership_price`) VALUES
	(1, 14, 20),
	(2, 30, 40),
	(3, 60, 70),
	(4, 90, 95);

INSERT INTO `payments` (`payment_id`, `user_id`, `payment_amount`, `payment_date`) VALUES
	(1, 1, 20, '2021-01-02'),
	(2, 2, 40, '2022-01-02'),
	(3, 4, 30, '2022-01-05'),
	(4, 2, 35, '2022-01-05'),
	(5, 4, 40, '2022-01-05'),
	(6, 6, 40, '2022-01-05'),
	(7, 9, 95, '2022-01-06'),
	(8, 11, 20, '2022-01-06'),
	(9, 9, 20, '2022-01-06'),
	(10, 13, 40, '2022-01-07');

INSERT INTO `training_session` (`session_id`, `user_id`, `coach_id`, `training_start`, `training_end`, `gym_id`) VALUES
	(1, 4, 2, '2022-01-05 08:30:40', '2022-01-05 09:30:00', 1),
	(2, 2, 3, '2022-01-06 12:59:37', '2022-01-06 14:00:09', 3),
	(3, 9, 1, '2022-01-07 16:10:00', '2022-01-07 17:11:05', 1),
	(4, 4, 2, '2022-01-07 18:02:14', '2022-01-07 19:02:25', 3),
	(5, 12, 1, '2022-01-08 13:02:14', '2022-01-08 13:59:16', 2);

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `membership_id`, `coach_id`, `email`, `password`, `user_type`) VALUES
	(1, 'Štefan', 'Burčák', 1, NULL, 'burcak@idk.com', 'pizosef098', 'basic user'),
	(2, 'Aleš', 'Zyta', 2, NULL, 'alesekzyta@idk.com', 'zyta9955', 'basic user'),
	(3, 'Pavlína', 'Trnková', NULL, 3, 'pavlinatrnkova@idk.com', 'trnkovaaaa9', 'coach'),
	(4, 'Igor', 'Bránica', 2, NULL, 'igorekbrana@idk.com', 'chlebasmastuacibulu546', 'basic user'),
	(5, 'Peter', 'Polesník', NULL, NULL, 'polesnakjeden@idk.com', 'asffs495', 'employee'),
	(6, 'Gréta', 'Efezová', 2, NULL, 'gretaefez@idk.com', 'efezkagreta9', 'basic user'),
	(7, 'Igor', 'Hronský', NULL, 2, 'iginohronsky@idk.com', 'igino546', 'coach'),
	(8, 'František', 'Láš', NULL, NULL, 'ferolas@idk.com', 'ferkolaso84', 'employee'),
	(9, 'Karol', 'Petrovský', 4, NULL, 'petrovsky095@idk.com', 'petr95', 'basic user'),
	(10, 'Pavlína', 'Chrenská', NULL, NULL, 'pavlachrenska@idk.com', 'chren555', 'employee'),
	(11, 'Peter', 'Popluhár', 1, NULL, 'peterpopp08@idk.com', 'slavnypeter065', 'basic user'),
	(12, 'Šimon', 'Chrenský', 1, NULL, 'simonchrensky@idk.com', 'chren8952', 'basic user'),
	(13, 'Štefan', 'Petrovský', 2, NULL, 'stefanpetro@idk.com', 'petro669', 'basic user'),
	(14, 'Jozef', 'Peteraj', NULL, 1, 'jozefpeteraj@idk.com', 'peterajik578', 'coach');
