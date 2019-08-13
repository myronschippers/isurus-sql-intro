# Introduction to SQL

[Code from Lecture](https://github.com/PrimeAcademy/fomalhaut-sql-basics)

## Why databases?
- Data persistance
- Access from multiple sources
- Scales much better

## SQL
Structured Query Language (SQL) is a standard computer language for relational database management and data manipulation. SQL is used to query, insert, update and modify data.

Databases are the fourth component of our full stack enviornment.

```
,________,         .------,          .------,         .------.
|________|       ,'_____,'|        ,'_____,'|        (        )
|        |       |      | |        | ____ | |        |~------~|
|        |       |      | |        | ____ | |        |~------~|
|        |       |      | ;        | ____ | ;        |~------~|
|________|       |______|'         |______|'         `.______.'
 HTML/CSS          CLIENT            SERVER           DATABASE
```

## Relational Databases
We will be using Postgres for our database and Postico for our client. Keep in mind you can use Postgres with Node.js, SQLite for mobile or MySQL for PHP. SQL is common across all of these different platforms.

Think of relational databases like a spreadsheet full of data.

```
+----+------+------------+---------------+----------+
| id | rank |   artist   |     track     |   date   |
+----+------+------------+---------------+----------+
|  1 |    3 | The Doors  | Light My Fire | 1/1/1967 |
|  2 |    7 | Oasis      | Wonderwall    | 1/1/1996 |
|  3 |   10 | Neil Young | Heart of Gold | 1/1/1972 |
+----+------+------------+---------------+----------+
```


## Intro to Postico

![Postico Postgres Client](images/postico-client.jpg)

- Start your database

  `brew services list`

  `brew services start postgresql`

- Open Positco

## Creating a Database

- Create a database named `music_library`

```
CREATE DATABASE "music_library";
```

- Create your first table

```SQL
CREATE TABLE "songs" (
  "id" serial primary key,
  "rank" integer,
  "artist" varchar(80) not null,
  "track" varchar(120) not null,
  "published" date
);
```

![Tables in Database](images/tables-in-database.jpg)

- [Data types](https://www.postgresql.org/docs/8.1/static/datatype.html)
  - `serial` auto increment
  - `integer` number
  - `varchar(##)` string with max characters ##
  - `date` date
- `cmd-r` to refresh, our table exists!
- Manually enter data (GUI)

  > 1 - Add Billy Joel - We Didn't Start the Fire - 1/1/1989

- Click on **Show SQL**
- Edit inline
- Navigate around
- Go back to the SQL Query

### INSERT
Add a new row to the database. Only fields marked as NOT NULL are required. Column names are entered using `""` and values are entered with `''`.

```
INSERT INTO "songs" ("id", "rank", "track", "artist", "published") 
VALUES (1, 357, 'Wonderwall', 'Oasis', '1-1-1996');
```

- What went wrong? **Our id must be unique.**
- Let's try that again without an **id** (it will auto increment)

```SQL
INSERT INTO "songs" ("rank", "track", "artist", "published") 
VALUES (357, 'Wonderwall', 'Oasis', '1-1-1996');
```

- INSERT multiple records

```SQL
INSERT INTO "songs" ("rank", "track", "artist", "published") 
VALUES (357, 'Wonderwall', 'Oasis', '1-1-1996'),
(102, 'Under the Bridge', 'Red Hot Chili Peppers', '1-1-1992');
```


- `cmd-r` to refresh, our song exists!

#### Import Data
This could take a while... lets add a bunch of new songs from [the songs.sql file](supporting-documentation/songs.sql).

#### Sample SELECT Queries

**see `./lesson-queries.sql`:**

