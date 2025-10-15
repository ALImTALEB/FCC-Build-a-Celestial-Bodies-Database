--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    age_distance_from_earth integer,
    distance_from_moon numeric,
    code character varying(50)
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    age_distance_from_earth integer,
    description text,
    is_spher boolean,
    planet_id integer NOT NULL,
    code character varying(50)
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
    name character varying(30),
    age_in_millions_of_years integer,
    age_distance_from_earth integer,
    star_id integer NOT NULL,
    code character varying(50)
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
-- Name: spaceprob; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceprob (
    spaceprob_id integer NOT NULL,
    name character varying(50) NOT NULL,
    launch_year integer,
    planet_id integer,
    code character varying(50)
);


ALTER TABLE public.spaceprob OWNER TO freecodecamp;

--
-- Name: space_probe_probe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_probe_probe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_probe_probe_id_seq OWNER TO freecodecamp;

--
-- Name: space_probe_probe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_probe_probe_id_seq OWNED BY public.spaceprob.spaceprob_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    age_distance_from_earth integer,
    is_spher boolean,
    galaxy_id integer,
    code character varying(50)
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
-- Name: spaceprob spaceprob_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceprob ALTER COLUMN spaceprob_id SET DEFAULT nextval('public.space_probe_probe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 0, 0, 'GAL-1');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2500000, 2499999.5, 'GAL-2');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12000, 3000000, 2999999.8, 'GAL-3');
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 13600, 0, 0, 'GAL-4');
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 10000, 2500000, 2499999.5, 'GAL-5');
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 12000, 3000000, 2999999.8, 'GAL-6');
INSERT INTO public.galaxy VALUES (7, 'Whirlpool', 15000, 23000000, 22999999.7, 'GAL-7');
INSERT INTO public.galaxy VALUES (8, 'Sombrero', 13000, 29000000, 28999999.9, 'GAL-8');
INSERT INTO public.galaxy VALUES (9, 'Pinwheel', 14000, 21000000, 20999999.6, 'GAL-9');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 0, 'Earths only natural satellite', true, 1, 'MOON-1');
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 78, 'One of Mars moons', false, 2, 'MOON-2');
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 78, 'Smaller Mars moon', false, 2, 'MOON-3');
INSERT INTO public.moon VALUES (4, 'Moon', 4500, 0, 'Earths only natural satellite', true, 1, 'MOON-4');
INSERT INTO public.moon VALUES (5, 'Phobos', 4500, 78, 'One of Mars moons', false, 2, 'MOON-5');
INSERT INTO public.moon VALUES (6, 'Deimos', 4500, 78, 'Smaller Mars moon', false, 2, 'MOON-6');
INSERT INTO public.moon VALUES (7, 'Venus Moon 1', 4600, 108, 'Moon of Venus', true, 3, 'MOON-7');
INSERT INTO public.moon VALUES (8, 'Venus Moon 2', 4600, 108, 'Second Moon of Venus', true, 3, 'MOON-8');
INSERT INTO public.moon VALUES (9, 'Mercury Moon 1', 4600, 57, 'Moon of Mercury', true, 4, 'MOON-9');
INSERT INTO public.moon VALUES (10, 'Mercury Moon 2', 4600, 57, 'Second Moon of Mercury', true, 4, 'MOON-10');
INSERT INTO public.moon VALUES (11, 'Proxima b Moon 1', 5000, 4, 'Moon of Proxima b', true, 5, 'MOON-11');
INSERT INTO public.moon VALUES (12, 'Proxima b Moon 2', 5000, 4, 'Second Moon of Proxima b', true, 5, 'MOON-12');
INSERT INTO public.moon VALUES (13, 'Proxima c Moon 1', 5000, 6, 'Moon of Proxima c', true, 6, 'MOON-13');
INSERT INTO public.moon VALUES (14, 'Proxima c Moon 2', 5000, 6, 'Second Moon of Proxima c', true, 6, 'MOON-14');
INSERT INTO public.moon VALUES (15, 'Rigel-1 Moon 1', 8500, 860, 'Moon of Rigel-1', true, 7, 'MOON-15');
INSERT INTO public.moon VALUES (16, 'Rigel-1 Moon 2', 8500, 860, 'Second Moon of Rigel-1', true, 7, 'MOON-16');
INSERT INTO public.moon VALUES (17, 'Rigel-2 Moon 1', 8400, 870, 'Moon of Rigel-2', true, 8, 'MOON-17');
INSERT INTO public.moon VALUES (18, 'Rigel-2 Moon 2', 8400, 870, 'Second Moon of Rigel-2', true, 8, 'MOON-18');
INSERT INTO public.moon VALUES (19, 'Vega-1 Moon 1', 4550, 25, 'Moon of Vega-1', true, 9, 'MOON-19');
INSERT INTO public.moon VALUES (20, 'Vega-1 Moon 2', 4550, 25, 'Second Moon of Vega-1', true, 9, 'MOON-20');
INSERT INTO public.moon VALUES (21, 'Vega-2 Moon 1', 4540, 27, 'Moon of Vega-2', true, 10, 'MOON-21');
INSERT INTO public.moon VALUES (22, 'Sirius-1 Moon 1', 242, 8, 'Moon of Sirius-1', true, 11, 'MOON-22');
INSERT INTO public.moon VALUES (23, 'Sirius-2 Moon 1', 240, 10, 'Moon of Sirius-2', true, 12, 'MOON-23');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4600, 0, 1, 'PLANET-1');
INSERT INTO public.planet VALUES (2, 'Mars', 4500, 78, 1, 'PLANET-2');
INSERT INTO public.planet VALUES (3, 'Proxima b', 5000, 4, 2, 'PLANET-3');
INSERT INTO public.planet VALUES (4, 'Earth', 4600, 0, 1, 'PLANET-4');
INSERT INTO public.planet VALUES (5, 'Mars', 4500, 78, 1, 'PLANET-5');
INSERT INTO public.planet VALUES (6, 'Venus', 4600, 108, 1, 'PLANET-6');
INSERT INTO public.planet VALUES (7, 'Mercury', 4600, 57, 1, 'PLANET-7');
INSERT INTO public.planet VALUES (8, 'Proxima b', 5000, 4, 2, 'PLANET-8');
INSERT INTO public.planet VALUES (9, 'Proxima c', 5000, 6, 2, 'PLANET-9');
INSERT INTO public.planet VALUES (10, 'Rigel-1', 8500, 860, 4, 'PLANET-10');
INSERT INTO public.planet VALUES (11, 'Rigel-2', 8400, 870, 4, 'PLANET-11');
INSERT INTO public.planet VALUES (12, 'Vega-1', 4550, 25, 5, 'PLANET-12');
INSERT INTO public.planet VALUES (13, 'Vega-2', 4540, 27, 5, 'PLANET-13');
INSERT INTO public.planet VALUES (14, 'Sirius-1', 242, 8, 6, 'PLANET-14');
INSERT INTO public.planet VALUES (15, 'Sirius-2', 240, 10, 6, 'PLANET-15');


