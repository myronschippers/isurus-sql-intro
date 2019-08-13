/* DATA TYPES ::
    serial - auto incrementor
    integer - number
    varchar(##) - string ##, number of characters varchar(200)
    date - date 01/01/1983 01-01-1983
------------------------------------------------------------ */

CREATE TABLE "songs" (
	"id" serial primary key,
	"rank" integer,
	"artist" varchar(80) not null,
	"track" varchar(120) not null,
	"published" date
);

CREATE TABLE "name" (
	"id" serial primary key,
	"first" varchar(80) not null,
	"last" varchar(80) not null
);

/* Creating a new row in our database "song" table */
/* In Englissh
    INSERT INTO "table_name" ("column_name", "column_name")
    VALUES ('value_to_add', 'must_be_propper_data_type');
------------------------------------------------------------ */
INSERT INTO "songs" ("rank", "artist", "track", "published")
VALUES (375, 'Wonderwall', 'Oasis', '1-1-1995');

/* Creating multiple rows with a single insert */
INSERT INTO "songs" ("rank", "artist", "track", "published")
VALUES (352, 'The Black Eyed Peas', 'Don''t Punk With My Heart', '1-1-1995'),
(102, 'Red Hot Chili Peppers', 'Under the Bridge', '1-1-1995');

/* Gets all data from the "songs" table */
/* "*" (splat) is a wildcard and will grab everything */
SELECT * FROM "songs";

/* Gets all rows but only the data for column "track" and "artist" */
SELECT "track", "artist" FROM "songs";

/* Gets all rows in "songs" table but limits it to the first 10.
    By default the table is sorted by the "id" or primary key colummn.
------------------------------------------------------------ */
SELECT * FROM "songs" LIMIT 10;

/* Gets all data from "songs" table only if the "id" of the row is equal to 20 */
SELECT * FROM "songs" WHERE "id" = 20;

/* Gets only the "track" and "artist" column data from "songs" table
    if  the "artist" data equals 'Red Hot Chili Peppers'
------------------------------------------------------------ */
SELECT "track", "artist" FROM "songs" WHERE "artist" = 'Red Hot Chili Peppers';

SELECT "track", "artist", "published" FROM "songs" WHERE "artist" = 'Red Hot Chili Peppers';

/* Gets all data for the rows in "songs" table sorting them by
    "published" column in Descending order and limits the number
    of rows rturned to 10.
------------------------------------------------------------ */
SELECT * FROM "songs" ORDER BY "published" DESC LIMIT 10;

/* Gets all data for the rows in "songs" table sorting them by
    "published" column in Ascending order and limits the number
    of rows rturned to 10.
------------------------------------------------------------ */
SELECT * FROM "songs" ORDER BY "published" ASC LIMIT 10;



