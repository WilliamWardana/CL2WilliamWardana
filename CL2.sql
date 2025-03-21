--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22
-- Dumped by pg_dump version 12.22

-- Started on 2025-03-21 16:39:08

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
-- TOC entry 213 (class 1259 OID 33396)
-- Name: permision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permision (
    permison_id integer NOT NULL,
    permison character varying(255) NOT NULL,
    resource_type character varying(50),
    resource_identifier character varying(50)
);


ALTER TABLE public.permision OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 25202)
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile (
    id_profile integer NOT NULL,
    id_user integer NOT NULL,
    fullname character varying(100) NOT NULL,
    alamat character varying(100) NOT NULL,
    notelp integer NOT NULL,
    foto_profil character varying(255)
);


ALTER TABLE public.profile OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 25200)
-- Name: profile_id_profile_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profile_id_profile_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_id_profile_seq OWNER TO postgres;

--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 204
-- Name: profile_id_profile_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profile_id_profile_seq OWNED BY public.profile.id_profile;


--
-- TOC entry 209 (class 1259 OID 25234)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id_role integer NOT NULL,
    nama_role character varying(50) NOT NULL,
    default_role character varying(10) DEFAULT 'user'::character varying
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 25232)
-- Name: role_id_role_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_role_seq OWNER TO postgres;

--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 208
-- Name: role_id_role_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_id_role_seq OWNED BY public.role.id_role;


--
-- TOC entry 212 (class 1259 OID 33384)
-- Name: user_login_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_login_log (
    login_id integer NOT NULL,
    user_id integer NOT NULL,
    login_timestamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    ip_address character varying(50),
    login_success boolean DEFAULT false,
    device_info character varying(50)
);


ALTER TABLE public.user_login_log OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 25222)
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_role (
    id_user_role integer NOT NULL,
    id_user integer NOT NULL,
    id_role integer NOT NULL
);


ALTER TABLE public.user_role OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 25220)
-- Name: user_role_id_user_role_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_role_id_user_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_role_id_user_role_seq OWNER TO postgres;

--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 206
-- Name: user_role_id_user_role_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_role_id_user_role_seq OWNED BY public.user_role.id_user_role;


--
-- TOC entry 203 (class 1259 OID 25193)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id_users integer NOT NULL,
    username character varying(100) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(10) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    password_salt character varying(50),
    password_last_changed timestamp without time zone,
    password_expired boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 25191)
-- Name: users_id_users_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_users_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_users_seq OWNER TO postgres;

--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_users_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_users_seq OWNED BY public.users.id_users;


--
-- TOC entry 211 (class 1259 OID 25242)
-- Name: veryfication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.veryfication (
    id_verifikasi integer NOT NULL,
    id_user integer NOT NULL,
    kode_veryfikasi integer NOT NULL,
    status_veryfikasi character varying(50) NOT NULL,
    expired_at character varying(50)
);


ALTER TABLE public.veryfication OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 25240)
-- Name: veryfication_id_verifikasi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.veryfication_id_verifikasi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.veryfication_id_verifikasi_seq OWNER TO postgres;

--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 210
-- Name: veryfication_id_verifikasi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.veryfication_id_verifikasi_seq OWNED BY public.veryfication.id_verifikasi;


--
-- TOC entry 2722 (class 2604 OID 25205)
-- Name: profile id_profile; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile ALTER COLUMN id_profile SET DEFAULT nextval('public.profile_id_profile_seq'::regclass);


--
-- TOC entry 2724 (class 2604 OID 25237)
-- Name: role id_role; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role ALTER COLUMN id_role SET DEFAULT nextval('public.role_id_role_seq'::regclass);


--
-- TOC entry 2723 (class 2604 OID 25225)
-- Name: user_role id_user_role; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role ALTER COLUMN id_user_role SET DEFAULT nextval('public.user_role_id_user_role_seq'::regclass);


--
-- TOC entry 2719 (class 2604 OID 25196)
-- Name: users id_users; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id_users SET DEFAULT nextval('public.users_id_users_seq'::regclass);


