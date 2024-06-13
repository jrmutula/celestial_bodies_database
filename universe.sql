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
    galaxy_types character varying(30) NOT NULL,
    distance_from_earth_in_light_years integer NOT NULL,
    galaxy_name character varying(30) NOT NULL,
    age_in_billions_of_years numeric(10,2) NOT NULL,
    description text NOT NULL,
    name character varying(30)
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
    moon_id integer NOT NULL,
    moon_name character varying(30) NOT NULL,
    planet_name character varying(30),
    name character varying(30),
    type character varying(30)
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
    has_life boolean NOT NULL,
    planet_name character varying(30) NOT NULL,
    star_name character varying(30),
    name character varying(30)
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
-- Name: sol; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sol (
    sol_id integer NOT NULL,
    moons integer,
    description text,
    has_life boolean NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.sol OWNER TO freecodecamp;

--
-- Name: sol_pl_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sol_pl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sol_pl_id_seq OWNER TO freecodecamp;

--
-- Name: sol_pl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sol_pl_id_seq OWNED BY public.sol.sol_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_type character varying(30) NOT NULL,
    distance_from_earth_in_ly integer NOT NULL,
    star_name character varying(30) NOT NULL,
    description text NOT NULL,
    galaxy_name character varying(30),
    name character varying(30)
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: sol sol_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sol ALTER COLUMN sol_id SET DEFAULT nextval('public.sol_pl_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'spiral', 2500000, 'andromeda', 2.50, 'andromeda is also known as messier 31 (M31)', NULL);
INSERT INTO public.galaxy VALUES (3, 'spiral', 18000000, 'black eye', 13.28, 'black eye is also known as messier 64 (M64)', NULL);
INSERT INTO public.galaxy VALUES (2, 'barred spiral', 26000, 'milky way', 10.61, 'the Milky Way is a large barred spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (4, 'spiral', 29350000, 'sombrero', 13.25, 'sombrero is also known as messier 104 (M104)', NULL);
INSERT INTO public.galaxy VALUES (5, 'starburst', 12000000, 'cigar', 13.30, 'cigar is also known as messier 82 (M82)', NULL);
INSERT INTO public.galaxy VALUES (6, 'spiral', 23000000, 'whirlpool', 400.30, 'whirlpool is also known as messier 51a or NGC 5194', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'forza', 'meta14', NULL, NULL);
INSERT INTO public.moon VALUES (2, 'grifo', 'beta6', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'jos67', 'scorpius42', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'jasmin', 'hexa257', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'john', 'corpius', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'james', 'kufini16', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'ryan', 'kumalo80', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'dreams', 'hexa257', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'lauren', 'branth34', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'nolan', 'gio473', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'grace', 'scorpius42', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'aron', 'kumalo80', NULL, NULL);
INSERT INTO public.moon VALUES (11, 'beck', 'corpius', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'jacqueline', 'branth34', NULL, NULL);
INSERT INTO public.moon VALUES (21, 'philip', 'kufini16', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'jos', 'beta6', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'ineos', 'hot neptune', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'zakayo', 'kumalo80', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'downey', 'beta6', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'kasabian', 'beta6', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'glazers', 'beta6', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, false, 'hot neptune', 'vega', NULL);
INSERT INTO public.planet VALUES (2, false, 'meta14', 'rigel', NULL);
INSERT INTO public.planet VALUES (3, false, 'delta12', 'rigel', NULL);
INSERT INTO public.planet VALUES (4, false, 'beta6', 'rigel', NULL);
INSERT INTO public.planet VALUES (5, false, 'scorpius42', 'antares', NULL);
INSERT INTO public.planet VALUES (6, false, 'gio473', 'vega', NULL);
INSERT INTO public.planet VALUES (13, false, 'branth34', 'sirius', NULL);
INSERT INTO public.planet VALUES (14, false, 'greta14', 'sirius', NULL);
INSERT INTO public.planet VALUES (15, false, 'kufini16', 'delta andromedae', NULL);
INSERT INTO public.planet VALUES (16, false, 'kumalo80', 'delta andromedae', NULL);
INSERT INTO public.planet VALUES (17, false, 'corpius', 'sirius', NULL);
INSERT INTO public.planet VALUES (18, false, 'hexa257', 'betelgeuse', NULL);


--
-- Data for Name: sol; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sol VALUES (2, 0, NULL, false, 'mercury');
INSERT INTO public.sol VALUES (3, 0, NULL, false, 'venus');
INSERT INTO public.sol VALUES (4, 1, NULL, true, 'earth');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'binary', 97, 'delta andromedae', 'a triple star system in the northern constellation of Andromeda', 'andromeda', NULL);
INSERT INTO public.star VALUES (2, 'main sequence star', 25, 'vega', 'is the brightest star in the northern constellation of lyra', 'milky way', NULL);
INSERT INTO public.star VALUES (3, 'supergiant', 864, 'rigel', 'a blue supergiant star in the constellation of orion', 'milky way', NULL);
INSERT INTO public.star VALUES (4, 'supergiant', 600, 'antares', 'a red supergiant star in the constellation of sporpius', 'milky way', NULL);
INSERT INTO public.star VALUES (5, 'supergiant', 700, 'betelgeuse', 'a red supergiant star in the constellation of orion', 'milky way', NULL);
INSERT INTO public.star VALUES (6, 'binary', 9, 'sirius', 'the brightest star in the night sky', 'milky way', NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: sol_pl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sol_pl_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (moon_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (planet_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: sol sol_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sol
    ADD CONSTRAINT sol_name_key UNIQUE (name);


--
-- Name: sol sol_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sol
    ADD CONSTRAINT sol_pkey PRIMARY KEY (sol_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- PostgreSQL database dump complete
--


