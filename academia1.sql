--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: aluno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aluno (
    id integer NOT NULL,
    nome character varying(100),
    email character varying(100)
);


ALTER TABLE public.aluno OWNER TO postgres;

--
-- Name: aluno_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aluno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aluno_id_seq OWNER TO postgres;

--
-- Name: aluno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aluno_id_seq OWNED BY public.aluno.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: ficha; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ficha (
    id integer NOT NULL,
    objetivo character varying(100),
    texto text,
    data date,
    professor_id integer,
    aluno_id integer
);


ALTER TABLE public.ficha OWNER TO postgres;

--
-- Name: ficha_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ficha_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ficha_id_seq OWNER TO postgres;

--
-- Name: ficha_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ficha_id_seq OWNED BY public.ficha.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: professor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professor (
    id integer NOT NULL,
    nome character varying(100),
    email character varying(100),
    foto character varying(50)
);


ALTER TABLE public.professor OWNER TO postgres;

--
-- Name: professor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_id_seq OWNER TO postgres;

--
-- Name: professor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professor_id_seq OWNED BY public.professor.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: aluno id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno ALTER COLUMN id SET DEFAULT nextval('public.aluno_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: ficha id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ficha ALTER COLUMN id SET DEFAULT nextval('public.ficha_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: professor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor ALTER COLUMN id SET DEFAULT nextval('public.professor_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: aluno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aluno (id, nome, email) FROM stdin;
18	Leonardo	leonardofr@live.com
19	Marcos	
20	José	jose@gmail.com
21	Junior	
23	novo	novo@novo.com
24	aaaa	aaaa@aaa
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: ficha; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ficha (id, objetivo, texto, data, professor_id, aluno_id) FROM stdin;
14	Definição Muscular	Remada curvada c barra 5x 8-12\r\nRemada halteres 3 x 12\r\nPuxador frente 5 x 10-15\r\nRemada máquina 3 x 12\r\nRemada baixa cabo 3 x 12\r\nPullover 5 x 15	2023-05-22	10	20
15	Ganho de Força	Cadeira extensora 4x 20\r\nAgachamento 3 x 8-15\r\nLeg press 4 x 15\r\nCadeira flexora deitada 3 x 15\r\nCadeira flexora sentada 3 x 12-15\r\nLeg stiff 3x 12\r\nPanturrilhas 6 x 20 máquina (a sua escolha)	2023-05-22	12	18
16	Condicionamento físico	Corrida 5km, Elíptico 20min, Abdominal supra 4x30	2023-05-23	12	21
13	Perder Gordura	Crucifixo reto máquina ou cabo 3 x 12-15\r\nSupino inclinado halteres 3 x 10-15\r\nSupino máquina (preferência inclinado) 3 x 10-12\r\nSupino reto barra guiada ou halteres 3x 10-15\r\nCross over 4x 15\r\nParalela 4 x até a falha concêntrica\r\nPanturrilhas 6 x 20 máquinas a sua escolha	2023-05-30	11	19
18	Quaerat sit natus enim fugiat illo.	Aut voluptatem debitis distinctio iure ipsam. Necessitatibus omnis est et sit quia ullam. Laborum vel provident reprehenderit sed.	2010-03-17	10	20
22	Autem ea commodi unde animi beatae.	Quo excepturi vitae velit omnis. Est et quaerat at. Quia quibusdam perferendis optio est alias est.	1995-02-26	11	21
23	Tempora rerum consequuntur ea exercitationem velit.	Autem quod dolorum facilis perspiciatis non autem quos. Aliquid maxime excepturi saepe. Eos est vitae nostrum non quo nulla vel. Libero dolorum et ut unde voluptatibus.	2006-02-01	11	18
24	Quam expedita amet hic optio.	Fuga vitae quia impedit sequi et rem vel. Eligendi unde autem nobis omnis. Quia numquam dolores laborum officiis quidem a et. Expedita nobis voluptatem rem sed et.	1995-11-28	11	18
25	Nam et libero molestiae sed.	Ab molestiae ut ut molestiae officiis. Numquam maxime voluptatem et voluptatum earum. Voluptatibus rerum omnis ad quis consectetur labore.	2004-07-11	10	23
26	Aperiam nulla nostrum eveniet accusantium veniam ipsa.	Asperiores earum reprehenderit quo assumenda. Iusto dignissimos sint quisquam tempora dolorum mollitia quisquam sit. Quae qui unde et voluptas qui.	1983-11-16	11	21
27	Qui pariatur quod voluptas sed dolores provident voluptatem.	Aut veniam et ratione architecto occaecati alias. Quam commodi dolore voluptatem quos.	2022-07-14	11	21
28	Velit vel consectetur non cumque nobis.	Nihil earum qui neque aut qui. Voluptas et minus explicabo quis commodi praesentium sit.	2000-09-07	12	18
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_reset_tokens_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
leonardo.rodrigues4@estudante.ifms.edu.br	$2y$10$/ntmV.nOMy6d8tKyT3/rr.JkmIkNLwFL653pwsTKIin0EPLNNL4Pi	2023-06-28 04:31:44
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: professor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professor (id, nome, email, foto) FROM stdin;
10	Leandro Twin	twin@gmail.com	pwaKotqMVrvSrgqk4qVUx0FH3PCOleMCldHKXZrX.jpg
11	Paulo Muzy	\N	21PlVP9f1cFNIs8vCJfQLKMgdzQb6Rf0LeeA22qy.jpg
12	Renato Cariani	cariani@cariani.com.br	Wo0rT3h9IVYTWpTtoywqG4Cgg0NbJBkbCq9NWqs2.jpg
15	Gorgonoid	gorgonoid@gmail.com	6mANBnwpyGEatFMxe2103FDS4QGnUBH78JgMvki5.jpg
16	Cbum	cbum@cbum	jol90RzDsJw1h0UQQh6WkKiyn1sywZjjs517Zcjk.jpg
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
1	Leonardo	leonardo.rodrigues4@estudante.ifms.edu.br	\N	$2y$10$6QaJlQh12Oe6W5H8KUf5Q.kBFELbutfYMU7sYbmelfxSilgnx6S8S	\N	2023-06-28 01:18:35	2023-06-28 01:18:35
3	teste	teste@gmail.com	\N	$2y$10$QO6YmdOe2/fGFpLl7CfJK.VJO/PK.WLPcyvZ/9KC3nI3OGvLimtxq	\N	2023-06-28 02:54:45	2023-06-28 02:54:45
4	alalala	alala@gmail.com	\N	$2y$10$yy/mAhto44trD.wHq8rTXenUQWGccH7GnEAPhBmx7av/3Ruu6W/xu	\N	2023-06-28 03:00:44	2023-06-28 03:00:44
2	admin1	admin@gmail.com	\N	$2y$10$RAMxmPFwTL5wUo70XhtjLuH/KtFaIEgB8803s81Aoy0N5OMybmiqO	\N	2023-06-28 01:20:51	2023-06-28 04:03:46
\.


--
-- Name: aluno_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aluno_id_seq', 24, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: ficha_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ficha_id_seq', 28, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: professor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professor_id_seq', 16, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: aluno aluno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: ficha ficha_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ficha
    ADD CONSTRAINT ficha_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: professor professor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: ficha fk_ficha_aluno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ficha
    ADD CONSTRAINT fk_ficha_aluno FOREIGN KEY (aluno_id) REFERENCES public.aluno(id) ON DELETE CASCADE;


--
-- Name: ficha fk_ficha_professor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ficha
    ADD CONSTRAINT fk_ficha_professor FOREIGN KEY (professor_id) REFERENCES public.professor(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

