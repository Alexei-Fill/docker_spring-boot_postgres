--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

-- Started on 2019-05-15 14:42:03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 17149)
-- Name: card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card (
    card_id integer NOT NULL,
    card_front_side character varying(1024) NOT NULL,
    card_back_side character varying(1024) NOT NULL,
    card_front_voice character varying(512),
    card_back_voice character varying(512),
    card_deck_id integer NOT NULL
);


ALTER TABLE public.card OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17145)
-- Name: card_card_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_card_id_seq OWNER TO postgres;

--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 200
-- Name: card_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_card_id_seq OWNED BY public.card.card_id;


--
-- TOC entry 199 (class 1259 OID 17139)
-- Name: deck; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deck (
    deck_id integer NOT NULL,
    deck_name character varying(128) NOT NULL,
    user_deck_id integer NOT NULL
);


ALTER TABLE public.deck OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17137)
-- Name: deck_deck_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deck_deck_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deck_deck_id_seq OWNER TO postgres;

--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 198
-- Name: deck_deck_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deck_deck_id_seq OWNED BY public.deck.deck_id;


--
-- TOC entry 203 (class 1259 OID 17226)
-- Name: user_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_token (
    user_token_id integer NOT NULL,
    user_token character varying(512),
    user_token_expiration_time time without time zone,
    user_id integer
);


ALTER TABLE public.user_token OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17224)
-- Name: user_token_user_token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_token_user_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_token_user_token_id_seq OWNER TO postgres;

--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 202
-- Name: user_token_user_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_token_user_token_id_seq OWNED BY public.user_token.user_token_id;


--
-- TOC entry 197 (class 1259 OID 17121)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_login character varying(32) NOT NULL,
    user_password character varying(128) NOT NULL,
    user_birthday date,
    user_role character varying(128) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 17119)
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO postgres;

--
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 196
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 2707 (class 2604 OID 17152)
-- Name: card card_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card ALTER COLUMN card_id SET DEFAULT nextval('public.card_card_id_seq'::regclass);


--
-- TOC entry 2706 (class 2604 OID 17142)
-- Name: deck deck_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck ALTER COLUMN deck_id SET DEFAULT nextval('public.deck_deck_id_seq'::regclass);


--
-- TOC entry 2708 (class 2604 OID 17229)
-- Name: user_token user_token_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_token ALTER COLUMN user_token_id SET DEFAULT nextval('public.user_token_user_token_id_seq'::regclass);


--
-- TOC entry 2705 (class 2604 OID 17124)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- TOC entry 2845 (class 0 OID 17149)
-- Dependencies: 201
-- Data for Name: card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card (card_id, card_front_side, card_back_side, card_front_voice, card_back_voice, card_deck_id) FROM stdin;
3	fs	bs	sdffs	sdffs	1
5	sadsdsa\n	fdsfdsfds	sdffs	sdffs\n	3
6	dsfdsf\ndsf\n	dsfdfsdfs\n	sdffs\n	sdffs	2
4	dsffdsfd	dsffdsds	sdffs	sdffs	1
\.


--
-- TOC entry 2843 (class 0 OID 17139)
-- Dependencies: 199
-- Data for Name: deck; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deck (deck_id, deck_name, user_deck_id) FROM stdin;
1	Deck 1	1
2	Deck 2	1
3	Deck 3	2
4	www	2
\.


--
-- TOC entry 2847 (class 0 OID 17226)
-- Dependencies: 203
-- Data for Name: user_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_token (user_token_id, user_token, user_token_expiration_time, user_id) FROM stdin;
2	[B@2bed3799	17:35:30.61	0
-10000	[B@19009146	17:35:54.89	0
-1000000	[B@76c979d8	17:36:14.037	0
3	[B@5422cab0	10:37:44.574	0
4	[B@2f4bf988	11:20:37.503	0
5	eyJhbGciOiJIUzUxMiJ9.eyJ0b2tlbl9leHBpcmF0aW9uX2RhdGUiOnsibW9udGgiOiJNQVkiLCJ5ZWFyIjoyMDE5LCJkYXlPZk1vbnRoIjo0LCJkYXlPZldlZWsiOiJTQVRVUkRBWSIsImRheU9mWWVhciI6MTI0LCJob3VyIjoxNSwibWludXRlIjo1MSwibmFubyI6Mzk4MDAwMDAwLCJzZWNvbmQiOjQyLCJtb250aFZhbHVlIjo1LCJjaHJvbm9sb2d5Ijp7ImlkIjoiSVNPIiwiY2FsZW5kYXJUeXBlIjoiaXNvODYwMSJ9fSwidXNlcklkIjoxLCJ1c2VybmFtZSI6ImxvZ2luMSJ9.1lDKl94jeRId2GEWhIsy3amC5DY_pqWhbTyOWHZFqQmIXDvr31K3iKjz5WrTbZfzXcWpPv7G_am2xiOF87v6Zg	15:51:42.4	1
\.


--
-- TOC entry 2841 (class 0 OID 17121)
-- Dependencies: 197
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, user_login, user_password, user_birthday, user_role) FROM stdin;
1	login1	$2a$10$izFDTh3Enn0R.3VdlWz1eOitBMeb93bM30JltDa/W4D7ah5nAjaXG	1999-02-03	ROLE_ADMIN
2	log2	$2a$10$izFDTh3Enn0R.3VdlWz1eOitBMeb93bM30JltDa/W4D7ah5nAjaXG	2001-01-01	ROLE_USER
\.


--
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 200
-- Name: card_card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.card_card_id_seq', 6, true);


--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 198
-- Name: deck_deck_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.deck_deck_id_seq', 4, true);


--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 202
-- Name: user_token_user_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_token_user_token_id_seq', 5, true);


--
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 196
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 2, true);


--
-- TOC entry 2716 (class 2606 OID 17158)
-- Name: card card_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_pk PRIMARY KEY (card_id);


--
-- TOC entry 2714 (class 2606 OID 17144)
-- Name: deck deck_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deck
    ADD CONSTRAINT deck_pk PRIMARY KEY (deck_id);


--
-- TOC entry 2710 (class 2606 OID 17126)
-- Name: users user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pk PRIMARY KEY (user_id);


--
-- TOC entry 2718 (class 2606 OID 17231)
-- Name: user_token user_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_token
    ADD CONSTRAINT user_token_pkey PRIMARY KEY (user_token_id);


--
-- TOC entry 2712 (class 2606 OID 17128)
-- Name: users user_user_login_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_user_login_key UNIQUE (user_login);


-- Completed on 2019-05-15 14:42:03

--
-- PostgreSQL database dump complete
--

