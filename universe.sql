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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    constellation character varying(30),
    galaxy_type_id integer NOT NULL,
    like_to_travel boolean
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(15) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    discovered_year integer,
    discoverer character varying(60),
    distance_from_planet_km numeric(15,0),
    diameter_km numeric(10,0),
    orbital_period_days numeric(10,4),
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
    name character varying NOT NULL,
    discovery_year integer,
    distance_light_years numeric(10,4),
    eccentricity numeric(7,5),
    primary_system character varying(30),
    mass_earth numeric(10,5),
    description text,
    has_life boolean,
    has_ring boolean,
    planet_type_id integer NOT NULL,
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    constellation character varying(30),
    solar_mass numeric(10,4),
    description text,
    galaxy_id integer NOT NULL,
    star_type_id integer NOT NULL
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
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    star_type_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_star_type_id_seq OWNED BY public.star_type.star_type_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Centaurus', 2, true);
INSERT INTO public.galaxy VALUES (7, 'Circinus', 'Circinus', 3, true);
INSERT INTO public.galaxy VALUES (9, 'Cosmos Redshift 7', 'Sextans', 3, true);
INSERT INTO public.galaxy VALUES (12, 'Sagittarius Dwarf Spheroidal Galaxy', 'Sagittarius', 2, true);
INSERT INTO public.galaxy VALUES (13, 'Canis Major Overdensity', 'Canis Major', 3, true);
INSERT INTO public.galaxy VALUES (11, 'Hoag’s Galaxy', 'Serpens', 4, true);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sagittarius', 1, false);
INSERT INTO public.galaxy VALUES (2, 'Backward Galaxy', 'Centaurus', 1, false);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 'Coma Berenices', 1, false);
INSERT INTO public.galaxy VALUES (4, 'Bode’s Galaxy', 'Ursa Major', 1, false);
INSERT INTO public.galaxy VALUES (5, 'Butterfly Galaxies', 'Virgo', 1, false);
INSERT INTO public.galaxy VALUES (8, 'Comet Galaxy', 'Sculptor', 1, false);
INSERT INTO public.galaxy VALUES (10, 'Fireworks Galaxy', 'Cygnus', 1, false);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral', 'A ring galaxy is a galaxy with a circle-like appearance. Hoag''s Object, discovered by Art Hoag in 1950, is an example of a ring galaxy.[1] The ring contains many massive, relatively young blue stars, which are extremely bright. The central region contains relatively little luminous matter. Some astronomers believe that ring galaxies are formed when a smaller galaxy passes through the center of a larger galaxy. Because most of a galaxy consists of empty space, this "collision" rarely results in any actual collisions between stars. However, the gravitational disruptions caused by such an event could cause a wave of star formation to move through the larger galaxy. Other astronomers think that rings are formed around some galaxies when external accretion takes place. Star formation would then take place in the accreted material because of the shocks and compressions of the accreted material');
INSERT INTO public.galaxy_type VALUES (2, 'Elliptical', 'A ring galaxy is a galaxy with a circle-like appearance. Hoag''s Object, discovered by Art Hoag in 1950, is an example of a ring galaxy.[1] The ring contains many massive, relatively young blue stars, which are extremely bright. The central region contains relatively little luminous matter. Some astronomers believe that ring galaxies are formed when a smaller galaxy passes through the center of a larger galaxy. Because most of a galaxy consists of empty space, this "collision" rarely results in any actual collisions between stars. However, the gravitational disruptions caused by such an event could cause a wave of star formation to move through the larger galaxy. Other astronomers think that rings are formed around some galaxies when external accretion takes place. Star formation would then take place in the accreted material because of the shocks and compressions of the accreted material');
INSERT INTO public.galaxy_type VALUES (3, 'Irregular', 'A ring galaxy is a galaxy with a circle-like appearance. Hoag''s Object, discovered by Art Hoag in 1950, is an example of a ring galaxy.[1] The ring contains many massive, relatively young blue stars, which are extremely bright. The central region contains relatively little luminous matter. Some astronomers believe that ring galaxies are formed when a smaller galaxy passes through the center of a larger galaxy. Because most of a galaxy consists of empty space, this "collision" rarely results in any actual collisions between stars. However, the gravitational disruptions caused by such an event could cause a wave of star formation to move through the larger galaxy. Other astronomers think that rings are formed around some galaxies when external accretion takes place. Star formation would then take place in the accreted material because of the shocks and compressions of the accreted material');
INSERT INTO public.galaxy_type VALUES (4, 'Ring', 'A ring galaxy is a galaxy with a circle-like appearance. Hoag''s Object, discovered by Art Hoag in 1950, is an example of a ring galaxy.[1] The ring contains many massive, relatively young blue stars, which are extremely bright. The central region contains relatively little luminous matter. Some astronomers believe that ring galaxies are formed when a smaller galaxy passes through the center of a larger galaxy. Because most of a galaxy consists of empty space, this "collision" rarely results in any actual collisions between stars. However, the gravitational disruptions caused by such an event could cause a wave of star formation to move through the larger galaxy. Other astronomers think that rings are formed around some galaxies when external accretion takes place. Star formation would then take place in the accreted material because of the shocks and compressions of the accreted material');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Deimos', 1877, 'Asaph Hall', 23460, 12, 1.2624, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 1877, 'Asaph Hall', 9270, 23, 0.3189, 4);
INSERT INTO public.moon VALUES (4, 'Adrastea', 1979, 'Jewitt & Danielson', 128980, 26, 0.2980, 4);
INSERT INTO public.moon VALUES (5, 'Himalia', 1904, 'C. Perrine', 11480000, 170, 250.5700, 5);
INSERT INTO public.moon VALUES (6, 'Io', 1610, 'Galileo', 421600, 3629, 1.7690, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 1610, 'Galileo', 6709000, 3126, 3.5510, 5);
INSERT INTO public.moon VALUES (9, 'Ganymede', 1610, 'Galileo', 1070000, 5276, 7.1550, 5);
INSERT INTO public.moon VALUES (8, 'Eurydome', 2001, 'S. Sheppard, D. Jewitt, & J. Kleyna', 23219000, 3, 713.0000, 5);
INSERT INTO public.moon VALUES (1, 'Moon (Luna)', NULL, NULL, 384400, 3475, 27.3200, 3);
INSERT INTO public.moon VALUES (10, 'Callisto', 1610, 'Galileo', 1883000, 4800, 16.6890, 5);
INSERT INTO public.moon VALUES (11, 'Aegir', 2005, 'S. Sheppard, D. Jewitt, & J. Kleyna', 20735000, 6, 1116.5000, 6);
INSERT INTO public.moon VALUES (12, 'Albiorix', 2000, 'Gladman et al.', 16392000, 30, 783.0000, 6);
INSERT INTO public.moon VALUES (13, 'Anthe', 2004, 'Cassini Imaging Team', 197700, 1, 1.0400, 6);
INSERT INTO public.moon VALUES (14, 'Ariel', 1851, 'W. Lassell', 191240, 1160, 2.5200, 7);
INSERT INTO public.moon VALUES (15, 'Belinda', 1986, 'Voyager 2', 75260, 66, 0.6240, 7);
INSERT INTO public.moon VALUES (16, 'Bianca', 1986, 'Voyager 2', 75260, 42, 0.4330, 7);
INSERT INTO public.moon VALUES (17, 'Caliban', 1997, 'Gladman, Nicholson, Burns, & Kavelaars', 7200000, 80, 579.5000, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 1787, 'W. Herschel', 582600, 1526, 13.4630, 7);
INSERT INTO public.moon VALUES (19, 'Despina', 1989, 'Voyager 2', 62000, 160, 0.4000, 8);
INSERT INTO public.moon VALUES (20, 'Galatea', 1989, 'Voyager 2', 52500, 140, 0.3300, 8);
INSERT INTO public.moon VALUES (21, 'Halimede', 2002, 'M. Hollman & J.J. Kavelaars', 15686000, 60, 1874.8300, 8);
INSERT INTO public.moon VALUES (22, 'Larissa', 1989, 'Voyager 2', 73600, 200, 0.5600, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, 0.20600, 'Sun', 0.05530, NULL, false, false, 9, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, 0.00680, 'Sun', 0.81500, NULL, false, false, 9, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, 0.01670, 'Sun', 1.00000, NULL, true, false, 6, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, 0.09340, 'Sun', 0.10740, NULL, true, false, 6, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, 0.04850, 'Sun', 318.00000, NULL, false, true, 11, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 1781, NULL, 0.04690, 'Sun', 14.52000, NULL, false, true, 11, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, 0.05550, 'Sun', 95.00000, NULL, false, true, 11, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 1846, NULL, 0.00900, 'Sun', 17.15000, NULL, false, true, 11, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1930, NULL, 0.24900, 'Sun', 0.00250, NULL, false, false, 11, 1);
INSERT INTO public.planet VALUES (10, '876 b', 2000, 15.3000, 0.03400, 'Gliese 876', 849.00000, NULL, false, true, 1, 3);
INSERT INTO public.planet VALUES (11, 'J 160.2 b', 2014, 84.4100, 0.06000, 'GJ 160.2', 10.00000, NULL, true, true, 2, 4);
INSERT INTO public.planet VALUES (12, 'Haumea', 2004, NULL, 0.19642, 'Sun', 0.00060, NULL, false, false, 11, 1);
INSERT INTO public.planet VALUES (13, 'Eris', 2005, NULL, 0.43607, 'Sun', 0.00280, NULL, false, false, 11, 1);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Circumbinary Planet', 'An exoplanet that orbits two stars.');
INSERT INTO public.planet_type VALUES (2, 'Double Planet', 'Also known as a binary planet. Two planetary-mass objects orbiting each other.');
INSERT INTO public.planet_type VALUES (3, 'Eccentric Jupiter', 'A gas giant that orbits its star in an eccentric orbit.');
INSERT INTO public.planet_type VALUES (4, 'Exoplanet', 'A planet that does not orbit the Sun, but a different star, a stellar remnant, or a brown dwarf.');
INSERT INTO public.planet_type VALUES (5, 'Extragalactic Planet', 'An exoplanet outside the Milky Way.');
INSERT INTO public.planet_type VALUES (6, 'Goldilocks Planet', 'A planet with an orbit that falls within the star\s habitable zone. The name derives from the fairy tale "Goldilocks and the Three Bears", in which a little girl chooses from sets of three items, ignoring the ones that are too extreme (large or small, hot or cold, etc.), and settling on the one in the middle, which is "just right".');
INSERT INTO public.planet_type VALUES (7, 'Hot Jupiter', 'A class of extrasolar planets whose characteristics are similar to Jupiter, but that have high surface temperatures because they orbit very close—between approximately 0.015 and 0.5 AU (2.2×106 and 74.8×106 km)—to their parent stars, whereas Jupiter orbits its parent star (the Sun) at 5.2 AU (780×106 km), causing low surface temperatures.');
INSERT INTO public.planet_type VALUES (8, 'Hot Neptune', 'An extrasolar planet in an orbit close to its star (normally less than one astronomical unit away), with a mass similar to that of Uranus or Neptune.');
INSERT INTO public.planet_type VALUES (9, 'Inferior Planets', 'Planets whose orbits lie within the orbit of Earth.[nb 1]');
INSERT INTO public.planet_type VALUES (10, 'Inner Planets', 'A planet in the Solar System that have orbits smaller than the asteroid belt.[nb 2]');
INSERT INTO public.planet_type VALUES (11, 'Outer Planets', 'A planet in the Solar System beyond the asteroid belt, and hence refers to the gas giants.');
INSERT INTO public.planet_type VALUES (12, 'Pulsar Planets', 'A planet that orbits a pulsar or a rapidly rotating neutron star.');
INSERT INTO public.planet_type VALUES (13, 'Rouge Planet', 'Also known as an interstellar planet. A planetary-mass object that orbits the galaxy directly.');
INSERT INTO public.planet_type VALUES (14, 'Superior Planets', 'Planets whose orbits lie outside the orbit of Earth.[nb 1]');
INSERT INTO public.planet_type VALUES (15, 'Trojan Planets', 'A planet co-orbiting with another planet. The discovery of a pair of co-orbital exoplanets has been reported, but later retracted.[1] One possibility for the habitable zone is a trojan planet of a gas giant close to its star.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 1.0000, 'The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma,[18][19] heated to incandescence by nuclear fusion reactions in its core, radiating the energy mainly as visible light, ultraviolet light, and infrared radiation. It is by far the most important source of energy for life on Earth. Its diameter is about 1.39 million kilometers (864,000 miles), or 109 times that of Earth. Its mass is about 330,000 times that of Earth, and it accounts for about 99.86% of the total mass of the Solar System.[20] Roughly three quarters of the Sun\s mass consists of hydrogen (73%); the rest is mostly helium (25%), with much smaller quantities of heavier elements, including oxygen, carbon, neon and iron.', 1, 7);
INSERT INTO public.star VALUES (2, 'Sirius', 'Canis Major', 2.0630, 'Sirius is the brightest star in the night sky. Its name is derived from the Greek word Σείριος, or Seirios, meaning lit. \glowing\ or \scorching\. The star is designated α Canis Majoris, Latinized to Alpha Canis Majoris, and abbreviated Alpha CMa or α CMa. With a visual apparent magnitude of −1.46, Sirius is almost twice as bright as Canopus, the next brightest star. Sirius is a binary star consisting of a main-sequence star of spectral type A0 or A1, termed Sirius A, and a faint white dwarf companion of spectral type DA2, termed Sirius B. The distance between the two varies between 8.2 and 31.5 astronomical units as they orbit every 50 years.[25]', 1, 1);
INSERT INTO public.star VALUES (3, 'Canopus', 'Carina', 8.0000, 'Canopus is the brightest star in the southern constellation of Carina and the second-brightest star in the night sky. It is also designated α Carinae, which is Latinised to Alpha Carinae. With a visual apparent magnitude of −0.74, it is outshone only by Sirius. Located around 310 light-years from the Sun, Canopus is a bright giant of spectral type A9, so it is essentially white when seen with the naked eye. It has a luminosity over 10,000 times the luminosity of the Sun, is eight times as massive, and has expanded to 71 times the Sun\s radius. Its enlarged photosphere has an effective temperature of around 7,400 K. Canopus is undergoing core helium burning and is currently in the so-called blue loop phase of its evolution, having already passed through the red-giant branch after exhausting the hydrogen in its core. Canopus is a source of X-rays, which are likely being emitted from its corona.', 1, 2);
INSERT INTO public.star VALUES (4, 'Arcturus', 'Boötes', 1.0800, 'Arcturus is the brightest star in the northern constellation of Boötes, the fourth-brightest in the night sky, and the brightest in the northern celestial hemisphere. It is designated α Boötis, which is Latinized to Alpha Boötis. Together with Spica and Denebola (or Regulus, depending on the source), Arcturus is part of the Spring Triangle asterism and, by extension, also of the Great Diamond along with the star Cor Caroli. When viewed from Earth, it appears to be positioned almost at the north galactic pole of the Milky Way.', 1, 3);
INSERT INTO public.star VALUES (5, 'Vega', 'Lyra', 2.1350, 'Vega is the brightest star in the northern constellation of Lyra. It has the Bayer designation α Lyrae, which is Latinised to Alpha Lyrae and abbreviated Alpha Lyr or α Lyr. This star is relatively close at only 25 light-years (7.7 parsecs) from the Sun, and, together with Arcturus and Sirius, one of the most luminous stars in the Sun\s neighborhood. It is the fifth-brightest star in the night sky, and the second-brightest star in the northern celestial hemisphere, after Arcturus.', 1, 1);
INSERT INTO public.star VALUES (6, 'Capella', 'Auriga', 2.5687, 'Capella is the brightest star in the northern constellation of Auriga. It has the Bayer designation α Aurigae, which is Latinised to Alpha Aurigae and abbreviated Alpha Aur or α Aur. Capella is the sixth-brightest star in the night sky, and the third-brightest in the northern celestial hemisphere after Arcturus and Vega. A prominent object in the northern winter sky, it is circumpolar to observers north of 44°N. Its name meaning "little goat" in Latin, Capella depicted the goat Amalthea that suckled Zeus in classical mythology. Capella is relatively close, at 42.9 light-years (13.2 pc) from the Sun. It is one of the brightest X-ray sources in the sky, thought to come primarily from the corona of Capella Aa.', 1, 4);
INSERT INTO public.star VALUES (7, 'Rigel', 'Orion', 21.0000, 'Rigel is a blue supergiant star in the constellation of Orion. It has the Bayer designation β Orionis, which is Latinized to Beta Orionis and abbreviated Beta Ori or β Ori. Rigel is the brightest and most massive component – and the eponym – of a star system of at least four stars that appear as a single blue-white point of light to the naked eye. This system is located at a distance of approximately 860 light-years (260 pc) from the Sun.', 1, 5);
INSERT INTO public.star VALUES (8, 'Procyon', 'Canis Minor', 1.4990, 'Procyon /ˈproʊsiɒn/[15] is the brightest star in the constellation of Canis Minor and usually the eighth-brightest star in the night sky, with an apparent visual magnitude of 0.34.[3] It has the Bayer designation α Canis Minoris, which is Latinized to Alpha Canis Minoris, and abbreviated α CMi or Alpha CMi, respectively. As determined by the European Space Agency Hipparcos astrometry satellite,[16] this system lies at a distance of just 11.46 light-years (3.51 parsecs),[2] and is therefore one of Earth\s nearest stellar neighbors.', 1, 5);
INSERT INTO public.star VALUES (9, 'Betelgeuse', 'Orion', 16.5000, 'Betelgeuse is usually the tenth-brightest star in the night sky and, after Rigel, the second-brightest in the constellation of Orion. It is a distinctly reddish semiregular variable star whose apparent magnitude, varying between +0.0 and +1.6, has the widest range displayed by any first-magnitude star. At near-infrared wavelengths, Betelgeuse is the brightest star in the night sky. Its Bayer designation is α Orionis, Latinised to Alpha Orionis and abbreviated Alpha Ori or α Ori.', 1, 6);


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES (1, 'White Dwarf', 'A white dwarf, also called a degenerate dwarf, is a stellar core remnant composed mostly of electron-degenerate matter. A white dwarf is very dense: its mass is comparable to that of the Sun, while its volume is comparable to that of Earth. A white dwarf\s faint luminosity comes from the emission of residual thermal energy; no fusion takes place in a white dwarf.');
INSERT INTO public.star_type VALUES (2, 'Bright Giant', 'Bright giants are stars of luminosity class II in the Yerkes spectral classification. These are stars which straddle the boundary between ordinary giants and supergiants, based on the appearance of their spectra.[10] The bright giant luminosity class was first defined in 1943.');
INSERT INTO public.star_type VALUES (3, 'Bright Giant', 'Bright giants are stars of luminosity class II in the Yerkes spectral classification. These are stars which straddle the boundary between ordinary giants and supergiants, based on the appearance of their spectra.[10] The bright giant luminosity class was first defined in 1943.');
INSERT INTO public.star_type VALUES (4, 'Red Giant', 'Within any giant luminosity class, the cooler stars of spectral class K, M, S, and C, (and sometimes some G-type stars[12]) are called red giants. Red giants include stars in a number of distinct evolutionary phases of their lives: a main red-giant branch (RGB); a red horizontal branch or red clump; the asymptotic giant branch (AGB), although AGB stars are often large enough and luminous enough to get classified as supergiants; and sometimes other large cool stars such as immediate post-AGB stars. The RGB stars are by far the most common type of giant star due to their moderate mass, relatively long stable lives, and luminosity. They are the most obvious grouping of stars after the main sequence on most HR diagrams, although white dwarfs are more numerous but far less luminous');
INSERT INTO public.star_type VALUES (5, 'Red Clump', 'The red clump is a clustering of red giants in the Hertzsprung–Russell diagram at around 5,000 K and absolute magnitude (MV) +0.5, slightly hotter than most red-giant-branch stars of the same luminosity. It is visible as a denser region of the red-giant branch or a bulge towards hotter temperatures. It is prominent in many galactic open clusters, and it is also noticeable in many intermediate-age globular clusters and in nearby field stars (e.g. the Hipparcos stars)');
INSERT INTO public.star_type VALUES (6, 'Blue Supergiant', 'A blue supergiant (BSG) is a hot, luminous star, often referred to as an OB supergiant. They have luminosity class I and spectral class B9 or earlier');
INSERT INTO public.star_type VALUES (7, 'Red Supergiant', 'Red supergiants (RSGs) are stars with a supergiant luminosity class (Yerkes class I) of spectral type K or M.[1] They are the largest stars in the universe in terms of volume, although they are not the most massive or luminous. Betelgeuse and Antares are the brightest and best known red supergiants (RSGs), indeed the only first magnitude red supergiant stars.');
INSERT INTO public.star_type VALUES (8, 'Yellow Dwarf', 'A G-type main-sequence star (Spectral type: G-V), also often called a yellow dwarf, or G star, is a main-sequence star (luminosity class V) of spectral type G. Such a star has about 0.9 to 1.1 solar masses and an effective temperature between about 5,300 and 6,000 K. Like other main-sequence stars, a G-type main-sequence star is converting the element hydrogen to helium in its core by means of nuclear fusion, but however can also fuse helium when hydrogen runs out.');
INSERT INTO public.star_type VALUES (9, 'Yellow Giant', 'Giant stars with intermediate temperatures (spectral class G, F, and at least some A) are called yellow giants. They are far less numerous than red giants, partly because they only form from stars with somewhat higher masses, and partly because they spend less time in that phase of their lives. However, they include a number of important classes of variable stars. High-luminosity yellow stars are generally unstable, leading to the instability strip on the HR diagram where the majority of stars are pulsating variables');
INSERT INTO public.star_type VALUES (10, 'Blue Giant', 'The hottest giants, of spectral classes O, B, and sometimes early A, are called blue giants. Sometimes A- and late-B-type stars may be referred to as white giants');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 13, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_star_type_id_seq', 10, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_id UNIQUE (galaxy_type_id);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_type_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_id UNIQUE (planet_type_id);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_type star_type_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_id UNIQUE (star_type_id);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


--
-- Name: galaxy galaxy_galaxy_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_star_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_fkey FOREIGN KEY (star_type_id) REFERENCES public.star_type(star_type_id);


--
-- PostgreSQL database dump complete
--

