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
    name character varying NOT NULL,
    mass integer,
    age integer,
    visited boolean,
    about text
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
    name character varying NOT NULL,
    mass integer,
    age integer,
    visited boolean,
    about text,
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
-- Name: person; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    name character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    email text,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.person OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    mass integer,
    age integer,
    visited boolean,
    about text,
    population numeric,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    mass integer,
    age integer,
    visited boolean,
    about text,
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
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.person.person_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'andromeda', 45612784, 99999, false, 'this is test');
INSERT INTO public.galaxy VALUES (2, 'antennae', 45612784, 99999, false, 'this is test');
INSERT INTO public.galaxy VALUES (3, 'backward', 45612784, 99999, false, 'this is test');
INSERT INTO public.galaxy VALUES (4, 'black eye', 45612784, 99999, false, 'this is test');
INSERT INTO public.galaxy VALUES (5, 'bodes', 45612784, 99999, false, 'this is test');
INSERT INTO public.galaxy VALUES (6, 'butterfly', 45612784, 99999, false, 'this is test');
INSERT INTO public.galaxy VALUES (7, 'cartwheel', 45612784, 99999, false, 'this is test');
INSERT INTO public.galaxy VALUES (8, 'milky way', 45612784, 99999, false, 'this is test');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 8521479, 999999, false, 'this is test', 3);
INSERT INTO public.moon VALUES (2, 'm2', 8521479, 999999, false, 'this is test', 4);
INSERT INTO public.moon VALUES (3, 'm3', 8521479, 999999, false, 'this is test', 4);
INSERT INTO public.moon VALUES (4, 'm4', 8521479, 999999, false, 'this is test', 5);
INSERT INTO public.moon VALUES (5, 'm5', 8521479, 999999, false, 'this is test', 5);
INSERT INTO public.moon VALUES (6, 'm6', 8521479, 999999, false, 'this is test', 5);
INSERT INTO public.moon VALUES (7, 'm7', 8521479, 999999, false, 'this is test', 5);
INSERT INTO public.moon VALUES (8, 'm8', 8521479, 999999, false, 'this is test', 5);
INSERT INTO public.moon VALUES (9, 'm9', 8521479, 999999, false, 'this is test', 5);
INSERT INTO public.moon VALUES (10, 'm10', 8521479, 999999, false, 'this is test', 5);
INSERT INTO public.moon VALUES (11, 'm11', 8521479, 999999, false, 'this is test', 5);
INSERT INTO public.moon VALUES (12, 'm12', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.moon VALUES (13, 'm13', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.moon VALUES (14, 'm14', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.moon VALUES (15, 'm15', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.moon VALUES (16, 'm16', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.moon VALUES (17, 'm17', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.moon VALUES (18, 'm18', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.moon VALUES (19, 'm19', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.moon VALUES (20, 'm20', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.moon VALUES (21, 'm21', 8521479, 999999, false, 'this is test', 7);
INSERT INTO public.moon VALUES (22, 'm22', 8521479, 999999, false, 'this is test', 8);
INSERT INTO public.moon VALUES (23, 'm23', 8521479, 999999, false, 'this is test', 9);
INSERT INTO public.moon VALUES (24, 'm24', 8521479, 999999, false, 'this is test', 10);
INSERT INTO public.moon VALUES (25, 'm25', 8521479, 999999, false, 'this is test', 11);
INSERT INTO public.moon VALUES (26, 'm26', 8521479, 999999, false, 'this is test', 12);
INSERT INTO public.moon VALUES (27, 'm27', 8521479, 999999, false, 'this is test', 13);
INSERT INTO public.moon VALUES (28, 'm28', 8521479, 999999, false, 'this is test', 14);
INSERT INTO public.moon VALUES (29, 'm29', 8521479, 999999, false, 'this is test', 15);
INSERT INTO public.moon VALUES (30, 'm30', 8521479, 999999, false, 'this is test', 16);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.person VALUES (1, 'fadi', 'omar', 'test@gmail.com', 8, 11, 3, 1);
INSERT INTO public.person VALUES (2, 'fadi1', 'omar', 'test1@gmail.com', 8, 11, 3, 1);
INSERT INTO public.person VALUES (3, 'fadi2', 'omar', 'test2@gmail.com', 8, 11, 3, 1);
INSERT INTO public.person VALUES (4, 'fadi3', 'omar', 'test3@gmail.com', 8, 11, 3, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (2, 'venus', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (3, 'earth', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (4, 'mars', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (5, 'jupiter', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (6, 'saturn', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (7, 'uranus', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (8, 'neptune', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (9, 'Dwarf Planets', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (10, 'pluto', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (11, 'eris', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (12, 'haumea', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (13, 'makemake', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (14, 'ceres', 8521479, 999999, false, 'this is test', NULL, 11);
INSERT INTO public.planet VALUES (15, 'p1', 8521479, 999999, false, 'this is test', NULL, 1);
INSERT INTO public.planet VALUES (16, 'p2', 8521479, 999999, false, 'this is test', NULL, 2);
INSERT INTO public.planet VALUES (17, 'p3', 8521479, 999999, false, 'this is test', NULL, 3);
INSERT INTO public.planet VALUES (18, 'p4', 8521479, 999999, false, 'this is test', NULL, 4);
INSERT INTO public.planet VALUES (19, 'p5', 8521479, 999999, false, 'this is test', NULL, 5);
INSERT INTO public.planet VALUES (20, 'p6', 8521479, 999999, false, 'this is test', NULL, 6);
INSERT INTO public.planet VALUES (21, 'p7', 8521479, 999999, false, 'this is test', NULL, 7);
INSERT INTO public.planet VALUES (22, 'p8', 8521479, 999999, false, 'this is test', NULL, 8);
INSERT INTO public.planet VALUES (23, 'p9', 8521479, 999999, false, 'this is test', NULL, 9);
INSERT INTO public.planet VALUES (24, 'p10', 8521479, 999999, false, 'this is test', NULL, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'alpha', 8521479, 999999, false, 'this is test', 1);
INSERT INTO public.star VALUES (2, 'beta', 8521479, 999999, false, 'this is test', 1);
INSERT INTO public.star VALUES (3, 'gama', 8521479, 999999, false, 'this is test', 1);
INSERT INTO public.star VALUES (4, 'arms', 8521479, 999999, false, 'this is test', 2);
INSERT INTO public.star VALUES (5, 'NGC 4622', 8521479, 999999, false, 'this is test', 3);
INSERT INTO public.star VALUES (6, 'Messier 64', 8521479, 999999, false, 'this is test', 4);
INSERT INTO public.star VALUES (7, 'NGC 4826', 8521479, 999999, false, 'this is test', 4);
INSERT INTO public.star VALUES (8, 'Messier 81', 8521479, 999999, false, 'this is test', 5);
INSERT INTO public.star VALUES (9, 'NGC 6302', 8521479, 999999, false, 'this is test', 6);
INSERT INTO public.star VALUES (10, 'ESA', 8521479, 999999, false, 'this is test', 7);
INSERT INTO public.star VALUES (11, 'the Sun', 8521479, 999999, false, 'this is test', 8);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 4, true);


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
-- Name: person users_email_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: person users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT users_pkey PRIMARY KEY (person_id);


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
-- Name: person users_fav_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT users_fav_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: person users_fav_moon_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT users_fav_moon_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: person users_fav_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT users_fav_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: person users_fav_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT users_fav_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

