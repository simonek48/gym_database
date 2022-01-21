/*4|1 dotaz nám vyberie používateľov ktorý mali tréning medzi určenými dátumami 
a zoradí nám ich podľa abecedy*/

SELECT u.user_id, u.first_name
FROM users u
JOIN training_session t  
ON u.user_id = t.user_id
WHERE t.training_start
BETWEEN '2022-01-06' AND '2022-01-08'
GROUP BY u.first_name;

/*4|2 dotaz vyberie email trénera ktorý mal tréning v databáze viac ako jeden krát*/
SELECT email 
FROM users u
JOIN training_session t 
ON u.coach_id = t.coach_id 
HAVING COUNT(t.coach_id) > 1;

/*5|1 dotaz vyberie id, meno, priezvisko používateľa ktorého permanentka stála maximálnu sumu*/
SELECT user_id, first_name, last_name 
FROM users u
JOIN membership_types m 
ON u.membership_id = m.membership_id
WHERE membership_length_days = (SELECT MAX(membership_length_days) FROM membership_types);

/*5|2 dotaz vyberie id, meno, priezvisko používateľa ktorý mal najskorší záznam tréningu v databáze*/
SELECT u.user_id, first_name, last_name 
FROM users u
JOIN training_session t
ON u.user_id = t.user_id 
WHERE training_start = (SELECT MIN(training_start) FROM training_session)