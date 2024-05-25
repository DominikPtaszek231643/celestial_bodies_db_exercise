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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    surface_in_m2 numeric(10,2),
    description text NOT NULL,
    has_life boolean NOT NULL
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
-- Name: general_information; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.general_information (
    general_information_id integer NOT NULL,
    name character varying(100) NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.general_information OWNER TO freecodecamp;

--
-- Name: general_information_gen_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.general_information_gen_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.general_information_gen_info_id_seq OWNER TO freecodecamp;

--
-- Name: general_information_gen_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.general_information_gen_info_id_seq OWNED BY public.general_information.general_information_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    surface_in_m2 numeric(10,2),
    planet_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    surface_in_m2 numeric(10,2),
    star_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    surface_in_m2 numeric(10,2),
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: general_information general_information_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_information ALTER COLUMN general_information_id SET DEFAULT nextval('public.general_information_gen_info_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Mleczna', 1500, 20000, 1525.00, 'nice planet', true);
INSERT INTO public.galaxy VALUES (2, 'Blakc hole', 1500, 20000, 1525.00, 'nice planet', false);
INSERT INTO public.galaxy VALUES (3, 'Big galaxus', 1541240, 201100, 14525.00, 'nice galaxy', true);
INSERT INTO public.galaxy VALUES (6, 'Mc1', 20, 150, 300.00, 'Mc1 desc', false);
INSERT INTO public.galaxy VALUES (7, 'Mc2', 20, 150, 0.00, 'Mc2 desc', false);
INSERT INTO public.galaxy VALUES (8, 'Mc3', 2, 150, 300.00, 'Mc3 desc', false);


--
-- Data for Name: general_information; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.general_information VALUES (1, 'Jowisz', NULL);
INSERT INTO public.general_information VALUES (2, 'Mars', NULL);
INSERT INTO public.general_information VALUES (3, 'Earth', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Small moon', 25, 500, 1000.00, 1);
INSERT INTO public.moon VALUES (2, 'Medium  moon', 25, 541420, 1000.00, 2);
INSERT INTO public.moon VALUES (3, 'Big moon', 25, 1241, 1000.00, 3);
INSERT INTO public.moon VALUES (4, 'M1', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (5, 'M2', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (6, 'M3', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (7, 'M4', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (8, 'M5', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (9, 'M6', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (10, 'M4', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (11, 'M5', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (12, 'M6', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (13, 'M4', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (14, 'M5', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (15, 'M6', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (16, 'M4', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (17, 'M5', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (18, 'M6', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (19, 'M4', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (20, 'M5', 100, 200, 300.00, 3);
INSERT INTO public.moon VALUES (21, 'M6', 100, 200, 300.00, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 10, 15, 500.00, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 100, 15, 500.00, 2);
INSERT INTO public.planet VALUES (3, 'Jowisz', 10, 15, 500.00, 3);
INSERT INTO public.planet VALUES (4, 'P1', 20, 150, 300.00, 3);
INSERT INTO public.planet VALUES (5, 'P2', 20, 150, 4.00, 2);
INSERT INTO public.planet VALUES (6, 'P3', 2, 150, 300.00, 2);
INSERT INTO public.planet VALUES (7, 'P4', 20, 150, 300.00, 3);
INSERT INTO public.planet VALUES (8, 'P5', 20, 150, 4.00, 2);
INSERT INTO public.planet VALUES (9, 'P6', 2, 150, 300.00, 2);
INSERT INTO public.planet VALUES (10, 'P7', 20, 150, 300.00, 3);
INSERT INTO public.planet VALUES (11, 'P8', 20, 150, 4.00, 2);
INSERT INTO public.planet VALUES (12, 'P9', 2, 150, 300.00, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Big Star', 20, 150, 300.00, true, 1);
INSERT INTO public.star VALUES (2, 'Small Star', 100, 150, 300.00, false, 1);
INSERT INTO public.star VALUES (3, 'Medium Star', 2000, 150, 300.00, true, 2);
INSERT INTO public.star VALUES (5, 'Sc1', 20, 150, 300.00, false, 3);
INSERT INTO public.star VALUES (6, 'Sc2', 20, 150, 4.00, false, 2);
INSERT INTO public.star VALUES (7, 'Sc3', 2, 150, 300.00, false, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: general_information_gen_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.general_information_gen_info_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: general_information gen_info_id_uq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_information
    ADD CONSTRAINT gen_info_id_uq UNIQUE (general_information_id);


--
-- Name: general_information general_information_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_information
    ADD CONSTRAINT general_information_pkey PRIMARY KEY (general_information_id);


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
-- Name: general_information name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_information
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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

