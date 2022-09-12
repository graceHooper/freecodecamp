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
-- Name: artificial_satellites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.artificial_satellites (
    name character varying,
    launch_year integer NOT NULL,
    planet_id integer,
    artificial_satellites_id integer NOT NULL
);


ALTER TABLE public.artificial_satellites OWNER TO freecodecamp;

--
-- Name: artificial_satellites_artificial_satellites_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.artificial_satellites_artificial_satellites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artificial_satellites_artificial_satellites_id_seq OWNER TO freecodecamp;

--
-- Name: artificial_satellites_artificial_satellites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.artificial_satellites_artificial_satellites_id_seq OWNED BY public.artificial_satellites.artificial_satellites_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    type_of_galaxy character varying(30),
    age_in_billions_of_years numeric,
    radius_in_light_years integer NOT NULL
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
    name character varying(30),
    is_spherical boolean,
    diameter_km numeric NOT NULL,
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
    name character varying(30),
    number_of_moons integer NOT NULL,
    description_of_planet text,
    has_life boolean,
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
    name character varying(30),
    surface_temperature integer,
    spectral_type character varying(10) NOT NULL,
    apparent_magnitude numeric,
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
-- Name: artificial_satellites artificial_satellites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellites ALTER COLUMN artificial_satellites_id SET DEFAULT nextval('public.artificial_satellites_artificial_satellites_id_seq'::regclass);


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
-- Data for Name: artificial_satellites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.artificial_satellites VALUES ('Mars Odyssesy', 2001, 4, 1);
INSERT INTO public.artificial_satellites VALUES ('International Space Station', 1998, 3, 2);
INSERT INTO public.artificial_satellites VALUES ('Juno', 2016, 5, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'Tadpole Galaxy', 'Disrupted Barred Spiral', NULL, 195000);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'Spiral', NULL, 30000);
INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 'Spiral', 13.61, 52850);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Barred Spiral', 10.01, 110000);
INSERT INTO public.galaxy VALUES (8, 'Cigar Galaxy', 'Starburst', 13.3, 18500);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Unclassified', 13.25, 25000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', true, 3474.8, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', false, 12.4, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', false, 22.5, 4);
INSERT INTO public.moon VALUES (4, 'Europa', true, 3121.6, 5);
INSERT INTO public.moon VALUES (5, 'Io', true, 3643.2, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', true, 4820.6, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', true, 5268.2, 5);
INSERT INTO public.moon VALUES (8, 'Atlas', false, 30.2, 6);
INSERT INTO public.moon VALUES (9, 'Calypso', false, 21.4, 6);
INSERT INTO public.moon VALUES (10, 'Dione', true, 1122.8, 6);
INSERT INTO public.moon VALUES (11, 'Helene', false, 35.2, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', true, 1527.6, 6);
INSERT INTO public.moon VALUES (13, 'Titan', true, 5149.5, 6);
INSERT INTO public.moon VALUES (14, 'Phoebe', false, 213.0, 6);
INSERT INTO public.moon VALUES (15, 'Titania', true, 1576.8, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', true, 1157.8, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', true, 1522.8, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', true, 471.6, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', true, 1169.4, 7);
INSERT INTO public.moon VALUES (20, 'Triton', true, 2706.8, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 'Small terrestial planet.', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 'Earth sized terrestial planet.', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Terrestial plant with liquid surface water.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 'A terrestial planet also known as the Red Planet.', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, 'A gas giant with a storm called  the Great Red Spot.', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 82, 'A gas giant with a ring system.', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, 'An ice giant with faint rings.', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 'An ice giant and the only planet not visible to the naked eye from Earth.', false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-90b', 0, 'A Super Earth that has an orbit of 7 days.', false, 7);
INSERT INTO public.planet VALUES (10, 'Kepler-90c', 0, 'A Super Earth with an orbital period of 8.7 days.', false, 7);
INSERT INTO public.planet VALUES (11, 'Kepler-90d', 0, 'A Neptune-like planet.', false, 7);
INSERT INTO public.planet VALUES (12, 'Kepler-90g', 0, 'A gas giant with an orbital period of 210.6 days.', false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5778, 'G2V', -27, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 3500, 'M2lab', 0.58, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centuri', 3042, 'M5.5Ve', 11.05, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 9940, 'A1V', -1.46, 1);
INSERT INTO public.star VALUES (5, 'Copernicus', 3000, 'G8V', 5.95, 1);
INSERT INTO public.star VALUES (6, 'Vega', 9600, 'A0V', 0.026, 1);
INSERT INTO public.star VALUES (7, 'Kepler-90', 6080, 'G0V', 14, 1);


--
-- Name: artificial_satellites_artificial_satellites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.artificial_satellites_artificial_satellites_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


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
-- Name: artificial_satellites artificial_satellites_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellites
    ADD CONSTRAINT artificial_satellites_name_key UNIQUE (name);


--
-- Name: artificial_satellites artificial_satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellites
    ADD CONSTRAINT artificial_satellites_pkey PRIMARY KEY (artificial_satellites_id);


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
-- Name: artificial_satellites artificial_satellites_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellites
    ADD CONSTRAINT artificial_satellites_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

