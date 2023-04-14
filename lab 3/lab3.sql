SELECT id , name FROM cities 
WHERE name LIKE '%ськ' ;


SELECT id , name FROM cities 
WHERE name LIKE '%донец%' ;


SELECT  Concat(name,' (',region,')') , population FROM cities
WHERE population >=100000 
ORDER BY name asc ;

SELECT id ,name , population , (population/40000000)*100 AS percentage FROM cities
ORDER BY population desc 
LIMIT 50 ; 

SELECT id ,Concat(name, ' ',population/400000, '%') AS nameperc   FROM cities
WHERE (population/400000) >=0.1 
ORDER BY (population/400000) DESC; 


