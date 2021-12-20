--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL
);


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: discipline_professor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.discipline_professor (
    "disciplinesId" integer NOT NULL,
    "professorsId" integer NOT NULL
);


--
-- Name: disciplines; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.disciplines (
    id integer NOT NULL,
    name character varying NOT NULL,
    "periodId" integer NOT NULL
);


--
-- Name: disciplines_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.disciplines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: disciplines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.disciplines_id_seq OWNED BY public.disciplines.id;


--
-- Name: exams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.exams (
    id integer NOT NULL,
    name character varying NOT NULL,
    "categoryId" integer NOT NULL,
    "disciplineId" integer NOT NULL,
    url character varying NOT NULL,
    "professorId" integer NOT NULL
);


--
-- Name: exams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.exams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: exams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.exams_id_seq OWNED BY public.exams.id;


--
-- Name: periods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.periods (
    id integer NOT NULL,
    name character varying NOT NULL
);


--
-- Name: periods_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.periods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: periods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.periods_id_seq OWNED BY public.periods.id;


--
-- Name: professors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.professors (
    id integer NOT NULL,
    name character varying NOT NULL
);


--
-- Name: professors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.professors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: professors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.professors_id_seq OWNED BY public.professors.id;


--
-- Name: typeorm_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.typeorm_metadata (
    type character varying NOT NULL,
    database character varying,
    schema character varying,
    "table" character varying,
    name character varying,
    value text
);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: disciplines id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.disciplines ALTER COLUMN id SET DEFAULT nextval('public.disciplines_id_seq'::regclass);


--
-- Name: exams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.exams ALTER COLUMN id SET DEFAULT nextval('public.exams_id_seq'::regclass);


--
-- Name: periods id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.periods ALTER COLUMN id SET DEFAULT nextval('public.periods_id_seq'::regclass);


