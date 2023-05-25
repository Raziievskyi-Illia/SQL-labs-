CREATE TABLE categories (
    id INT unsigned NOT NULL AUTO_INCREMENT ,
    name varchar(50)  NOT NULL,
    PRIMARY KEY (id) 
);

CREATE TABLE news (
    id  INT unsigned NOT NULL AUTO_INCREMENT ,
    title varchar(75)  NOT NULL,
    content TEXT NOT NULL,
    category_id int unsigned NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    PRIMARY KEY (id)
);

CREATE TABLE comments (
    id INT unsigned NOT NULL AUTO_INCREMENT ,
    content TEXT NOT NULL,
    news_id int unsigned NOT NULL,
    FOREIGN KEY (news_id) REFERENCES news(id),
    PRIMARY KEY (id)
);

DELIMITER //

CREATE TRIGGER check_columns_trigger BEFORE INSERT ON ratings
FOR EACH ROW
BEGIN
    IF NEW.IPv4 IS NULL AND NEW.IPv6 IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Both IPv4 and IPv6 cannot be null';
    END IF;
END //

DELIMITER ;


CREATE TABLE ratings (
    id int unsigned NOT NULL AUTO_INCREMENT ,
    news_id int unsigned NOT NULL,
    rating INT NOT NULL,
    IPv4 int unsigned ,
    IPv6 VARBINARY(16),
    UNIQUE (IPv4),
    UNIQUE (IPv6), 
    FOREIGN KEY (news_id) REFERENCES news(id),
    PRIMARY KEY (id)
);