--
-- Data for Name: spaceprob; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceprob VALUES (1, 'Voyager 1', 1977, 1, 'PROBE-001');
INSERT INTO public.spaceprob VALUES (2, 'Pioneer 10', 1972, 2, 'PROBE-002');
INSERT INTO public.spaceprob VALUES (3, 'Juno', 2011, 5, 'PROBE-003');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0, true, 1, 'STAR-1');
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 5000, 4, true, 1, 'STAR-2');
INSERT INTO public.star VALUES (3, 'Andromeda Star A', 6000, 2500000, true, 2, 'STAR-3');
INSERT INTO public.star VALUES (4, 'Sun', 4600, 0, true, 1, 'STAR-4');
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 5000, 4, true, 1, 'STAR-5');
INSERT INTO public.star VALUES (6, 'Betelgeuse', 8000, 642, true, 2, 'STAR-6');
INSERT INTO public.star VALUES (7, 'Rigel', 8600, 860, true, 2, 'STAR-7');
INSERT INTO public.star VALUES (8, 'Vega', 4550, 25, true, 3, 'STAR-8');
INSERT INTO public.star VALUES (9, 'Sirius', 242, 8, true, 3, 'STAR-9');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: space_probe_probe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_probe_probe_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_code_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_unique UNIQUE (code);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_unique UNIQUE (code);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_code_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_unique UNIQUE (code);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: spaceprob space_probe_code_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceprob
    ADD CONSTRAINT space_probe_code_unique UNIQUE (code);


--
-- Name: spaceprob space_probe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceprob
    ADD CONSTRAINT space_probe_pkey PRIMARY KEY (spaceprob_id);


--
-- Name: star star_code_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_unique UNIQUE (code);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: spaceprob space_probe_destination_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceprob
    ADD CONSTRAINT space_probe_destination_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

