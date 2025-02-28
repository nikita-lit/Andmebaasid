CREATE DATABASE TypesOfChoclateNikita;
USE TypesOfChoclateNikita;

CREATE TABLE ChoclateTabel (
	id int PRIMARY KEY IDENTITY(1,1),
	�okolaadNimi varchar(50),
	KeskmineHind decimal(5,2)
)

insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('verapamil hydrochloride', 20.03);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Pravastatin Sodium', 14.15);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Alcohol', 9.0);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Ibuprofen', 14.24);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('labetalol hydrochloride', 11.87);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('fexofenadine hydrochloride', 5.41);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Loratadine', 3.18);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Titanium dioxide', 8.32);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Menthol and Camphor (Synthetic)', 7.76);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Temazepam', 2.52);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Ciprofloxacin', 2.93);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('OCTINOXATE and TITANIUM DIOXIDE', 14.0);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Fluconazole', 8.84);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('benztropine mesylate', 3.47);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Avobenzone', 4.54);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Titanium Dioxide and Zinc Oxide', 5.44);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('acetaminophen', 13.67);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Donepezil Hydrochloride', 82.42);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Fagopyrum esculentum', 26.96);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Acetaminophen', 68.3);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Arnica montana', 19.05);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('dextromethorphan polistirex', 62.34);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Hydroxyzine hydrochloride', 14.78);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Hydrochlorothiazide', 54.33);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Tretinoin', 39.54);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Donepezil hydrochloride', 27.4);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Ritonavir', 2.87);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Carcinosinum', 72.31);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Magnesium citrate', 4.32);
insert into ChoclateTabel (�okolaadNimi, KeskmineHind) values ('Lidocaine Hydrochloride', 21.78);

SELECT * FROM ChoclateTabel;

GRANT SELECT ON ChoclateTabel (�okolaadNimi, KeskmineHind) TO NikitaChocolonely
GRANT UPDATE ON ChoclateTabel (�okolaadNimi, KeskmineHind) TO NikitaChocolonely

SELECT �okolaadNimi, KeskmineHind FROM ChoclateTabel;

SELECT id FROM ChoclateTabel

SELECT �okolaadNimi, KeskmineHind FROM ChoclateTabel;
UPDATE ChoclateTabel SET KeskmineHind = 500;
SELECT �okolaadNimi, KeskmineHind FROM ChoclateTabel;

DELETE FROM ChoclateTabel

DROP TABLE ChoclateTabel

CREATE TABLE Kasutaja (
	id int PRIMARY KEY IDENTITY(1,1),
	kasutajaNimi varchar(50)
)