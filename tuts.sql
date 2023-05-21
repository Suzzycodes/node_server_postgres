--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-05-21 21:44:15

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
-- TOC entry 215 (class 1259 OID 16597)
-- Name: images; Type: TABLE; Schema: public; Owner: tutorial
--

CREATE TABLE public.images (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    cloudinary_id character varying(128) NOT NULL,
    image_url character varying(128) NOT NULL
);


ALTER TABLE public.images OWNER TO tutorial;

--
-- TOC entry 214 (class 1259 OID 16596)
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: tutorial
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO tutorial;

--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 214
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tutorial
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- TOC entry 217 (class 1259 OID 16604)
-- Name: sweet; Type: TABLE; Schema: public; Owner: tutorial
--

CREATE TABLE public.sweet (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    cloudinary_id character varying(128) NOT NULL,
    image_url character varying(128) NOT NULL
);


ALTER TABLE public.sweet OWNER TO tutorial;

--
-- TOC entry 216 (class 1259 OID 16603)
-- Name: sweet_id_seq; Type: SEQUENCE; Schema: public; Owner: tutorial
--

CREATE SEQUENCE public.sweet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sweet_id_seq OWNER TO tutorial;

--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 216
-- Name: sweet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tutorial
--

ALTER SEQUENCE public.sweet_id_seq OWNED BY public.sweet.id;


--
-- TOC entry 3178 (class 2604 OID 16600)
-- Name: images id; Type: DEFAULT; Schema: public; Owner: tutorial
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 16607)
-- Name: sweet id; Type: DEFAULT; Schema: public; Owner: tutorial
--

ALTER TABLE ONLY public.sweet ALTER COLUMN id SET DEFAULT nextval('public.sweet_id_seq'::regclass);


--
-- TOC entry 3327 (class 0 OID 16597)
-- Dependencies: 215
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: tutorial
--

COPY public.images (id, title, cloudinary_id, image_url) FROM stdin;
1	An Image	agqttff4nbnoinciaxks	https://res.cloudinary.com/djkrslte3/image/upload/v1684274795/agqttff4nbnoinciaxks.jpg
3	An Image	yingisdnkqzut6pwdgqh	https://res.cloudinary.com/djkrslte3/image/upload/v1684277554/yingisdnkqzut6pwdgqh.jpg
4	An Image	e2xhoy6injd785jvv90v	https://res.cloudinary.com/djkrslte3/image/upload/v1684281143/e2xhoy6injd785jvv90v.jpg
\.


--
-- TOC entry 3329 (class 0 OID 16604)
-- Dependencies: 217
-- Data for Name: sweet; Type: TABLE DATA; Schema: public; Owner: tutorial
--

COPY public.sweet (id, title, cloudinary_id, image_url) FROM stdin;
\.


--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 214
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tutorial
--

SELECT pg_catalog.setval('public.images_id_seq', 4, true);


--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 216
-- Name: sweet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tutorial
--

SELECT pg_catalog.setval('public.sweet_id_seq', 1, false);


--
-- TOC entry 3181 (class 2606 OID 16602)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: tutorial
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 16609)
-- Name: sweet sweet_pkey; Type: CONSTRAINT; Schema: public; Owner: tutorial
--

ALTER TABLE ONLY public.sweet
    ADD CONSTRAINT sweet_pkey PRIMARY KEY (id);


-- Completed on 2023-05-21 21:44:15

--
-- PostgreSQL database dump complete
--

