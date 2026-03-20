-- ================================
-- DATABASE: movieboxoffice
-- ================================

-- ================================
-- PART 1: HEROES & MOVIES
-- ================================

INSERT INTO heroes (hero_code, hero_name) VALUES
('RC', 'Ram Charan'),
('AA', 'Allu Arjun'),
('PRABHAS', 'Prabhas'),
('NTR', 'Jr NTR'),
('MB', 'Mahesh Babu'),
('PK', 'Pawan Kalyan'),
('CHIRANJEEVI', 'Chiranjeevi'),
('NBK', 'Balakrishna'),
('NANI', 'Nani'),
('YASH', 'Yash')
ON DUPLICATE KEY UPDATE hero_name = VALUES(hero_name);

INSERT INTO movies (movie_code, title, hero_id, release_date) VALUES
-- Prabhas
('KALKI', 'Kalki 2898 AD', (SELECT hero_id FROM heroes WHERE hero_code = 'PRABHAS'), '2024-06-27'),
('SALAAR', 'Salaar', (SELECT hero_id FROM heroes WHERE hero_code = 'PRABHAS'), '2023-12-22'),
('RADHE_SHYAM', 'Radhe Shyam', (SELECT hero_id FROM heroes WHERE hero_code = 'PRABHAS'), '2022-03-11'),
('ADIPURUSH', 'Adipurush', (SELECT hero_id FROM heroes WHERE hero_code = 'PRABHAS'), '2023-06-16'),
('SAAHO', 'Saaho', (SELECT hero_id FROM heroes WHERE hero_code = 'PRABHAS'), '2019-08-30'),
('BAAHUBALI', 'Baahubali', (SELECT hero_id FROM heroes WHERE hero_code = 'PRABHAS'), '2015-07-10'),
('BB2', 'Baahubali 2: The Conclusion', (SELECT hero_id FROM heroes WHERE hero_code = 'PRABHAS'), '2017-04-28'),
('RAJA_SAAB', 'The Raja Saab', (SELECT hero_id FROM heroes WHERE hero_code = 'PRABHAS'), '2026-01-09'),
-- Jr NTR
('DEVARA', 'Devara', (SELECT hero_id FROM heroes WHERE hero_code = 'NTR'), '2024-09-27'),
('RRR', 'RRR', (SELECT hero_id FROM heroes WHERE hero_code = 'NTR'), '2022-03-25'),
-- Pawan Kalyan
('OG', 'They Call Him OG', (SELECT hero_id FROM heroes WHERE hero_code = 'PK'), '2025-09-27'),
('BRO', 'BRO', (SELECT hero_id FROM heroes WHERE hero_code = 'PK'), '2023-07-28'),
('BHEEMLA_NAYAK', 'Bheemla Nayak', (SELECT hero_id FROM heroes WHERE hero_code = 'PK'), '2022-02-25'),
('GABBAR_SINGH', 'Gabbar Singh', (SELECT hero_id FROM heroes WHERE hero_code = 'PK'), '2012-05-11'),
('AGV', 'Agnyaathavaasi', (SELECT hero_id FROM heroes WHERE hero_code = 'PK'), '2018-01-10'),
('VS', 'Vakeel Saab', (SELECT hero_id FROM heroes WHERE hero_code = 'PK'), '2021-04-09'),
('HHVM', 'Hari Hara Veera Mallu', (SELECT hero_id FROM heroes WHERE hero_code = 'PK'), '2025-06-12'),
('SGS', 'Sardaar Gabbar Singh', (SELECT hero_id FROM heroes WHERE hero_code = 'PK'), '2016-04-08'),
-- Ram Charan
('GAME_CHANGER', 'Game Changer', (SELECT hero_id FROM heroes WHERE hero_code = 'RC'), '2025-01-10'),
-- Allu Arjun
('PUSHPA', 'Pushpa: The Rise', (SELECT hero_id FROM heroes WHERE hero_code = 'AA'), '2021-12-17'),
('PUSHPA2', 'Pushpa 2: The Rule', (SELECT hero_id FROM heroes WHERE hero_code = 'AA'), '2024-12-05'),
('AVPL', 'Ala Vaikunta Puramulo', (SELECT hero_id FROM heroes WHERE hero_code = 'AA'), '2020-01-12'),
-- Mahesh Babu
('SLN', 'Sarileru Neekevvaru', (SELECT hero_id FROM heroes WHERE hero_code = 'MB'), '2020-01-11'),
('SVP', 'Sarkaru Vaari Paata', (SELECT hero_id FROM heroes WHERE hero_code = 'MB'), '2022-05-12'),
('KHALEJA', 'Khaleja', (SELECT hero_id FROM heroes WHERE hero_code = 'MB'), '2010-10-07'),
('GUNTUR_KAARAM', 'Guntur Kaaram', (SELECT hero_id FROM heroes WHERE hero_code = 'MB'), '2024-01-12'),
-- Chiranjeevi
('ACHARYA', 'Acharya', (SELECT hero_id FROM heroes WHERE hero_code = 'CHIRANJEEVI'), '2022-04-29'),
('SYE_RAA', 'Sye Raa Narasimha Reddy', (SELECT hero_id FROM heroes WHERE hero_code = 'CHIRANJEEVI'), '2019-10-02'),
-- Others
('DASARA', 'Dasara', (SELECT hero_id FROM heroes WHERE hero_code = 'NANI'), '2023-03-30'),
('KGF2', 'K.G.F Chapter 2', (SELECT hero_id FROM heroes WHERE hero_code = 'YASH'), '2022-04-14'),
('VEERA_SIMHA_REDDY', 'Veera Simha Reddy', (SELECT hero_id FROM heroes WHERE hero_code = 'NBK'), '2023-01-12'),
('DAAKU_MAHARAAJ', 'Daaku Maharaaj', (SELECT hero_id FROM heroes WHERE hero_code = 'NBK'), '2024-01-12')
ON DUPLICATE KEY UPDATE title = VALUES(title), release_date = VALUES(release_date);

-- ================================
-- TOWNS
-- ================================
INSERT INTO towns (town_name, territory) VALUES
('Huzurnagar', 'nizam'),
('RTC X Roads', 'hyderabad'),
('Gajuwaka Single Screens', 'uttarandhra'),
('Ravulapalem', 'east_godavari')
ON DUPLICATE KEY UPDATE territory = VALUES(territory);
