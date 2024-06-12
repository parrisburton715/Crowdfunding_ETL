CREATE SCHEMA crowdfunding;

CREATE TABLE crowdfunding.category (
    category_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE crowdfunding.subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES crowdfunding.category(category_id)
);

CREATE TABLE crowdfunding.contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE crowdfunding.campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(255),
    description TEXT,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(255),
    currency VARCHAR(255),
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES crowdfunding.category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES crowdfunding.subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES crowdfunding.contacts(contact_id)
);

DROP TABLE IF EXISTS crowdfunding.campaign;
DROP TABLE IF EXISTS crowdfunding.subcategory;

CREATE TABLE crowdfunding.subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL
);

CREATE TABLE crowdfunding.campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(255),
    description TEXT,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(255),
    currency VARCHAR(255),
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES crowdfunding.category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES crowdfunding.subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES crowdfunding.contacts(contact_id)
);

SELECT * FROM crowdfunding.category;
SELECT * FROM crowdfunding.subcategory;
SELECT * FROM crowdfunding.contacts;
SELECT * FROM crowdfunding.campaign;