SELECT UPPER(name) AS upper_case FROM cities 
ORDER BY name ASC 
LIMIT 5 OFFSET 5 ; 

SELECT name , CHAR_LENGTH(name) AS name_length FROM cities 
WHERE CHAR_LENGTH(name) NOT IN (8 , 9 ,10 ) ;

SELECT SUM(population) AS sum FROM   cities 
WHERE region IN ('C' , 'S' ) ;

SELECT AVG(population) AS average FROM   cities 
WHERE region = 'W' ; 

SELECT COUNT(name) AS amount FROM   cities 
WHERE region = 'E' ; 