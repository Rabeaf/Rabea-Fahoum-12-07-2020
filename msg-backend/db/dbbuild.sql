BEGIN;

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS messages CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    senderid int NOT NULL,
    FOREIGN KEY (senderid) references users (id) ON DELETE CASCADE,
    receiverid int NOT NULL,
    FOREIGN KEY (receiverid) references users (id) ON DELETE CASCADE,
    subj VARCHAR(40) NOT NULL,
    date date NOT NULL,
    msg text
);

INSERT INTO users (user_name, email, password) VALUES
    ('Elia', 'elian@gmail.com', '1'),
    ('Trump', 'trump@gmail.com', '2'),
    ('Merkel', 'isenberg@gmail.com', '3'),
    ('Oglodar', 'oglothegood@gmail.com', '4'),
    ('Sisi', 'sisiyes@gmail.com', '5'),
    ('Xui', 'mgates@gmail.com', '6');

INSERT INTO messages (senderid, receiverid, subj, date, msg) VALUES
    ('1','2', 'Make america great again burger', NOW(), 'Can i have a make america great again burger please?'),
    ('1','6', 'Confedential Message', NOW(), 'I am Joking with the yellow man'),
    ('1','4', 'Dont touch the Ayasofia', NOW(), 'We think you are disrespecting our relegious views'),
    ('3','1', 'Oil please', NOW(), 'We need extra oil this coming winter'),
    ('3','5', 'How is Sharm el-Sheikh?', NOW(), 'I was thinking of a nice vacation on the shores of the red sea'),
    ('4','2', 'No more shish kebab for you', NOW(), 'Make sandwiches and salads instead'),
    ('2','3', 'No woman no cry', NOW(), 'No hilary no obama no health system no education system'),
    ('4','3', 'Hows our turks?', NOW(), 'Just checking on the state of turkish-germans'),
    ('5','2', 'Our planes', NOW(), 'when will we get our airplanes?'),
    ('5','4', 'No corona here', NOW(), 'by the way if you know the cookie man We need you'),
    ('4','5', 'golo golo golo', NOW(), 'Meawo Meaow Meawo Meaow Meawo Meaow Meawo Meaow Meawo Meaow Meawo Meaow '),
    ('2','6', 'Kim jung oun doesnt answer', NOW(), 'can you please contact him?');

COMMIT;