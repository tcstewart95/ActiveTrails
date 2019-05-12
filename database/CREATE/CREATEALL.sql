CREATE TABLE the_eureka_trail.player (
    id SMALLINT UNSIGNED NOT NULL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    hp SMALLINT UNSIGNED NOT NULL,
    company_id INT UNSIGNED NOT NULL,
    inventory_id INT UNSIGNED NOT NULL,
    role_id INT UNSIGNED NOT NULL,
    image VARCHAR(255) NOT NULL,
    authenticated BOOLEAN NOT NULL
);

CREATE TABLE the_eureka_trail.company (
    id SMALLINT UNSIGNED NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    player_id INT UNSIGNED NOT NULL,
    feed_id INT UNSIGNED NOT NULL,
    inventory_id INT UNSIGNED NOT NULL,
    location_id INT UNSIGNED NOT NULL,
    image VARCHAR(255) NOT NULL
);

CREATE TABLE the_eureka_trail.plays_in (
    player_id INT UNSIGNED NOT NULL,
    company_id INT UNSIGNED NOT NULL,
    total_steps INT UNSIGNED NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

CREATE TABLE the_eureka_trail.role (
    id SMALLINT UNSIGNED NOT NULL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    money INT UNSIGNED NOT NULL,
    hp INT UNSIGNED NOT NULL,
    description VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL
);

