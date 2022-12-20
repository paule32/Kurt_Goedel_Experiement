-- --------------------------------------------------------------------------------------
-- de_wortarten.sql: Stand: Dezember 2022
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
--
-- --------------------------------------------------------------------------------------
-- die 10 Wortarten im Deutschen:
--
-- Es gibt "ver�nderliche" und *nicht* "ve�nderliche" Wortarten
-- Merke: *ver�nderliche Wortarten lassen sich deklinieren, unver�nderliche aber nicht.*
--
-- Deklinieren bedeutet: das Wort nach dem Genus (Geschlecht), Numerus (Singualr/Plural)
-- und Kasus (Fall: Nominativ/Genitiv/Akkusativ/Dativ) gebeugt (also angepasst) wird.
--
-- Nomen sind Hauptw�rter, Substantive oder Namenw�rter.
-- Sie bezeichnen Dinge, Lebewesen und auch Abstraktes.
--
-- Es lassen sich konkrete Nomen und abstrakte Nomen voneinander unterscheiden.
-- Die Konkreten sind "materiell" und lassen sich "sehen" oder "anfassen".
-- Das ist bei den Abstrakten nicht m�glich.
-- Zu Ihnen geh�ren Gef�hle und Empfindungen.
--
-- Artikel begleiten Nomen und werden auch als Nomen-begleiter oder Geschlechts-w�rter
-- bezeichnet. Sie geben dem Nomen ein grammatisches Geschlecht und zeigen den Kasus des
-- Hauptwortes an. Dar�ber hinaus zeigen Artikel in einigen F�llen auch an, ob das
-- Substantiv im Singular oder im Plural steht.
--
-- Artikel kann man aufteilen auf: "bestimmte" und "unbestimmt".
-- bestimmte Artikel sind:
-- - der, die, das
-- unbestimmte Artikel sind:
-- - ein, eine, ein
--
-- Adjektive sind auch bekannt als Eigenschafts-w�rter oder Wie-w�rter: Das liegt daran,
-- das sie zur n�heren Beschreibung von Personen, Lebewesen, Sachverhalten und Dingen
-- dienen.
--
-- Meistens lassen sich Adjektive steigern. So zum Beispiel das Eigenschafts-wort "sch�n"
-- Positiv: sch�n / Komparativ: sch�ner / Superlativ: am sch�nsten
--
-- Pronomen werden auch als F�r-w�rter genannt. Sie sind Begleiter oder Stellvertreter
-- des Nomen.
-- Sie bestimmen, pr�zisieren und / oder ersetzen das jeweilige Nomen.
-- Pronomen kennzeichnen den Numerus, den Genus und den Kasus des Substantivs.
--
-- Numerale geben an, in welcher Anzahl etwas vorkommt. Daher werden sie auch Zahl-w�rter
-- genannt.
--
-- Verben geben Auskunft �ber eine T�tigkeit, einen Vorgang oder einen Zustand.
-- Sie sind deshalb auch als T�tigkeits-w�rter oder Tu(n)-w�rter bekannt.
-- Dem Verb kommen viele Funktionen und Aufgaben zu und daher ist es das wichtivste Wort
-- in einen Satz.
-- Es kann in unterschiedlichen Zeitformen und Modi stehen.
-- Sie lassen sich konjugieren (beugen).
--
-- Adverbien sind Umstands-w�rter - sie bestimmen den Umstand eines Wortes oder eines
-- Satzes genauer.
-- Die n�heren Umst�nde lassen sich ganz einfach durch W-Fragen: Wann, Wo, Wohin, Warum?
-- herausfunden.
-- Diese Wortart wird in vier Hauptgruppen eingeteilt:
-- 1. Lokal    (Ort)
-- 2. Temporal (Zeit)
-- 3. Modal    (Art und Weise)
-- 4. Kausal   (Grund)
--
-- Pr�positionen dienen dazu, r�umliche, zeitliche, kausale oder modale Verh�ltnisse
-- zwischen zwei Sachverhalten zu beschreiben.
-- Sie stehen meistens direkt vor ihren Bezugs-w�rtern und werden auch Vor-w�rter oder
-- Verh�ltnis-w�rter genanntn.
-- Sie bestimmen den Kasus ihres nachfolgenden Bezugs-wortes.
--
-- Konjunktion-nale W�rter sind Binde-w�rter. Sie verkn�pfen W�rter, Satzglieder oder
-- Haupt- und Nebensatze miteinander.
--
-- Interjektionale W�rter geben Empfindungen, Gef�hle, Ausrufe und Ger�usche wieder.
-- Sie werden deshalb auch als Wmpfindungs- oder Ausrufe-w�rter bezeichnet.
-- --------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------
-- Nomen        - Namen-wort
-- Artikel      - Begleit-wort
-- Adjektiv     - Eigenschafts-wort
-- Pronomen     - F�r-wort
-- Numeral      - Zahl-wort
-- Verb         - T�tigkeits-wort
-- Adverb       - Umstands-wort
-- Pr�position  - Verh�ltnis-wort
-- Konjunktion  - Binde-wort
-- Interjektion - Empfindungs-wort
-- --------------------------------------------------------------------------------------
drop   table if     exists de_wortart ;
create table if not exists de_wortart (
  de_id       tinyint not null auto_increment unique primary key,
  de_dek      boolean not null default 0, -- deklariert: ja/nein => 1/0
  de_bez      varchar(15),                -- Bezeichner
  last_update datetime not null on update current_timestamp default now()
);
call in_wortart(1,"Nomen"       );
call in_wortart(1,"Artikel"     );
call in_wortart(1,"Adjektiv"    );
call in_wortart(1,"Pronomen"    );
call in_wortart(1,"Numeral"     );
call in_wortart(1,"Verb"        );
call in_wortart(0,"Adverb"      );
call in_wortart(0,"Pr�position" );
call in_wortart(0,"Konjunktion" );
call in_wortart(0,"Interjektion");
