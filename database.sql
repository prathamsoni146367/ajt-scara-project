CREATE DATABASE IF NOT EXISTS scara_ajt;

USE scara_ajt;

CREATE TABLE IF NOT EXISTS assassins (
    assassin_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    ranking VARCHAR(50) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'Active'
);

CREATE TABLE IF NOT EXISTS contracts (
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    assassin_id INT NOT NULL,
    client_name VARCHAR(100) NOT NULL,
    target_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    reward DECIMAL(12,2) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (assassin_id) REFERENCES assassins(assassin_id)
);

CREATE TABLE IF NOT EXISTS contact_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO assassins (name, specialization, ranking, status) VALUES
('Gun Yamazaki', 'Close Combat', 'S-Rank', 'Active'),
('Jintae Shio', 'Sniper', 'A-Rank', 'Active'),
('Amur Tigro', 'Infiltration', 'A-Rank', 'Active'),
('Goo Kim', 'Poison Specialist', 'B-Rank', 'Retired'),
('Manager Kim', 'Handler', 'S-Rank', 'Active');

INSERT INTO contracts (assassin_id, client_name, target_name, location, reward, status) VALUES
(1, 'Anonymous Client', 'Marcus Dane', 'Tokyo', 250000.00, 'Completed'),
(2, 'Whitehall Group', 'Elena Ruiz', 'Berlin', 180000.00, 'In Progress'),
(3, 'Anonymous Client', 'Victor Cho', 'Seoul', 300000.00, 'Pending');
