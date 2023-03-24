SELECT name , population
FROM cities 
where population >= 1000000 ;


SELECT name , population , region
FROM cities 
where region = 'W' or region = 'E'
order by population desc  ;


SELECT name , population , region
FROM cities 
where region in ('S' , 'C' , 'N' ) and population > 50000 ;

SELECT name , population , region
FROM cities 
where region in ('E' , 'W' , 'N' ) and population between 150000 and 350000
order by name asc 
limit 20  ;


SELECT name , population , region
FROM cities 
where not region in ('E' , 'W' ) 
order by population desc
limit 10 offset 10  ;


