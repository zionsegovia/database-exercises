
CREATE DATABASE adlisterbp_db;


USE adlisterbp_db;


CREATE TABLE users (
                       id INT NOT NULL AUTO_INCREMENT,
                       email VARCHAR(60) NOT NULL,
                       PRIMARY KEY (id)
);


CREATE TABLE category (
                          id INT NOT NULL AUTO_INCREMENT,
                          name VARCHAR(60) NOT NULL,
                          parent_id INT,
                          PRIMARY KEY (id),
                          CONSTRAINT fk_parent_id FOREIGN KEY (parent_id) REFERENCES category(id)
);

CREATE TABLE ad_lister (
                           id INT NOT NULL AUTO_INCREMENT,
                           title VARCHAR(50) NOT NULL,
                           description VARCHAR(250) NOT NULL,
                           category_id INT NOT NULL,
                           user_id INT NOT NULL,
                           PRIMARY KEY (id),
                           CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(id),
                           CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES category(id)
);

# Add the cat_id column to the ad_lister table
ALTER TABLE ad_lister ADD COLUMN cat_id INT, ADD CONSTRAINT fk_cat_id FOREIGN KEY (cat_id) REFERENCES category(id);

# Insert some sample data into the users table
INSERT INTO users (email) VALUES ('john@example.com'), ('jane@example.com'), ('bob@example.com');

# Insert some sample data into the category table
INSERT INTO category (name, parent_id) VALUES
                                           ('Books', NULL),
                                           ('Electronics', NULL),
                                           ('Clothing', NULL),
                                           ('Science Fiction', 1),
                                           ('Fantasy', 1),
                                           ('Computers', 2),
                                           ('Smartphones', 2),
                                           ('Men''s Clothing', 3),
                                           ('Women''s Clothing', 3),
                                           ('Shoes', 3);

# Insert some sample data into the ad_lister table
INSERT INTO ad_lister (title, description, category_id, user_id, cat_id) VALUES
                                                                             ('Book Title', 'Book Description', 1, 1, 1),
                                                                             ('Electronic Title', 'Electronic Description', 6, 2, 6),
                                                                             ('Clothing Title', 'Clothing Description', 9, 3, 9);

# For a given ad, what is the email address of the user that created it?
SELECT users.email
FROM ad_lister
         JOIN users ON ad_lister.user_id = users.id
WHERE ad_lister.id = 1;


# For a given ad, what category, or categories, does it belong to?
SELECT category.name
FROM ad_lister
         JOIN category ON ad_lister.category_id = category.id
WHERE ad_lister.id = 2;


# For a given category, show all the ads that are in that category.
SELECT ad_lister.*
FROM ad_lister
         JOIN category ON ad_lister.category_id = category.id
WHERE category.name = 'Books';


# For a given user, show all the ads they have posted.
SELECT *
FROM ad_lister
WHERE user_id = 3;






