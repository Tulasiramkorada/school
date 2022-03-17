--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6
-- Dumped by pg_dump version 13.6

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
-- Name: class_room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class_room (
    classroom_id bigint NOT NULL,
    capacity character varying(50) NOT NULL,
    facilities character varying(50) NOT NULL
);


ALTER TABLE public.class_room OWNER TO postgres;

--
-- Name: Classroom_ClassroomId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Classroom_ClassroomId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Classroom_ClassroomId_seq" OWNER TO postgres;

--
-- Name: Classroom_ClassroomId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Classroom_ClassroomId_seq" OWNED BY public.class_room.classroom_id;


--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    student_id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    classroom_id bigint NOT NULL,
    email character varying(50) NOT NULL,
    gender bigint NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: student_StudentId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."student_StudentId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."student_StudentId_seq" OWNER TO postgres;

--
-- Name: student_StudentId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."student_StudentId_seq" OWNED BY public.student.student_id;


--
-- Name: student_subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_subject (
    student_id bigint NOT NULL,
    subject_id bigint NOT NULL
);


ALTER TABLE public.student_subject OWNER TO postgres;

--
-- Name: student_teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_teacher (
    student_id bigint NOT NULL,
    teacher_id bigint NOT NULL
);


ALTER TABLE public.student_teacher OWNER TO postgres;

--
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    subject_id bigint NOT NULL,
    subject_name character varying(50) NOT NULL
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- Name: subject_SubjectId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."subject_SubjectId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."subject_SubjectId_seq" OWNER TO postgres;

--
-- Name: subject_SubjectId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."subject_SubjectId_seq" OWNED BY public.subject.subject_id;


--
-- Name: teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher (
    teacher_id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    qualification character varying(50) NOT NULL,
    mobile bigint NOT NULL,
    email character varying(50) NOT NULL,
    subject_id bigint NOT NULL,
    subject_name character varying(50) NOT NULL,
    gender bigint NOT NULL,
    date_of_birth date NOT NULL
);


ALTER TABLE public.teacher OWNER TO postgres;

--
-- Name: teacher_TeacherId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."teacher_TeacherId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."teacher_TeacherId_seq" OWNER TO postgres;

--
-- Name: teacher_TeacherId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."teacher_TeacherId_seq" OWNED BY public.teacher.teacher_id;


--
-- Name: class_room classroom_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_room ALTER COLUMN classroom_id SET DEFAULT nextval('public."Classroom_ClassroomId_seq"'::regclass);


--
-- Name: student student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN student_id SET DEFAULT nextval('public."student_StudentId_seq"'::regclass);


--
-- Name: subject subject_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject ALTER COLUMN subject_id SET DEFAULT nextval('public."subject_SubjectId_seq"'::regclass);


--
-- Name: teacher teacher_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher ALTER COLUMN teacher_id SET DEFAULT nextval('public."teacher_TeacherId_seq"'::regclass);


--
-- Data for Name: class_room; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class_room (classroom_id, capacity, facilities) FROM stdin;
1	30	Good
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (student_id, first_name, last_name, date_of_birth, classroom_id, email, gender) FROM stdin;
2	string	string	2000-03-15	0	string	1
1	string	string	2003-03-15	0	string	1
3	string	string	1992-03-15	1	v@gmail.com	1
4	string	string	1996-03-15	0	string	1
\.


--
-- Data for Name: student_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_subject (student_id, subject_id) FROM stdin;
\.


--
-- Data for Name: student_teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_teacher (student_id, teacher_id) FROM stdin;
\.


--
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject (subject_id, subject_name) FROM stdin;
1	English
\.


--
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher (teacher_id, first_name, last_name, qualification, mobile, email, subject_id, subject_name, gender, date_of_birth) FROM stdin;
1	Vanitha	Ganitha	Degree	98989898	vanitha@gmail.com	1	English	1	2000-01-01
\.


--
-- Name: Classroom_ClassroomId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Classroom_ClassroomId_seq"', 1, true);


--
-- Name: student_StudentId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."student_StudentId_seq"', 4, true);


--
-- Name: subject_SubjectId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."subject_SubjectId_seq"', 1, true);


--
-- Name: teacher_TeacherId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."teacher_TeacherId_seq"', 1, true);


--
-- Name: class_room Classroom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_room
    ADD CONSTRAINT "Classroom_pkey" PRIMARY KEY (classroom_id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


--
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (subject_id);


--
-- Name: teacher teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (teacher_id);


--
-- Name: student classroom_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT classroom_id FOREIGN KEY (classroom_id) REFERENCES public.class_room(classroom_id) NOT VALID;


--
-- Name: student_subject student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_subject
    ADD CONSTRAINT student_id FOREIGN KEY (student_id) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: student_teacher student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_teacher
    ADD CONSTRAINT student_id FOREIGN KEY (student_id) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: student_subject subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_subject
    ADD CONSTRAINT subject_id FOREIGN KEY (subject_id) REFERENCES public.subject(subject_id) NOT VALID;


--
-- Name: teacher subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT subject_id FOREIGN KEY (subject_id) REFERENCES public.subject(subject_id) NOT VALID;


--
-- Name: student_teacher teacher_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_teacher
    ADD CONSTRAINT teacher_id FOREIGN KEY (teacher_id) REFERENCES public.teacher(teacher_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