--
-- TOC entry 2726 (class 2604 OID 25245)
-- Name: veryfication id_verifikasi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veryfication ALTER COLUMN id_verifikasi SET DEFAULT nextval('public.veryfication_id_verifikasi_seq'::regclass);


--
-- TOC entry 2889 (class 0 OID 33396)
-- Dependencies: 213
-- Data for Name: permision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permision (permison_id, permison, resource_type, resource_identifier) FROM stdin;
\.


--
-- TOC entry 2881 (class 0 OID 25202)
-- Dependencies: 205
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile (id_profile, id_user, fullname, alamat, notelp, foto_profil) FROM stdin;
1	1	WilliamWardana	Jl.Inpres	8783954	
\.


--
-- TOC entry 2885 (class 0 OID 25234)
-- Dependencies: 209
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (id_role, nama_role, default_role) FROM stdin;
1	admin	user
3	user	user
\.


--
-- TOC entry 2888 (class 0 OID 33384)
-- Dependencies: 212
-- Data for Name: user_login_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_login_log (login_id, user_id, login_timestamp, ip_address, login_success, device_info) FROM stdin;
\.


--
-- TOC entry 2883 (class 0 OID 25222)
-- Dependencies: 207
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_role (id_user_role, id_user, id_role) FROM stdin;
1	1	1
\.


--
-- TOC entry 2879 (class 0 OID 25193)
-- Dependencies: 203
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id_users, username, email, password, created_at, password_salt, password_last_changed, password_expired) FROM stdin;
1	William	William@gmail.com	123	2025-03-14 00:24:33.60698	\N	\N	f
\.


--
-- TOC entry 2887 (class 0 OID 25242)
-- Dependencies: 211
-- Data for Name: veryfication; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.veryfication (id_verifikasi, id_user, kode_veryfikasi, status_veryfikasi, expired_at) FROM stdin;
1	1	123321	ongoing	\N
\.


--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 204
-- Name: profile_id_profile_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profile_id_profile_seq', 1, true);


--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 208
-- Name: role_id_role_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_id_role_seq', 3, true);


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 206
-- Name: user_role_id_user_role_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_role_id_user_role_seq', 1, true);


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_users_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_users_seq', 1, true);


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 210
-- Name: veryfication_id_verifikasi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.veryfication_id_verifikasi_seq', 1, true);


--
-- TOC entry 2750 (class 2606 OID 33400)
-- Name: permision permision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permision
    ADD CONSTRAINT permision_pkey PRIMARY KEY (permison_id);


--
-- TOC entry 2732 (class 2606 OID 25209)
-- Name: profile profile_id_user_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_id_user_key UNIQUE (id_user);


--
-- TOC entry 2734 (class 2606 OID 25207)
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id_profile);


--
-- TOC entry 2742 (class 2606 OID 25239)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role);


--
-- TOC entry 2748 (class 2606 OID 33390)
-- Name: user_login_log user_login_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_login_log
    ADD CONSTRAINT user_login_log_pkey PRIMARY KEY (login_id);


--
-- TOC entry 2736 (class 2606 OID 25231)
-- Name: user_role user_role_id_role_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_id_role_key UNIQUE (id_role);


--
-- TOC entry 2738 (class 2606 OID 25229)
-- Name: user_role user_role_id_user_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_id_user_key UNIQUE (id_user);


--
-- TOC entry 2740 (class 2606 OID 25227)
-- Name: user_role user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id_user_role);


--
-- TOC entry 2730 (class 2606 OID 25199)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_users);


--
-- TOC entry 2744 (class 2606 OID 25249)
-- Name: veryfication veryfication_id_user_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veryfication
    ADD CONSTRAINT veryfication_id_user_key UNIQUE (id_user);


--
-- TOC entry 2746 (class 2606 OID 25247)
-- Name: veryfication veryfication_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veryfication
    ADD CONSTRAINT veryfication_pkey PRIMARY KEY (id_verifikasi);


--
-- TOC entry 2751 (class 2606 OID 33391)
-- Name: user_login_log fk_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_login_log
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users(id_users) ON DELETE CASCADE;


-- Completed on 2025-03-21 16:39:08

--
-- PostgreSQL database dump complete
--

