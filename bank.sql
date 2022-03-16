CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    username VARCHAR UNIQUE,
    password VARCHAR
);

CREATE TABLE IF NOT EXISTS accounts(
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    balance REAL
);

INSERT OR IGNORE INTO users(id, username, password) -- 'cpsc455'
VALUES(1, 'ProfAvery', '$2b$14$dMN1VmYiqrXNS5ReO6y/PeSFZaHGXXP5yxGYq0GTIKwapq3/889/m');

INSERT OR IGNORE INTO users(id, username, password) -- 'blackhat'
VALUES(2,'student','$2b$14$5fvuouit6hyDJ652QpZRhuDKoRzjbWfLKfOolefa9bm2KrJg8oe/m');

INSERT OR IGNORE INTO accounts(id, user_id, balance) VALUES(1, 1, 20);

INSERT OR IGNORE INTO accounts(id, user_id, balance) VALUES(2, 1, 100);

INSERT OR IGNORE INTO accounts(id, user_id, balance) VALUES(3, 2, 5);
