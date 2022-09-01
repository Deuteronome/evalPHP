CREATE TABLE IF NOT EXISTS users (
    id SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pseudo VARCHAR(255) NOT NULL    
)
ENGINE = INNODB;

INSERT INTO users (pseudo)
    VALUES ("Axel"), ("Jason"), ("Britley"), ("Quentin"), ("Lilian"), ("Ryad");

CREATE TABLE IF NOT EXISTS messages (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id SMALLINT NOT NULL,
    message TEXT NOT NULL,
    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
)
ENGINE=INNODB;

INSERT INTO messages (user_id, message)
    VALUES  (3, "Bonjour, ça va aujourd'hui"),
            (1, 'Nickel'),
            (2, 'Le PHP ça casse la tête!'),
            (4, 'Oui, le Front c''est tellement mieux'),
            (2, 'Mon dieux non!!!!!!!!!!!!!!!!'),
            (6, 'On mange quoi ce midi'),
            (5, 'On mange!');

CREATE VIEW messages_vw AS (SELECT users.pseudo AS pseudo, messages.message AS message FROM users INNER JOIN messages ON users.id = messages.user_id ORDER BY messages.id ASC);