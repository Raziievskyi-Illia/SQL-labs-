SELECT * 
FROM cities 
ORDER BY population desc
limit 10 offset 10;

SELECT name 
FROM cities 
ORDER BY name desc
limit 30;


SELECT name ,region , population
FROM cities 
ORDER BY population desc , region asc ;

SELECT distinct  region 
FROM cities ;


SELECT name , region 
FROM cities 
ORDER BY region desc , name desc ;

