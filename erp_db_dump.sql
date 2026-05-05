--
-- PostgreSQL database dump
--

\restrict b89DzNKarL9DkU0ZaoVqjXQ765n9c4Sng4o6T3O8GgJB5epFPTdnZX1oHIHS2Vu

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: erp_users; Type: TABLE; Schema: public; Owner: erp_user
--

CREATE TABLE public.erp_users (
    id integer NOT NULL,
    name character varying NOT NULL,
    fingerprint_id integer NOT NULL,
    role character varying,
    fee_paid boolean
);


ALTER TABLE public.erp_users OWNER TO erp_user;

--
-- Name: erp_users_id_seq; Type: SEQUENCE; Schema: public; Owner: erp_user
--

CREATE SEQUENCE public.erp_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.erp_users_id_seq OWNER TO erp_user;

--
-- Name: erp_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erp_user
--

ALTER SEQUENCE public.erp_users_id_seq OWNED BY public.erp_users.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    fingerprint_id integer NOT NULL,
    role character varying,
    fee_paid boolean,
    is_active boolean
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: erp_users id; Type: DEFAULT; Schema: public; Owner: erp_user
--

ALTER TABLE ONLY public.erp_users ALTER COLUMN id SET DEFAULT nextval('public.erp_users_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: erp_users; Type: TABLE DATA; Schema: public; Owner: erp_user
--

COPY public.erp_users (id, name, fingerprint_id, role, fee_paid) FROM stdin;
1	Rohan	301	student	t
2	Amit	302	student	f
3	redhat	1021	staff	t
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, fingerprint_id, role, fee_paid, is_active) FROM stdin;
1	redhat	1021	staff	t	t
\.


--
-- Name: erp_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erp_user
--

SELECT pg_catalog.setval('public.erp_users_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: erp_users erp_users_fingerprint_id_key; Type: CONSTRAINT; Schema: public; Owner: erp_user
--

ALTER TABLE ONLY public.erp_users
    ADD CONSTRAINT erp_users_fingerprint_id_key UNIQUE (fingerprint_id);


--
-- Name: erp_users erp_users_pkey; Type: CONSTRAINT; Schema: public; Owner: erp_user
--

ALTER TABLE ONLY public.erp_users
    ADD CONSTRAINT erp_users_pkey PRIMARY KEY (id);


--
-- Name: users users_fingerprint_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_fingerprint_id_key UNIQUE (fingerprint_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: ix_erp_users_id; Type: INDEX; Schema: public; Owner: erp_user
--

CREATE INDEX ix_erp_users_id ON public.erp_users USING btree (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO erp_user;


--
-- Name: TABLE users; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.users TO erp_user;


--
-- PostgreSQL database dump complete
--

\unrestrict b89DzNKarL9DkU0ZaoVqjXQ765n9c4Sng4o6T3O8GgJB5epFPTdnZX1oHIHS2Vu

