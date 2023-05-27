CREATE TABLE projects (
  id INT UNSIGNED AUTO_INCREMENT,
  name VARCHAR(255)  NOT NULL,
  description TEXT ,
  PRIMARY KEY (id)
);


CREATE TABLE users (
  id INT UNSIGNED  AUTO_INCREMENT,
  username VARCHAR(70)  NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE project_members (
  projects_id INT UNSIGNED NOT NULL,
  users_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (projects_id) REFERENCES projects(id),
  FOREIGN KEY (users_id) REFERENCES users(id)
);


CREATE TABLE tasks (
  id INT UNSIGNED AUTO_INCREMENT,
  name varchar(255)  NOT NULL,
  projects_id INT UNSIGNED NOT NULL,
  author_id INT UNSIGNED NOT NULL,
  comments TEXT,
  PRIMARY KEY (id), 
  FOREIGN KEY (projects_id) REFERENCES projects(id),
  FOREIGN KEY (author_id) REFERENCES project_members(users_id)
);

CREATE TABLE task_assignees ( 
  task_id INT UNSIGNED NOT NULL,
  users_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (task_id) REFERENCES tasks(id),
  FOREIGN KEY (users_id) REFERENCES project_members(users_id)
);




CREATE TABLE files (
  id INT UNSIGNED,
  project_id INT UNSIGNED NOT NUll ,
  task_id INT UNSIGNED DEFAULT NULL ,
  link VARCHAR(255) NOT NULL ,
  PRIMARY KEY (id) , 
  FOREIGN KEY (project_id) REFERENCES projects(id),
  FOREIGN KEY (task_id) REFERENCES tasks(id)
);