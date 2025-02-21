-- --------------------------------------------------------------------------------------
-- de_duden.sql: Stand: Dezember 2022
--
-- (c) 2022 by Jens Kallup - paule32 <paule32.jk@gmail.com>
-- all rights reserved.
--
-- Dies ist eine Zusammenstellung der im Deutschen genutzten W�rt und Wortarten.
-- Diese Datei darf nur f�r schulische Zwecke genutzt werden.
--
-- Eine Verwendung in kommerziellen Projekten ist nicht erlaubt !
-- Die vorliegenden Informationen geben nur einen Teil des gesamten Umfanges ab; sie
-- sind also nicht vollst�ndig, oder fehlerfrei.
--
-- Ich distanziere mich vor jedlichen Schaden, der durch die Benutzung dieser Datenbank-
-- informationen entsteht bzw. enstanden ist.
-- Die Nutzung erfolgt stets auf Eigene Gefahr !!!
-- --------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------
-- indizierte W�rter (Gruppe => Buchabteilung)
-- --------------------------------------------------------------------------------------
drop   table if     exists de_duden_gruppen ;
create table if not exists de_duden_gruppen (
  de_id       bigint not null auto_increment unique primary key,
  de_gruppe   varchar(10),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_duden_gruppen (de_gruppe) values ("verb_aa");
insert into de_duden_gruppen (de_gruppe) values ("verb_ab");
