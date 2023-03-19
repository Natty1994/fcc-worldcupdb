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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (353, 299, 300, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (354, 301, 302, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (355, 300, 302, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (356, 299, 301, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (357, 300, 303, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (358, 302, 304, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (359, 301, 305, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (360, 299, 306, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (361, 302, 307, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (362, 304, 308, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (363, 301, 309, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (364, 305, 310, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (365, 300, 311, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (366, 303, 312, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (367, 306, 313, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (368, 299, 314, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (369, 315, 314, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (370, 316, 305, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (371, 314, 316, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (372, 315, 305, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (373, 316, 317, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (374, 314, 301, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (375, 305, 307, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (376, 315, 299, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (377, 305, 318, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (378, 307, 306, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (379, 299, 319, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (380, 315, 320, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (381, 316, 310, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (382, 317, 321, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (383, 314, 308, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (384, 301, 322, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (299, 'France');
INSERT INTO public.teams VALUES (300, 'Croatia');
INSERT INTO public.teams VALUES (301, 'Belgium');
INSERT INTO public.teams VALUES (302, 'England');
INSERT INTO public.teams VALUES (303, 'Russia');
INSERT INTO public.teams VALUES (304, 'Sweden');
INSERT INTO public.teams VALUES (305, 'Brazil');
INSERT INTO public.teams VALUES (306, 'Uruguay');
INSERT INTO public.teams VALUES (307, 'Colombia');
INSERT INTO public.teams VALUES (308, 'Switzerland');
INSERT INTO public.teams VALUES (309, 'Japan');
INSERT INTO public.teams VALUES (310, 'Mexico');
INSERT INTO public.teams VALUES (311, 'Denmark');
INSERT INTO public.teams VALUES (312, 'Spain');
INSERT INTO public.teams VALUES (313, 'Portugal');
INSERT INTO public.teams VALUES (314, 'Argentina');
INSERT INTO public.teams VALUES (315, 'Germany');
INSERT INTO public.teams VALUES (316, 'Netherlands');
INSERT INTO public.teams VALUES (317, 'Costa Rica');
INSERT INTO public.teams VALUES (318, 'Chile');
INSERT INTO public.teams VALUES (319, 'Nigeria');
INSERT INTO public.teams VALUES (320, 'Algeria');
INSERT INTO public.teams VALUES (321, 'Greece');
INSERT INTO public.teams VALUES (322, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 384, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 322, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

