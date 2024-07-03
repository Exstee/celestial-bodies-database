# Celestial Bodies Database Project

This repository contains the SQL dump file for the "Build a Celestial Bodies Database" project, part of the Relational Databases certification on freeCodeCamp.

## Project Overview

The goal of this project is to design and implement a relational database to store information about various celestial bodies, including galaxies, stars, planets, moons, and black holes. The database is created using PostgreSQL and follows specific requirements to ensure data integrity and proper relational mapping.

## Database Schema

The database, named `universe`, consists of the following tables:

1. **galaxy**:
   - `galaxy_id`: Primary key, auto-incrementing integer
   - `name`: VARCHAR(255), unique, not null
   - `type`: TEXT, not null
   - `num_of_stars`: BIGINT, not null
   - `age`: NUMERIC, not null
   - `has_life`: BOOLEAN, not null

2. **star**:
   - `star_id`: Primary key, auto-incrementing integer
   - `name`: VARCHAR(255), unique, not null
   - `galaxy_id`: Foreign key referencing `galaxy(galaxy_id)`
   - `type`: TEXT, not null
   - `mass`: NUMERIC, not null
   - `is_visible`: BOOLEAN, not null

3. **planet**:
   - `planet_id`: Primary key, auto-incrementing integer
   - `name`: VARCHAR(255), unique, not null
   - `star_id`: Foreign key referencing `star(star_id)`
   - `type`: TEXT, not null
   - `diameter`: NUMERIC
   - `has_water`: BOOLEAN
   - `distance_from_star`: BIGINT
   - `has_life`: BOOLEAN
   - `surface_temperature`: INTEGER
   - `number_of_moons`: INTEGER

4. **moon**:
   - `moon_id`: Primary key, auto-incrementing integer
   - `name`: VARCHAR(255), unique, not null
   - `planet_id`: Foreign key referencing `planet(planet_id)`
   - `radius`: INTEGER, not null
   - `has_atmosphere`: BOOLEAN, not null
   - `is_habitable`: BOOLEAN, not null
   - `orbital_period`: INTEGER
   - `surface_area`: INTEGER

5. **black_hole**:
   - `black_hole_id`: Primary key, auto-incrementing integer
   - `name`: VARCHAR(255), unique, not null
   - `galaxy_id`: Foreign key referencing `galaxy(galaxy_id)`
   - `type`: TEXT, not null
   - `mass`: NUMERIC
   - `is_supermassive`: BOOLEAN
   - `is_stellar`: BOOLEAN

## Features and Requirements

- Each table has a primary key that auto-increments.
- The `galaxy`, `star`, `planet`, and `moon` tables have foreign key constraints to maintain relational integrity.
- Various data types are utilized, including INTEGER, BIGINT, NUMERIC, TEXT, BOOLEAN, and VARCHAR.
- The database is populated with a minimum number of rows to meet the project requirements:
  - At least 6 galaxies and stars.
  - At least 12 planets.
  - At least 20 moons.
  - At least 3 black holes.

## Usage

The SQL dump file `universe.sql` can be used to recreate the database schema and data. To restore the database, use the following command in a PostgreSQL environment:

```bash
psql -U [your-username] -d [database-name] -f universe.sql
Replace [your-username] with your PostgreSQL username and [database-name] with the name of the database where you want to import the data.

License
This project is licensed under the MIT License. See the LICENSE file for details.
