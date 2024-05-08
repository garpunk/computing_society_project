-- ~
DROP TABLE IF EXISTS `user_project`;
-- ~
-- ~
DROP TABLE IF EXISTS `user`;
-- ~
-- ~
DROP TABLE IF EXISTS `project`;
-- ~

-- ~
CREATE TABLE IF NOT EXISTS `user` (
     user_id INT PRIMARY KEY AUTOINCREMENT NOT NULL,
     username VARCHAR(45) UNIQUE NOT NULL
);
-- ~

-- ~
CREATE TABLE IF NOT EXISTS `project` (
     project_id INT PRIMARY KEY AUTOINCREMENT NOT NULL,
     project_name VARCHAR(45) UNIQUE NOT NULL,
     project_description VARCHAR(500) UNIQUE NOT NULL
);
-- ~

-- ~
CREATE TABLE IF NOT EXISTS `user_project` (
     user_project_id INT PRIMARY KEY AUTOINCREMENT NOT NULL,
     user_id INT UNSIGNED NOT NULL,
     project_id INT UNSIGNED NOT NULL,
     date_added DATE NOT NULL,
     last_updated_by INT UNSIGNED NULL,
     last_updated_date DATE NOT NULL,
     CONSTRAINT `user_project_fk1`
         FOREIGN KEY (`project_id`)
         REFERENCES `project` (`project_id`)
         ON DELETE CASCADE,
         ON UPDATE CASCADE,
    CONSTRAINT `user_project_fk2`
         FOREIGN KEY (`project_id`)
         REFERENCES `project` (`project_id`)
         ON DELETE CASCADE,
         ON UPDATE CASCADE,
    CONSTRAINT `user_project_fk3`
         FOREIGN KEY (`last_updated_by`)
         REFERENCES `project` (`user_id`)
         ON DELETE CASCADE,
         ON UPDATE CASCADE,
   
   
   
);
-- ~