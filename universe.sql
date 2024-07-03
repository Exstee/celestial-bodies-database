--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    type text NOT NULL,
    mass numeric,
    is_supermassive boolean,
    is_stellar boolean
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type text NOT NULL,
    num_of_stars bigint NOT NULL,
    age numeric NOT NULL,
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer,
    radius integer NOT NULL,
    has_atmosphere boolean NOT NULL,
    is_habitable boolean NOT NULL,
    orbital_period integer,
    surface_area integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_id integer,
    type text NOT NULL,
    diameter numeric,
    has_water boolean,
    distance_from_star bigint,
    has_life boolean,
    surface_temperature integer,
    number_of_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    type text NOT NULL,
    mass numeric NOT NULL,
    is_visible boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 1, 'Supermassive', 4310000, true, false);
INSERT INTO public.black_hole VALUES (2, 'Cygnus X-1', 2, 'Stellar', 15, false, true);
INSERT INTO public.black_hole VALUES (3, 'Messier 87*', 1, 'Supermassive', 6500000000, true, false);
INSERT INTO public.black_hole VALUES (4, 'V404 Cygni', 2, 'Stellar', 9, false, true);
INSERT INTO public.black_hole VALUES (5, 'NGC 1277', 1, 'Supermassive', 17000000000, true, false);
INSERT INTO public.black_hole VALUES (6, 'A0620-00', 2, 'Stellar', 6.6, false, true);
INSERT INTO public.black_hole VALUES (7, 'TON 618', 1, 'Supermassive', 66000000000, true, false);
INSERT INTO public.black_hole VALUES (8, 'XTE J1650-500', 2, 'Stellar', 7, false, true);
INSERT INTO public.black_hole VALUES (9, 'SDSS J010013.02+280225.8', 1, 'Supermassive', 12000000000, true, false);
INSERT INTO public.black_hole VALUES (10, 'Swift J1644+57', 2, 'Stellar', 3.8, false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 100000000000, 13.51, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 1000000000000, 10.0, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 40000000, 12.0, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 100000000, 10.0, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 80000000, 9.0, false);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular', 30000000, 13.0, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Phobos', 4, 11, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 6, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Europa', 2, 1561, false, true, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Ganymede', 2, 2634, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Callisto', 2, 2410, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Titan', 6, 2576, true, false, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Enceladus', 6, 252, true, false, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Miranda', 8, 236, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Triton', 9, 1353, true, false, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Charon', 10, 604, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Dione', 7, 561, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Hyperion', 7, 135, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 7, 735, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', 7, 764, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', 7, 531, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Mimas', 7, 198, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Phoebe', 11, 107, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Janus', 7, 90, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Pandora', 7, 41, false, false, NULL, NULL);
INSERT INTO public.moon VALUES (1, 'Luna', 3, 1738, false, false, 27, 38);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Terrestrial', 4879, false, 57900000, false, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Terrestrial', 12104, false, 108200000, false, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Terrestrial', 6779, false, 227900000, false, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Gas Giant', 139820, false, 778300000, false, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas Giant', 116460, false, 1427000000, false, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Ice Giant', 50724, false, 2871000000, false, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Ice Giant', 49244, false, 4495000000, false, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima b', 4, 'Terrestrial', 12100, false, 12000, false, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 2, 'Terrestrial', 8500, false, 6000000, false, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 3, 'Super-Earth', NULL, false, 120000000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 5, 'Terrestrial', 8500, true, 40000000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Terrestrial', 12742, true, 149600000, true, 288, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type', 1.0, true);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, 'G-type', 1.1, true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 1, 'K-type', 0.9, true);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, 'M-type', 0.12, false);
INSERT INTO public.star VALUES (5, 'Sirius A', 2, 'A-type', 2.1, true);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 2, 'M-type', 20.0, true);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
