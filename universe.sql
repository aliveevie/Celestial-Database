--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(250),
    galaxy_types text NOT NULL,
    distance_from_earth numeric,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(30) NOT NULL,
    number_of_days integer,
    description text NOT NULL,
    age integer,
    has_life boolean,
    distance integer,
    name character varying(250)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    has_life boolean NOT NULL,
    distance integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(250) NOT NULL,
    star_types text,
    distance integer,
    age_in_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: total; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.total (
    total_id integer NOT NULL,
    name character varying(250) NOT NULL,
    name_id integer
);


ALTER TABLE public.total OWNER TO freecodecamp;

--
-- Name: total_total_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.total_total_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.total_total_id_seq OWNER TO freecodecamp;

--
-- Name: total_total_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.total_total_id_seq OWNED BY public.total.total_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: total total_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.total ALTER COLUMN total_id SET DEFAULT nextval('public.total_total_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gmilky way', 'home', 75000, NULL);
INSERT INTO public.galaxy VALUES (3, 'canis major', 'home', 25000, NULL);
INSERT INTO public.galaxy VALUES (2, 'segue1', 'satellite', 2000, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, 'The good month', NULL, true);
INSERT INTO public.galaxy VALUES (5, NULL, 'The good month', NULL, true);
INSERT INTO public.galaxy VALUES (6, NULL, 'The good month', NULL, false);
INSERT INTO public.galaxy VALUES (7, NULL, 'The good month', NULL, true);
INSERT INTO public.galaxy VALUES (8, NULL, 'The good month', NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('jan', 31, 'The best month', 400, true, NULL, NULL);
INSERT INTO public.moon VALUES ('feb', 28, 'Good month', 400, true, NULL, NULL);
INSERT INTO public.moon VALUES ('mar', 31, 'Good month', 400, true, NULL, NULL);
INSERT INTO public.moon VALUES ('Apr', 30, 'Good month', 400, true, NULL, NULL);
INSERT INTO public.moon VALUES ('may', 30, 'Good month', 400, true, NULL, NULL);
INSERT INTO public.moon VALUES ('june', 30, 'Good month', 400, true, NULL, NULL);
INSERT INTO public.moon VALUES ('july', 30, 'Good month', 400, true, NULL, NULL);
INSERT INTO public.moon VALUES ('aug', NULL, 'The good month', 24, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('sept', NULL, 'The good month', 24, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('nov', NULL, 'The good month', 24, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('safar', NULL, 'The good month', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('rabawl', NULL, 'The good month', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('rabsan', NULL, 'The good month', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('jumawl', NULL, 'The good month', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('jumsan', NULL, 'The good month', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('rajab', NULL, 'The good month', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('shaaban', NULL, 'The good month', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('ramadan', NULL, 'The good month', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('zulhijja', NULL, 'The good month', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('December', NULL, 'The bad days', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', true, false, 77, 'very close to earth');
INSERT INTO public.planet VALUES (2, 'venus', true, false, 40, 'very close to earth');
INSERT INTO public.planet VALUES (3, 'earth', true, true, 0, 'Human lives in it');
INSERT INTO public.planet VALUES (4, 'mars', true, false, 156, 'The mars elon musk wan to occupied');
INSERT INTO public.planet VALUES (5, 'jupiter', true, false, 106, 'Planet that newly married couple want to visit');
INSERT INTO public.planet VALUES (6, 'saturn', true, false, 120, 'It has 1.2billion distance from the earth');
INSERT INTO public.planet VALUES (8, 'uranus', true, false, 260, 'It 2.6billions close to the earth and it rotate anti-clock wise');
INSERT INTO public.planet VALUES (9, 'neptune', true, false, 270, 'This is 2.7 billions mile of km away from the earth');
INSERT INTO public.planet VALUES (10, 'pluto', true, false, 465, 'This is 2.9 billions of km away from the earth');
INSERT INTO public.planet VALUES (11, 'sun', true, false, 350, 'The hot sun');
INSERT INTO public.planet VALUES (12, 'moon', true, false, 355, 'The moon');
INSERT INTO public.planet VALUES (13, 'Galaxies', true, false, 356, 'The galaxies');
INSERT INTO public.planet VALUES (15, 'space', true, false, 357, 'The sky blue');
INSERT INTO public.planet VALUES (16, 'sky blue', NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'The space', NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'The man in space', NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'The cloud', NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'The hemisphere', NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'The spherical', NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'The atm', NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'The atomic', NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'The atomilc', NULL, false, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima', 'sky', NULL, NULL);
INSERT INTO public.star VALUES (2, 'Barnard', 'water', NULL, NULL);
INSERT INTO public.star VALUES (3, 'Rigil', 'heat', NULL, NULL);
INSERT INTO public.star VALUES (5, 'hotstar', 'home', 270, NULL);
INSERT INTO public.star VALUES (6, 'zarah', 'sky', 465, NULL);
INSERT INTO public.star VALUES (7, 'zarah wata', 'sky', 260, NULL);


--
-- Data for Name: total; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.total VALUES (29, 'khalisa', NULL);
INSERT INTO public.total VALUES (30, 'khalisa', NULL);
INSERT INTO public.total VALUES (31, 'khalisa', NULL);
INSERT INTO public.total VALUES (33, 'khalisa', NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 24, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: total_total_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.total_total_id_seq', 1, false);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: planet planet_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_in_millions_of_years_key UNIQUE (distance);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: total total_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.total
    ADD CONSTRAINT total_name_id_key UNIQUE (name_id);


--
-- Name: total total_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.total
    ADD CONSTRAINT total_pkey PRIMARY KEY (total_id);


--
-- Name: moon moon_distance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_fkey FOREIGN KEY (distance) REFERENCES public.planet(distance);


--
-- Name: star star_distance_from_earth_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_fkey FOREIGN KEY (distance) REFERENCES public.planet(distance);


--
-- PostgreSQL database dump complete
--

