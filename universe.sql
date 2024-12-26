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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT true,
    distance_from_earth numeric,
    description text,
    planet_id integer
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
    name character varying NOT NULL,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT true,
    distance_from_earth numeric,
    description text,
    star_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text,
    galaxy_id integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Cigar', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Hoags Object', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Canis Major Overdensity', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Sombrero', NULL, NULL, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Ursa Major', NULL);
INSERT INTO public.galaxy_types VALUES (2, 'Sagittarius', NULL);
INSERT INTO public.galaxy_types VALUES (3, 'Pegasus', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, true, NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Mimas', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (3, 'Epimetheus', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (4, 'Narvi', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (5, 'Siarnaq', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (6, 'Greis', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Janus', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Suttungr', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Pallene', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Fenrir', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Hyrrokkin', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Europa', false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Ganymede', false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'Callisto', false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'Io', false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'Amalthea', false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'Himalia', false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'Elara', false, true, NULL, NULL, 5);
INSERT INTO public.moon VALUES (19, 'Phobos', false, true, NULL, NULL, 4);
INSERT INTO public.moon VALUES (20, 'Deimos', false, true, NULL, NULL, 4);
INSERT INTO public.moon VALUES (21, 'Icy Triton', false, true, NULL, NULL, 8);
INSERT INTO public.moon VALUES (22, 'Charon', false, true, NULL, NULL, 9);
INSERT INTO public.moon VALUES (23, 'Miranda', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (24, 'Ariel', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (25, 'Umbriel', false, true, NULL, NULL, 7);
INSERT INTO public.moon VALUES (26, 'Kari', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (27, 'Loge', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (28, 'Skoll', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (29, 'Surtur', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (30, 'Aegaeon', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (31, 'Gerd', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (32, 'Eggther', false, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (33, 'Skrymir', false, true, NULL, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (3, 'Earth', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (9, 'Pluto', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Ornus', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Haumea', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'Makemake', false, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (13, 'Quaoar', false, true, NULL, NULL, 5);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Inner Planets', NULL);
INSERT INTO public.planet_types VALUES (2, 'Outer Planets', NULL);
INSERT INTO public.planet_types VALUES (3, 'Dwarf Planets', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Arcturus', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Gamma Pegasi', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 'Algol', NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (7, 'Antares', NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (8, 'Zeta Leonis', NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (9, 'Alpha Gruis', NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (10, 'Altair', NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (11, 'Beta Cephei', NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (12, 'Gamma Geminorum', NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (13, 'Sun', NULL, NULL, NULL, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

