-- --------------------------------------------------------------------------------------
-- de_pronomen.sql: Stand: Dezember 2022
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
-- Pronomen:
-- --------------------------------------------------------------------------------------
set @Personal     := 1;  -- pers�nliches      F�rwort
set @Possesiv     := 2;  -- besitzanzeigendes F�rwort
set @Reflexiv     := 3;  -- r�ckbez�gliches   F�rwort
set @Demonstrativ := 4;  -- hinweisendes      F�rwort
set @Indefinit    := 5;  -- unbestimmtes      F�rwort
set @Relativ      := 6;  -- bez�gliches       F�rwort
set @Interrogativ := 7;  -- Frage             F�rwort

-- --------------------------------------------------------------------------------------
-- Personal -pronomen:
-- --------------------------------------------------------------------------------------
set @singular  := 1;  -- Einzahl
set @plural    := 2;  -- Mehrzahl
set @formal    := 3;  -- Formal

set @nominativ := 1;
set @akkusativ := 2;
set @genitiv   := 3;
set @dativ     := 4;

set @maskulin  := 1;  -- m�nnlich
set @feminin   := 2;  -- weiblich
set @neutral   := 3;  -- s�chlich

drop   table if     exists de_pronomen ;
create table if not exists de_pronomen (
  de_id        tinyint not null auto_increment unique primary key,
  de_art       tinyint not null default 1,
  de_anzahl    tinyint not null default 1,
  de_nominativ char(5),
  de_akkusativ char(5),
  de_dativ     char(5),
  last_update datetime not null on update current_timestamp default now()
);
-- --------------------------------------------------------------------------------------
-- Personal-pronomen: Singular/Einzahl:
-- --------------------------------------------------------------------------------------
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"ich","mich","mir");
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"du" ,"dich","dir");
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"er" ,"ihn" ,"ihm");
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"sie","sie" ,"ihr");
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"es" ,"es"  ,"ihm");
-- --------------------------------------------------------------------------------------
-- Personal-pronomen: Plural/Mehrzahl:
-- --------------------------------------------------------------------------------------
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@plural,"wir","uns" ,"uns"  );
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@plural,"ihr","euch","euch" );
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@plural,"sie","sie" ,"ihnen");
-- --------------------------------------------------------------------------------------
-- Personal-pronomen: Formal
-- --------------------------------------------------------------------------------------
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@formal,"sie","sie","ihnen");
