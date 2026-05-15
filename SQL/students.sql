--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

-- Started on 2026-05-14 04:48:19 EDT

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

DROP DATABASE students;
--
-- TOC entry 2962 (class 1262 OID 16385)
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- TOC entry 204 (class 1259 OID 16392)
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- TOC entry 208 (class 1259 OID 24599)
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 208
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- TOC entry 203 (class 1259 OID 16389)
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- TOC entry 205 (class 1259 OID 16395)
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- TOC entry 207 (class 1259 OID 24585)
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- TOC entry 2964 (class 0 OID 0)
-- Dependencies: 207
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- TOC entry 202 (class 1259 OID 16386)
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- TOC entry 206 (class 1259 OID 24576)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- TOC entry 2965 (class 0 OID 0)
-- Dependencies: 206
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- TOC entry 2812 (class 2604 OID 24601)
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- TOC entry 2811 (class 2604 OID 24587)
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 24578)
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- TOC entry 2952 (class 0 OID 16392)
-- Dependencies: 204
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (23, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (24, 'Web Programming');
INSERT INTO public.courses VALUES (25, 'Database Systems');
INSERT INTO public.courses VALUES (26, 'Computer Networks');
INSERT INTO public.courses VALUES (27, 'SQL');
INSERT INTO public.courses VALUES (28, 'Machine Learning');
INSERT INTO public.courses VALUES (29, 'Computer Systems');
INSERT INTO public.courses VALUES (30, 'Web Applications');
INSERT INTO public.courses VALUES (31, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (32, 'Python');
INSERT INTO public.courses VALUES (33, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (34, 'Calculus');
INSERT INTO public.courses VALUES (35, 'Game Architecture');
INSERT INTO public.courses VALUES (36, 'Algorithms');
INSERT INTO public.courses VALUES (37, 'UNIX');
INSERT INTO public.courses VALUES (38, 'Server Administration');
INSERT INTO public.courses VALUES (39, 'Network Security');


--
-- TOC entry 2951 (class 0 OID 16389)
-- Dependencies: 203
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (71, 'Database Administration');
INSERT INTO public.majors VALUES (72, 'Web Development');
INSERT INTO public.majors VALUES (73, 'Data Science');
INSERT INTO public.majors VALUES (74, 'Network Engineering');
INSERT INTO public.majors VALUES (75, 'Computer Programming');
INSERT INTO public.majors VALUES (76, 'Game Design');
INSERT INTO public.majors VALUES (77, 'System Administration');


--
-- TOC entry 2953 (class 0 OID 16395)
-- Dependencies: 205
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (71, 23);
INSERT INTO public.majors_courses VALUES (72, 24);
INSERT INTO public.majors_courses VALUES (71, 25);
INSERT INTO public.majors_courses VALUES (73, 23);
INSERT INTO public.majors_courses VALUES (74, 26);
INSERT INTO public.majors_courses VALUES (71, 27);
INSERT INTO public.majors_courses VALUES (73, 28);
INSERT INTO public.majors_courses VALUES (74, 29);
INSERT INTO public.majors_courses VALUES (75, 26);
INSERT INTO public.majors_courses VALUES (71, 30);
INSERT INTO public.majors_courses VALUES (76, 31);
INSERT INTO public.majors_courses VALUES (73, 32);
INSERT INTO public.majors_courses VALUES (75, 33);
INSERT INTO public.majors_courses VALUES (77, 29);
INSERT INTO public.majors_courses VALUES (76, 34);
INSERT INTO public.majors_courses VALUES (72, 23);
INSERT INTO public.majors_courses VALUES (73, 34);
INSERT INTO public.majors_courses VALUES (72, 33);
INSERT INTO public.majors_courses VALUES (76, 35);
INSERT INTO public.majors_courses VALUES (77, 26);
INSERT INTO public.majors_courses VALUES (76, 36);
INSERT INTO public.majors_courses VALUES (77, 37);
INSERT INTO public.majors_courses VALUES (77, 38);
INSERT INTO public.majors_courses VALUES (75, 29);
INSERT INTO public.majors_courses VALUES (75, 32);
INSERT INTO public.majors_courses VALUES (74, 39);
INSERT INTO public.majors_courses VALUES (72, 30);
INSERT INTO public.majors_courses VALUES (74, 36);


--
-- TOC entry 2950 (class 0 OID 16386)
-- Dependencies: 202
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (6, 'Rhea', 'Kellems', 71, 2.5);
INSERT INTO public.students VALUES (7, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (8, 'Kimberly', 'Whitley', 72, 3.8);
INSERT INTO public.students VALUES (9, 'Jimmy', 'Felipe', 71, 3.7);
INSERT INTO public.students VALUES (10, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (11, 'Casares', 'Hijo', 76, 4.0);
INSERT INTO public.students VALUES (12, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (13, 'Sterling', 'Boss', 76, 3.9);
INSERT INTO public.students VALUES (14, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (15, 'Kaija', 'Uronen', 76, 3.7);
INSERT INTO public.students VALUES (16, 'Faye', 'Conn', 76, 2.1);
INSERT INTO public.students VALUES (17, 'Efren', 'Reilly', 72, 3.9);
INSERT INTO public.students VALUES (18, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (19, 'Maxine', 'Hagenes', 71, 2.9);
INSERT INTO public.students VALUES (20, 'Larry', 'Saunders', 73, 2.2);
INSERT INTO public.students VALUES (21, 'Karl', 'Kuhar', 72, NULL);
INSERT INTO public.students VALUES (22, 'Lieke', 'Hazenveld', 76, 3.5);
INSERT INTO public.students VALUES (23, 'Obie', 'Hilpert', 72, NULL);
INSERT INTO public.students VALUES (24, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (25, 'Nathan', 'Turner', 71, 3.3);
INSERT INTO public.students VALUES (26, 'Gerald', 'Osiki', 73, 2.2);
INSERT INTO public.students VALUES (27, 'Vanya', 'Hassanah', 76, 4.0);
INSERT INTO public.students VALUES (28, 'Roxelana', 'Florescu', 71, 3.2);
INSERT INTO public.students VALUES (29, 'Helene', 'Parker', 73, 3.4);
INSERT INTO public.students VALUES (30, 'Mariana', 'Russel', 72, 1.8);
INSERT INTO public.students VALUES (31, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (32, 'Mehdi', 'Vandenberghe', 71, 1.9);
INSERT INTO public.students VALUES (33, 'Dejon', 'Howell', 72, 4.0);
INSERT INTO public.students VALUES (34, 'Aliya', 'Gulgowski', 77, 2.6);
INSERT INTO public.students VALUES (35, 'Ana', 'Tupajic', 73, 3.1);
INSERT INTO public.students VALUES (36, 'Hugo', 'Duran', NULL, 3.8);


--
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 208
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 39, true);


--
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 207
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 77, true);


--
-- TOC entry 2968 (class 0 OID 0)
-- Dependencies: 206
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 36, true);


--
-- TOC entry 2818 (class 2606 OID 24603)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 2820 (class 2606 OID 32779)
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- TOC entry 2816 (class 2606 OID 24589)
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- TOC entry 2814 (class 2606 OID 24580)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 2823 (class 2606 OID 32773)
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- TOC entry 2822 (class 2606 OID 32768)
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- TOC entry 2821 (class 2606 OID 24594)
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


-- Completed on 2026-05-14 04:48:19 EDT

--
-- PostgreSQL database dump complete
--

