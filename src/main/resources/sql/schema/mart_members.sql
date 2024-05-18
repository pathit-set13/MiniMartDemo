CREATE TABLE mart_members (
    memberId SERIAL PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15) UNIQUE NOT NULL,
    member_tier VARCHAR(30) NOT NULL
);