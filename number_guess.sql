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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

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

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 12);
INSERT INTO public.games VALUES (2, 1, 12);
INSERT INTO public.games VALUES (3, 1, 13);
INSERT INTO public.games VALUES (4, 1, 13);
INSERT INTO public.games VALUES (5, 1, 12);
INSERT INTO public.games VALUES (6, 1, 12);
INSERT INTO public.games VALUES (7, 1, 12);
INSERT INTO public.games VALUES (8, 1, 1);
INSERT INTO public.games VALUES (9, 1, 16);
INSERT INTO public.games VALUES (10, 1, 16);
INSERT INTO public.games VALUES (11, 1, 17);
INSERT INTO public.games VALUES (12, 1, 17);
INSERT INTO public.games VALUES (13, 1, 16);
INSERT INTO public.games VALUES (14, 1, 16);
INSERT INTO public.games VALUES (15, 1, 16);
INSERT INTO public.games VALUES (16, 1, 18);
INSERT INTO public.games VALUES (17, 1, 18);
INSERT INTO public.games VALUES (18, 1, 19);
INSERT INTO public.games VALUES (19, 1, 19);
INSERT INTO public.games VALUES (20, 1, 18);
INSERT INTO public.games VALUES (21, 1, 18);
INSERT INTO public.games VALUES (22, 1, 18);
INSERT INTO public.games VALUES (23, 1, 20);
INSERT INTO public.games VALUES (24, 1, 20);
INSERT INTO public.games VALUES (25, 1, 21);
INSERT INTO public.games VALUES (26, 1, 21);
INSERT INTO public.games VALUES (27, 1, 20);
INSERT INTO public.games VALUES (28, 1, 20);
INSERT INTO public.games VALUES (29, 1, 20);
INSERT INTO public.games VALUES (30, 1, 22);
INSERT INTO public.games VALUES (31, 1, 22);
INSERT INTO public.games VALUES (32, 1, 23);
INSERT INTO public.games VALUES (33, 1, 23);
INSERT INTO public.games VALUES (34, 1, 22);
INSERT INTO public.games VALUES (35, 1, 22);
INSERT INTO public.games VALUES (36, 1, 22);
INSERT INTO public.games VALUES (37, 292, 24);
INSERT INTO public.games VALUES (38, 111, 24);
INSERT INTO public.games VALUES (39, 370, 25);
INSERT INTO public.games VALUES (40, 351, 25);
INSERT INTO public.games VALUES (41, 884, 24);
INSERT INTO public.games VALUES (42, 773, 24);
INSERT INTO public.games VALUES (43, 500, 24);
INSERT INTO public.games VALUES (44, 670, 26);
INSERT INTO public.games VALUES (45, 247, 26);
INSERT INTO public.games VALUES (46, 980, 27);
INSERT INTO public.games VALUES (47, 101, 27);
INSERT INTO public.games VALUES (48, 869, 26);
INSERT INTO public.games VALUES (49, 100, 26);
INSERT INTO public.games VALUES (50, 404, 26);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'a');
INSERT INTO public.users VALUES (3, 'user_1669635434645');
INSERT INTO public.users VALUES (5, 'user_1669635434644');
INSERT INTO public.users VALUES (10, 'user_1669635662882');
INSERT INTO public.users VALUES (11, 'user_1669635662881');
INSERT INTO public.users VALUES (12, 'user_1669636306785');
INSERT INTO public.users VALUES (13, 'user_1669636306784');
INSERT INTO public.users VALUES (14, 'user_1669636694211');
INSERT INTO public.users VALUES (15, 'user_1669636694210');
INSERT INTO public.users VALUES (16, 'user_1669636718380');
INSERT INTO public.users VALUES (17, 'user_1669636718379');
INSERT INTO public.users VALUES (18, 'user_1669636927970');
INSERT INTO public.users VALUES (19, 'user_1669636927969');
INSERT INTO public.users VALUES (20, 'user_1669636959821');
INSERT INTO public.users VALUES (21, 'user_1669636959820');
INSERT INTO public.users VALUES (22, 'user_1669636972551');
INSERT INTO public.users VALUES (23, 'user_1669636972550');
INSERT INTO public.users VALUES (24, 'user_1669637030098');
INSERT INTO public.users VALUES (25, 'user_1669637030097');
INSERT INTO public.users VALUES (26, 'user_1669637251527');
INSERT INTO public.users VALUES (27, 'user_1669637251526');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 50, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

