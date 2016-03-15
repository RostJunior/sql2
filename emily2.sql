DROP DATABASE IF EXISTS emily;

CREATE DATABASE emily;

USE emily;

CREATE TABLE IF NOT EXISTS type (
  idType INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nameType VARCHAR(30),
  PRIMARY KEY (idType));
  
  CREATE TABLE IF NOT EXISTS product (
  idProduct INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nameProduct VARCHAR(50),
  priceProduct INT UNSIGNED,
  type_idType INT UNSIGNED NOT NULL,
  description VARCHAR(255),
  namePhoto VARCHAR(80),
  PRIMARY KEY (idProduct),
  CONSTRAINT type_idType FOREIGN KEY (type_idType) REFERENCES type (idType));
  
  CREATE TABLE IF NOT EXISTS roles (
  idRoles INT UNSIGNED NOT NULL AUTO_INCREMENT,
  roles VARCHAR(30),
  PRIMARY KEY (idRoles));
  
  CREATE TABLE IF NOT EXISTS users (
  idUsers INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nameUsers VARCHAR(50),
  adressUsers VARCHAR(150),
  cityUsers VARCHAR(50),
  emailUsers VARCHAR(100),
  passwordUsers VARCHAR(50),
  telephoneNumberUsers VARCHAR(20),
  roles_idRoles INT UNSIGNED NOT NULL, 
  dateRegistrarion DATE,

  PRIMARY KEY (idUsers),
  CONSTRAINT roles_idRoles FOREIGN KEY (roles_idRoles) REFERENCES roles (idRoles));
  
   CREATE TABLE IF NOT EXISTS transporter (
  idTransporter INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nameTransporter VARCHAR(30),
  costOfDelivery INT,
  PRIMARY KEY (idTransporter));
  
insert into type (nameType)
values  ('zakolky'),
		('obruchi'),
        ('rezinky'),
        ('povjazky');
		
insert into transporter 
values (5501, 'Ukrposhta', 17),
		(5502, 'Nova poshta', 35),
        (5503, 'InTime', 30),
        (5504, 'Meest-express', 40),
        (5505, 'Samovuvozz', 0);		
  
insert into product (idProduct, nameProduct, type_idType, priceProduct, description, namePhoto)
values (2001, 'zakFirst', 4, 45, 'povjazka.......', 'dsc_0062.jpg'),
		(2002, 'zakTwo', 4, 45, 'povjazka.......', 'DSC_0401112.JPG'),
		(2003, 'zakThree', 4, 45, 'povjazka.......', 'DSC_1269.JPG'),
		(2004, 'obruchOne', 2, 50, 'obruch.......', 'dsc_0873.jpg'),
		(2005, 'obruchTwo', 2, 50, 'obruch.......', 'dsc_0879.jpg'),
		(2006, 'obruchThree', 2, 50, 'obruch.......', 'dsc_0813.jpg'),
		(2007, 'obruch-Red-Black-Mak', 2, 55, 'obruch.......', 'dsc_1051.jpg'),
		(2008, 'rezinkaFirst', 3, 35, 'rezinky.......', 'DSC_1272.JPG'),
		(2009, 'rezinkaTwo', 3, 35, 'rezinky.......', 'dsc9.jpg'),
		(2010, 'rezinkaThree', 3, 35, 'rezinky.......', 'dsc_0775.jpg'),
		(2011, 'zakFirst', 1, 60, 'Zakolka.......', 'dsc_0901.jpg'),
		(2012, 'zakFirst', 1, 60, 'Zakolka.......', 'dsc_0926.jpg');  
		
insert into roles (roles)
values  ('Admin'),
		('User'),
        ('Other');	
  
insert into users 
values (1001, 'Лилия', 'svobody AVE 1', 'Lviv', 'emily@es.ru', '123456', '(055) 855-55-55', 1, '2015-06-01'),
		(1002, 'Ростислав', 'Shevchenka str., 58/1', 'Kiev', 'rost@mail.ru', '55555', '(055) 866-66-66', 2, '2015-06-01'),
		(1003, 'Hugo', 'Promorskaya str., 55', 'Odessa', 'hugo@es.ru', '121212', '(099) 999-55-55', 2, '2015-06-01'),
		(1004, 'Taras', 'svobody AVE 1', 'Lviv', 'emily@es.ru', '123456', '(055) 855-55-55', 2, '2015-06-01');