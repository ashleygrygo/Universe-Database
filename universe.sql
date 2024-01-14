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
-- Name: connections; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.connections (
    connections_id integer NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.connections OWNER TO freecodecamp;

--
-- Name: connections_connections_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.connections_connections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.connections_connections_id_seq OWNER TO freecodecamp;

--
-- Name: connections_connections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.connections_connections_id_seq OWNED BY public.connections.connections_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(40),
    age_in_billion_years numeric,
    size text
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
    planet_id integer,
    has_atmosphere boolean,
    orbital_period_in_days integer
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
    name character varying(30) NOT NULL,
    star_id integer,
    distance_from_sun text,
    orbital_period_in_days integer,
    gravity numeric,
    has_life boolean
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
    name character varying(30) NOT NULL,
    star_type character varying(40),
    distance_to_earth text,
    magnitude numeric,
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
-- Name: connections connections_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connections ALTER COLUMN connections_id SET DEFAULT nextval('public.connections_connections_id_seq'::regclass);


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
-- Data for Name: connections; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.connections VALUES (1, 1, 7, 1, 4, 'jupiter_connection');
INSERT INTO public.connections VALUES (2, 1, 7, 2, 8, 'saturn_connection');
INSERT INTO public.connections VALUES (3, 1, 7, 6, 2, 'earth_connection');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred spiral', 13.6, '100,000 light years across');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Barred spiral', 10.01, '~200,000 light years across');
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf Galaxy', 'Irregular', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cygnus A', 'Elliptical', 0.003, '~540,000 light years across');
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 'Supergiant elliptical', 13.24, '120,000 light years across');
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', 'Irregular', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', 2, true, 16);
INSERT INTO public.moon VALUES (2, 'Moon', 6, true, 27);
INSERT INTO public.moon VALUES (3, 'Enceladus', 2, false, 1);
INSERT INTO public.moon VALUES (4, 'Europa', 1, false, 3);
INSERT INTO public.moon VALUES (5, 'Eris', 4, false, 203670);
INSERT INTO public.moon VALUES (6, 'Ceres', 1, false, 1682);
INSERT INTO public.moon VALUES (7, 'Ganymede', 1, false, 7);
INSERT INTO public.moon VALUES (8, 'Mimas', 2, false, 1);
INSERT INTO public.moon VALUES (9, 'Io', 1, false, 2);
INSERT INTO public.moon VALUES (10, 'Adrastea', 1, false, NULL);
INSERT INTO public.moon VALUES (11, 'Phobos', 8, false, 1);
INSERT INTO public.moon VALUES (12, 'Deimos', 8, false, 1);
INSERT INTO public.moon VALUES (13, 'Callisto', 1, false, 16);
INSERT INTO public.moon VALUES (14, 'Atlas', 2, false, 0);
INSERT INTO public.moon VALUES (15, 'Pandora', 2, false, 1);
INSERT INTO public.moon VALUES (16, 'Ariel', 3, false, 2);
INSERT INTO public.moon VALUES (17, 'Oberon', 3, false, 13);
INSERT INTO public.moon VALUES (18, 'Miranda', 3, false, 1);
INSERT INTO public.moon VALUES (19, 'Puck', 3, false, 1);
INSERT INTO public.moon VALUES (20, 'Triton', 4, false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', 7, '483.8 million mi', 4333, 24.79, true);
INSERT INTO public.planet VALUES (2, 'Saturn', 7, '890.8 million mi', 10756, 10.44, false);
INSERT INTO public.planet VALUES (3, 'Uranus', 7, '1,784 billion mi', 30660, 8.87, false);
INSERT INTO public.planet VALUES (4, 'Neptune', 7, '2.793 billionmi', 60225, 11.15, false);
INSERT INTO public.planet VALUES (5, 'Venus', 7, '67.24 million mi', 225, 8.87, false);
INSERT INTO public.planet VALUES (6, 'Earth', 7, '92.96 million mi', 365, 9.807, true);
INSERT INTO public.planet VALUES (7, 'Mercury', 7, '36.04 million mi', 88, 3.7, false);
INSERT INTO public.planet VALUES (8, 'Mars', 7, '141.6 million mi', 687, 3.721, false);
INSERT INTO public.planet VALUES (9, 'Pluto', 7, '3.7 billion mi', 90520, 0.62, false);
INSERT INTO public.planet VALUES (10, 'Ego', NULL, '500.8 million mi', 15782, 7.087, true);
INSERT INTO public.planet VALUES (11, 'Caprica', 3, '2.3 billion mi', 905, 10.03, false);
INSERT INTO public.planet VALUES (12, 'Coruscant', 2, '62.9 million mi', 4512, 5.71, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'White Dwarf', '8.611 light years', -1.33, 3);
INSERT INTO public.star VALUES (2, 'Altair', NULL, '16.73 light years', 0.77, NULL);
INSERT INTO public.star VALUES (3, 'Pollux', NULL, '33.72 light years', 1.14, NULL);
INSERT INTO public.star VALUES (4, 'Vega', 'A0V', '25.05 light years', 0.03, NULL);
INSERT INTO public.star VALUES (5, 'Polaris', 'Cepheid variable', '323 light years', 1.98, 1);
INSERT INTO public.star VALUES (6, 'Castor', 'BY Draconis', '50.88 light years', 0.0733, 1);
INSERT INTO public.star VALUES (7, 'Sun', 'Yellow dwarf', '92.96 million mi', 4.83, 1);


--
-- Name: connections_connections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.connections_connections_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: connections connections_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_name_key UNIQUE (name);


--
-- Name: connections connections_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_pkey PRIMARY KEY (connections_id);


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
-- Name: connections connections_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: connections connections_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: connections connections_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: connections connections_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

