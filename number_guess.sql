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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 8, 538);
INSERT INTO public.games VALUES (2, 8, 825);
INSERT INTO public.games VALUES (3, 9, 823);
INSERT INTO public.games VALUES (4, 9, 824);
INSERT INTO public.games VALUES (5, 8, 730);
INSERT INTO public.games VALUES (6, 8, 541);
INSERT INTO public.games VALUES (7, 8, 860);
INSERT INTO public.games VALUES (8, 10, 450);
INSERT INTO public.games VALUES (9, 10, 738);
INSERT INTO public.games VALUES (10, 11, 897);
INSERT INTO public.games VALUES (11, 11, 652);
INSERT INTO public.games VALUES (12, 10, 194);
INSERT INTO public.games VALUES (13, 10, 735);
INSERT INTO public.games VALUES (14, 10, 733);
INSERT INTO public.games VALUES (15, 12, 857);
INSERT INTO public.games VALUES (16, 12, 311);
INSERT INTO public.games VALUES (17, 13, 430);
INSERT INTO public.games VALUES (18, 13, 656);
INSERT INTO public.games VALUES (19, 12, 249);
INSERT INTO public.games VALUES (20, 12, 456);
INSERT INTO public.games VALUES (21, 12, 860);
INSERT INTO public.games VALUES (22, 14, 664);
INSERT INTO public.games VALUES (23, 14, 33);
INSERT INTO public.games VALUES (24, 15, 385);
INSERT INTO public.games VALUES (25, 15, 106);
INSERT INTO public.games VALUES (26, 14, 139);
INSERT INTO public.games VALUES (27, 14, 262);
INSERT INTO public.games VALUES (28, 14, 352);
INSERT INTO public.games VALUES (29, 16, 171);
INSERT INTO public.games VALUES (30, 16, 352);
INSERT INTO public.games VALUES (31, 17, 90);
INSERT INTO public.games VALUES (32, 17, 472);
INSERT INTO public.games VALUES (33, 16, 581);
INSERT INTO public.games VALUES (34, 16, 892);
INSERT INTO public.games VALUES (35, 16, 201);
INSERT INTO public.games VALUES (36, 18, 7);
INSERT INTO public.games VALUES (37, 19, 912);
INSERT INTO public.games VALUES (38, 19, 92);
INSERT INTO public.games VALUES (39, 20, 75);
INSERT INTO public.games VALUES (40, 20, 915);
INSERT INTO public.games VALUES (41, 19, 915);
INSERT INTO public.games VALUES (42, 19, 968);
INSERT INTO public.games VALUES (43, 19, 26);
INSERT INTO public.games VALUES (44, 21, 5);
INSERT INTO public.games VALUES (45, 21, 117);
INSERT INTO public.games VALUES (46, 22, 648);
INSERT INTO public.games VALUES (47, 22, 595);
INSERT INTO public.games VALUES (48, 21, 268);
INSERT INTO public.games VALUES (49, 21, 321);
INSERT INTO public.games VALUES (50, 21, 181);
INSERT INTO public.games VALUES (51, 23, 48);
INSERT INTO public.games VALUES (52, 23, 441);
INSERT INTO public.games VALUES (53, 24, 556);
INSERT INTO public.games VALUES (54, 24, 563);
INSERT INTO public.games VALUES (55, 23, 89);
INSERT INTO public.games VALUES (56, 23, 104);
INSERT INTO public.games VALUES (57, 23, 915);
INSERT INTO public.games VALUES (58, 25, 52);
INSERT INTO public.games VALUES (59, 25, 940);
INSERT INTO public.games VALUES (60, 26, 403);
INSERT INTO public.games VALUES (61, 26, 334);
INSERT INTO public.games VALUES (62, 25, 752);
INSERT INTO public.games VALUES (63, 25, 129);
INSERT INTO public.games VALUES (64, 25, 759);
INSERT INTO public.games VALUES (65, 27, 115);
INSERT INTO public.games VALUES (66, 27, 773);
INSERT INTO public.games VALUES (67, 28, 424);
INSERT INTO public.games VALUES (68, 28, 954);
INSERT INTO public.games VALUES (69, 27, 601);
INSERT INTO public.games VALUES (70, 27, 75);
INSERT INTO public.games VALUES (71, 27, 779);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1742496869191');
INSERT INTO public.users VALUES (3, 'user_1742496869190');
INSERT INTO public.users VALUES (8, 'user_1742496998448');
INSERT INTO public.users VALUES (9, 'user_1742496998447');
INSERT INTO public.users VALUES (10, 'user_1742497060984');
INSERT INTO public.users VALUES (11, 'user_1742497060983');
INSERT INTO public.users VALUES (12, 'user_1742497233132');
INSERT INTO public.users VALUES (13, 'user_1742497233131');
INSERT INTO public.users VALUES (14, 'user_1742497569934');
INSERT INTO public.users VALUES (15, 'user_1742497569933');
INSERT INTO public.users VALUES (16, 'user_1742497794656');
INSERT INTO public.users VALUES (17, 'user_1742497794655');
INSERT INTO public.users VALUES (18, 'zach');
INSERT INTO public.users VALUES (19, 'user_1742498502218');
INSERT INTO public.users VALUES (20, 'user_1742498502217');
INSERT INTO public.users VALUES (21, 'user_1742498554585');
INSERT INTO public.users VALUES (22, 'user_1742498554584');
INSERT INTO public.users VALUES (23, 'user_1742498560286');
INSERT INTO public.users VALUES (24, 'user_1742498560285');
INSERT INTO public.users VALUES (25, 'user_1742498589161');
INSERT INTO public.users VALUES (26, 'user_1742498589160');
INSERT INTO public.users VALUES (27, 'user_1742498597726');
INSERT INTO public.users VALUES (28, 'user_1742498597725');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 71, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

