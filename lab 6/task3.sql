CREATE TABLE branches (
  id int  AUTO_INCREMENT,
  name varchar(45) NOT NULL,
  color varchar(15) ,
  PRIMARY KEY (`id`)
) ;



CREATE TABLE stations  (
  id int  AUTO_INCREMENT,
  name varchar(50)  NOT NULL,
  previous_st_id int unsigned DEFAULT NULL,
  next_st_id int unsigned DEFAULT NULL,
  branch_id int unsigned NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (branch_id) REFERENCES branches(id) 
) ;



CREATE TABLE transitions (
  id INT unsigned AUTO_INCREMENT ,
  station_1 int unsigned NOT NULL,
  station_2 int unsigned NOT NULL,
  to_branch_1 int unsigned NOT NULL , 
  to_branch_2 int unsigned NOT NULL , 
  PRIMARY KEY (id) , 
  FOREIGN KEY (station_1) REFERENCES stations(id),
  FOREIGN KEY (station_2) REFERENCES stations(id)
) ;
