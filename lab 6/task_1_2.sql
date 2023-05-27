SELECT cities.name, regions.name
FROM cities
INNER JOIN regions ON cities.region = regions.uuid AND cities.population > 350000;


SELECT cities.name
FROM cities
INNER JOIN regions ON cities.region = regions.uuid AND regions.name  = 'Nord';