--
-- Name: professors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professors ALTER COLUMN id SET DEFAULT nextval('public.professors_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.categories VALUES (1, 'P1');
INSERT INTO public.categories VALUES (2, 'P2');
INSERT INTO public.categories VALUES (3, 'P3');
INSERT INTO public.categories VALUES (4, 'Prova Final');
INSERT INTO public.categories VALUES (5, '2ª Chamada');


--
-- Data for Name: discipline_professor; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: disciplines; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.disciplines VALUES (1, 'Introdução a Computação', 1);
INSERT INTO public.disciplines VALUES (2, 'Circuitos e Técnicas Digitais', 1);
INSERT INTO public.disciplines VALUES (3, 'Programação Orientada a Objetos I', 1);
INSERT INTO public.disciplines VALUES (4, 'Fundamentos da Matemática Discreta para Computação', 1);
INSERT INTO public.disciplines VALUES (5, 'Cálculo I', 1);
INSERT INTO public.disciplines VALUES (6, 'Pré-Cálculo', 1);
INSERT INTO public.disciplines VALUES (7, 'Ciência, Técnologia e Sociedade', 2);
INSERT INTO public.disciplines VALUES (8, 'Sistemas Digitais', 2);
INSERT INTO public.disciplines VALUES (9, 'Programação Orientada a Objetos II', 2);
INSERT INTO public.disciplines VALUES (10, 'Geometria Analítica', 2);
INSERT INTO public.disciplines VALUES (11, 'Cálculo 2', 2);
INSERT INTO public.disciplines VALUES (12, 'Probabilidade e Estatística', 2);
INSERT INTO public.disciplines VALUES (13, 'Organização de Computadores', 3);
INSERT INTO public.disciplines VALUES (14, 'Programação Concorrente', 3);
INSERT INTO public.disciplines VALUES (15, 'Estruturas de Dados', 3);
INSERT INTO public.disciplines VALUES (16, 'Álgebra Linear', 3);
INSERT INTO public.disciplines VALUES (17, 'Cálculo Numérico para Computação', 3);
INSERT INTO public.disciplines VALUES (18, 'Sistemas Operacionais', 4);
INSERT INTO public.disciplines VALUES (19, 'Redes de Computadores', 4);
INSERT INTO public.disciplines VALUES (20, 'Engenharia de Software', 4);
INSERT INTO public.disciplines VALUES (21, 'Paradígmas de Programação', 4);
INSERT INTO public.disciplines VALUES (22, 'Gráfos', 4);
INSERT INTO public.disciplines VALUES (23, 'Teoria da Computação', 4);
INSERT INTO public.disciplines VALUES (24, 'Computação Distribuída', 5);
INSERT INTO public.disciplines VALUES (25, 'Redes de Computadores II', 5);
INSERT INTO public.disciplines VALUES (26, 'Banco de Dados', 5);
INSERT INTO public.disciplines VALUES (27, 'Engenharia de Software II', 5);
INSERT INTO public.disciplines VALUES (28, 'Línguagens Formais', 5);
INSERT INTO public.disciplines VALUES (29, 'Computação Gráfica', 5);
INSERT INTO public.disciplines VALUES (30, 'Sistemas Operacionais II', 6);
INSERT INTO public.disciplines VALUES (31, 'Introdução TCC', 6);
INSERT INTO public.disciplines VALUES (32, 'Planejamento e Gestão de Projetos', 6);
INSERT INTO public.disciplines VALUES (33, 'Inteligência Artifícial', 6);
INSERT INTO public.disciplines VALUES (34, 'Construção de Compiladores', 6);
INSERT INTO public.disciplines VALUES (35, 'Modelagem e Simulação', 6);
INSERT INTO public.disciplines VALUES (36, 'Informática e Sociedade', 7);
INSERT INTO public.disciplines VALUES (37, 'Sistemas Multimídia', 7);
INSERT INTO public.disciplines VALUES (38, 'Segurança em Computação', 7);
INSERT INTO public.disciplines VALUES (39, 'Banco de Dados II', 7);


--
-- Data for Name: exams; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.exams VALUES (2, 'Maomé', 1, 2, 'https://google.com.br', 6);
INSERT INTO public.exams VALUES (3, 'Amélia', 3, 4, 'http://google.com.br', 3);
INSERT INTO public.exams VALUES (4, 'Márgarete', 1, 4, 'http://google.com.br', 3);


--
-- Data for Name: periods; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.periods VALUES (1, '1º Período');
INSERT INTO public.periods VALUES (2, '2º Período');
INSERT INTO public.periods VALUES (3, '3º Período');
INSERT INTO public.periods VALUES (4, '4º Período');
INSERT INTO public.periods VALUES (5, '5º Período');
INSERT INTO public.periods VALUES (6, '6º Período');
INSERT INTO public.periods VALUES (7, '7º Período');
INSERT INTO public.periods VALUES (8, '8º Período');
INSERT INTO public.periods VALUES (9, 'Eletivas');


--
-- Data for Name: professors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.professors VALUES (1, 'Jośe Araújo Gonçalves');
INSERT INTO public.professors VALUES (2, 'Mathias Ermitão');
INSERT INTO public.professors VALUES (3, 'Poliano Peixoto');
INSERT INTO public.professors VALUES (4, 'Pebléias Silvano Aragão');
INSERT INTO public.professors VALUES (5, 'Ednir Pereira Matos');
INSERT INTO public.professors VALUES (6, 'Arianne Charlotte');
INSERT INTO public.professors VALUES (7, 'Mariano Dias Pato');
INSERT INTO public.professors VALUES (8, 'Merlinda Tomáz Bruno');
INSERT INTO public.professors VALUES (9, 'Thiago Macedo Horizonte');
INSERT INTO public.professors VALUES (10, 'CharlotteOliveira Dimas');
INSERT INTO public.professors VALUES (11, 'Enéias Topazio');
INSERT INTO public.professors VALUES (12, 'Ferdinanda Gomes da Costa');


--
-- Data for Name: typeorm_metadata; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- Name: disciplines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.disciplines_id_seq', 39, true);


--
-- Name: exams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.exams_id_seq', 4, true);


--
-- Name: periods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.periods_id_seq', 9, true);


--
-- Name: professors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.professors_id_seq', 12, true);


--
-- Name: discipline_professor PK_098d81c1d4f06eb5ee7eeae6a68; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discipline_professor
    ADD CONSTRAINT "PK_098d81c1d4f06eb5ee7eeae6a68" PRIMARY KEY ("disciplinesId", "professorsId");


--
-- Name: categories PK_24dbc6126a28ff948da33e97d3b; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "PK_24dbc6126a28ff948da33e97d3b" PRIMARY KEY (id);


--
-- Name: professors PK_6b249c6363a154820c909c45e27; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.professors
    ADD CONSTRAINT "PK_6b249c6363a154820c909c45e27" PRIMARY KEY (id);


--
-- Name: periods PK_86c6afb6c818d97dc321898627c; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.periods
    ADD CONSTRAINT "PK_86c6afb6c818d97dc321898627c" PRIMARY KEY (id);


--
-- Name: disciplines PK_9b25ea6da0741577a73c9e90aad; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT "PK_9b25ea6da0741577a73c9e90aad" PRIMARY KEY (id);


--
-- Name: exams PK_b43159ee3efa440952794b4f53e; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT "PK_b43159ee3efa440952794b4f53e" PRIMARY KEY (id);


--
-- Name: IDX_3000745c8f0d98eda42cb4c5bf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_3000745c8f0d98eda42cb4c5bf" ON public.discipline_professor USING btree ("professorsId");


--
-- Name: IDX_b4a1770774fc8eed0180a8a7e5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_b4a1770774fc8eed0180a8a7e5" ON public.discipline_professor USING btree ("disciplinesId");


--
-- Name: discipline_professor FK_3000745c8f0d98eda42cb4c5bfb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discipline_professor
    ADD CONSTRAINT "FK_3000745c8f0d98eda42cb4c5bfb" FOREIGN KEY ("professorsId") REFERENCES public.professors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: exams FK_448fb069febfdb9e6a519121aab; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT "FK_448fb069febfdb9e6a519121aab" FOREIGN KEY ("disciplineId") REFERENCES public.disciplines(id);


--
-- Name: disciplines FK_54c5bc5f3518061669996b2c72e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT "FK_54c5bc5f3518061669996b2c72e" FOREIGN KEY ("periodId") REFERENCES public.periods(id);


--
-- Name: exams FK_a4b572eed2e7293985b93a55eb3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT "FK_a4b572eed2e7293985b93a55eb3" FOREIGN KEY ("categoryId") REFERENCES public.categories(id);


--
-- Name: discipline_professor FK_b4a1770774fc8eed0180a8a7e5a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discipline_professor
    ADD CONSTRAINT "FK_b4a1770774fc8eed0180a8a7e5a" FOREIGN KEY ("disciplinesId") REFERENCES public.disciplines(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: exams FK_bcfdfcbfb5fe82b98eb79ac5818; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.exams
    ADD CONSTRAINT "FK_bcfdfcbfb5fe82b98eb79ac5818" FOREIGN KEY ("professorId") REFERENCES public.professors(id);


--
-- PostgreSQL database dump complete
--

