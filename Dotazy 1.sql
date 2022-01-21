/*1|1 dotaz vyberie všetky dátumy platieb kde je cena viac ako 20*2*/
SELECT payment_date 
FROM payments 
WHERE payment_amount > (20*2);

/*1|2 dotaz urobí priemer z platieb tabulky payments*/
SELECT AVG(payment_amount) AS average_payment 
FROM payments;

/*1|3 dotaz vyberie z tabuľky users a zoradí podľa priezvísk vzostupne*/
SELECT * 
FROM users 
ORDER BY last_name 
ASC;

/*1|4 dotaz vypočíta kolko ľudí s menom Peter sú v databáze*/
SELECT COUNT(*) AS number_of_people 
FROM users 
WHERE first_name 
IN('Peter');

/*2|1 dotaz vyberie z tabuľky users všetkých ktorí majú user_id väščie ako 5 
a membership_id rovné 2 alebo membership_id rovné 4*/
SELECT * 
FROM users 
WHERE user_id > 5 
AND membership_id = 2 
OR membership_id = 4;

/*2|2 dotaz zobrazí id používateľov ktorý neplatili medzi zadanými dátumami*/
SELECT user_id 
FROM payments 
WHERE payment_date NOT
BETWEEN '2022-01-03' AND '2022-01-05';

/*2|3 dotaz vyberie ľudí ktorí majú meno začínajúce na písmeno P z tabuľky users*/
SELECT * 
FROM users
WHERE first_name
LIKE('P%');

/*3|1 dotaz priradí k typom účtu počet používateľov ktorí majú tento typ účtu*/
SELECT user_type, COUNT(user_type) AS number_of_people 
FROM users
GROUP BY user_type;

/*3|2 dotaz zobrazí koľko každý používateľ zaplatil*/
SELECT user_id, SUM(payment_amount) AS how_much_paid 
FROM payments
GROUP BY user_id;

 
/*3|3 dotaz zobrazí koľko používateľov má permanentky s id pod 3*/
SELECT membership_id, COUNT(*) AS number_of_people
FROM users
GROUP BY membership_id
HAVING membership_id < 3;
