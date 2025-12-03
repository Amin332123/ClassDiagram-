CREATE database club;
use club ;




create table members (
    memberId int PRIMARY KEY  AUTO_INCREMENT , 
    fullName varchar(30),
    userName  varchar(20),
    email varchar(30), 
    joineddate date, 
    premium boolean 
    
);
insert into members (fullName, userName, email, joineddate, premium ) 
values ( 'Mohamed Amine Rahmani' , 'Amine123', 'amine@gmail.com', '2025-11-03' , true ), 
       ('Ahmed Rahmani' , 'Ahmed123', 'ahmed@gmail.com', '2025-12-10' , true ), 
       ('Kamal Rahmani' , 'kamal123', 'kamal@gmail.com', '2025-10-12' , true);
   




create table Tournaments (
     tourId int PRIMARY KEY AUTO_INCREMENT ,
     Gid int ,
     tName varchar(40),
     tDate date,
     prize varchar(40)
     
);
insert into Tournaments (Gid, tName , tDate , prize)
values 
    
   (1, 'victory' , '2025-10-12', 'Monada'),
   (2, 'Ahmed Rahmani' , '2025-10-14', '2dh'),
   (3, 'Kamal Rahmani' , '2025-10-19', 'Tanjiya');





create table games (
    Gid int PRIMARY KEY AUTO_INCREMENT,
    gname varchar(20),
    releasedate date,
  
    multiplayer boolean

);
insert into games (gname ,releasedate, multiplayer)
values 
    
   ('valorant' , '2022-10-20' , true),
   ('free fire' , '2022-10-20' , false ),
   ('Pubg' , '2019-10-22' , true );




create table loan (
    id int PRIMARY KEY AUTO_INCREMENT,
    memberid int ,
    Gid int , 
    startdate date,
    returndate date,
    FOREIGN KEY (memberid) REFERENCES members(memberId),
    FOREIGN KEY (Gid) REFERENCES games(Gid)
);
insert into loan(memberid , Gid, startdate, returndate )
values
   (1, 1,  '2025-12-20' , '2022-12-23'),
   (3, 3, '2025-11-24', '2025-11-30');



create table result (
   memberId int ,
   tourId int ,
   score int ,
   ranking int ,
   FOREIGN KEY (memberId) REFERENCES members(memberId),
   FOREIGN KEY (tourId) REFERENCES Tournaments(tourId)

);
insert into result 
values 
    (2, 2 , 20, 1),
    (1 , 2 ,  19 , 2);







-- Lister les informations de tous les membres (pseudo, e-mail, date d'inscription).
SELECT fullName , email , joineddate from members;


-- Afficher la liste des jeux disponibles, avec leur titre, genre, et studio de développement.
SELECT gname , multiplayer , releasedate from games;


-- Afficher les détails d'un tournoi spécifique à partir de son nom.
SELECT * FROM tournaments WHERE tName = 'victory';



-- Lister les emprunts en cours, incluant le pseudo du membre et le titre du jeu

