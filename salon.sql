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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer,
    service_id integer,
    "time" character varying(50)
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying(50),
    name character varying(50)
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (48, 256, 1, '10:30');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (1, NULL, 'Test');
INSERT INTO public.customers VALUES (121, NULL, 'Test');
INSERT INTO public.customers VALUES (3, NULL, 'Test');
INSERT INTO public.customers VALUES (5, NULL, 'Test');
INSERT INTO public.customers VALUES (123, NULL, 'Test');
INSERT INTO public.customers VALUES (7, NULL, 'Test');
INSERT INTO public.customers VALUES (9, NULL, 'Test');
INSERT INTO public.customers VALUES (125, NULL, 'Test');
INSERT INTO public.customers VALUES (11, NULL, 'Test');
INSERT INTO public.customers VALUES (13, NULL, 'Test');
INSERT INTO public.customers VALUES (127, NULL, 'Test');
INSERT INTO public.customers VALUES (15, NULL, 'Test');
INSERT INTO public.customers VALUES (17, NULL, 'Test');
INSERT INTO public.customers VALUES (129, NULL, 'Test');
INSERT INTO public.customers VALUES (19, NULL, 'Test');
INSERT INTO public.customers VALUES (21, NULL, 'Test');
INSERT INTO public.customers VALUES (131, NULL, 'Test');
INSERT INTO public.customers VALUES (23, NULL, 'Test');
INSERT INTO public.customers VALUES (25, NULL, 'Test');
INSERT INTO public.customers VALUES (133, NULL, 'Test');
INSERT INTO public.customers VALUES (27, NULL, 'Test');
INSERT INTO public.customers VALUES (29, NULL, 'Test');
INSERT INTO public.customers VALUES (135, NULL, 'Test');
INSERT INTO public.customers VALUES (31, NULL, 'Test');
INSERT INTO public.customers VALUES (33, NULL, 'Test');
INSERT INTO public.customers VALUES (137, NULL, 'Test');
INSERT INTO public.customers VALUES (35, NULL, 'Test');
INSERT INTO public.customers VALUES (37, NULL, 'Test');
INSERT INTO public.customers VALUES (139, NULL, 'Test');
INSERT INTO public.customers VALUES (39, NULL, 'Test');
INSERT INTO public.customers VALUES (41, NULL, 'Test');
INSERT INTO public.customers VALUES (141, NULL, 'Test');
INSERT INTO public.customers VALUES (43, NULL, 'Test');
INSERT INTO public.customers VALUES (45, NULL, 'Test');
INSERT INTO public.customers VALUES (143, NULL, 'Test');
INSERT INTO public.customers VALUES (47, NULL, 'Test');
INSERT INTO public.customers VALUES (49, NULL, 'Test');
INSERT INTO public.customers VALUES (145, NULL, 'Test');
INSERT INTO public.customers VALUES (51, NULL, 'Test');
INSERT INTO public.customers VALUES (53, NULL, 'Test');
INSERT INTO public.customers VALUES (147, NULL, 'Test');
INSERT INTO public.customers VALUES (55, NULL, 'Test');
INSERT INTO public.customers VALUES (57, NULL, 'Test');
INSERT INTO public.customers VALUES (149, NULL, 'Test');
INSERT INTO public.customers VALUES (59, NULL, 'Test');
INSERT INTO public.customers VALUES (61, NULL, 'Test');
INSERT INTO public.customers VALUES (151, NULL, 'Test');
INSERT INTO public.customers VALUES (63, NULL, 'Test');
INSERT INTO public.customers VALUES (256, '555-555-5555', 'Fabio');
INSERT INTO public.customers VALUES (65, NULL, 'Test');
INSERT INTO public.customers VALUES (153, NULL, 'Test');
INSERT INTO public.customers VALUES (67, NULL, 'Test');
INSERT INTO public.customers VALUES (69, NULL, 'Test');
INSERT INTO public.customers VALUES (155, NULL, 'Test');
INSERT INTO public.customers VALUES (71, NULL, 'Test');
INSERT INTO public.customers VALUES (73, NULL, 'Test');
INSERT INTO public.customers VALUES (157, NULL, 'Test');
INSERT INTO public.customers VALUES (75, NULL, 'Test');
INSERT INTO public.customers VALUES (77, NULL, 'Test');
INSERT INTO public.customers VALUES (159, NULL, 'Test');
INSERT INTO public.customers VALUES (79, NULL, 'Test');
INSERT INTO public.customers VALUES (81, NULL, 'Test');
INSERT INTO public.customers VALUES (161, NULL, 'Test');
INSERT INTO public.customers VALUES (83, NULL, 'Test');
INSERT INTO public.customers VALUES (85, NULL, 'Test');
INSERT INTO public.customers VALUES (163, NULL, 'Test');
INSERT INTO public.customers VALUES (87, NULL, 'Test');
INSERT INTO public.customers VALUES (89, NULL, 'Test');
INSERT INTO public.customers VALUES (165, NULL, 'Test');
INSERT INTO public.customers VALUES (91, NULL, 'Test');
INSERT INTO public.customers VALUES (93, NULL, 'Test');
INSERT INTO public.customers VALUES (167, NULL, 'Test');
INSERT INTO public.customers VALUES (95, NULL, 'Test');
INSERT INTO public.customers VALUES (97, NULL, 'Test');
INSERT INTO public.customers VALUES (169, NULL, 'Test');
INSERT INTO public.customers VALUES (99, NULL, 'Test');
INSERT INTO public.customers VALUES (101, NULL, 'Test');
INSERT INTO public.customers VALUES (171, NULL, 'Test');
INSERT INTO public.customers VALUES (103, NULL, 'Test');
INSERT INTO public.customers VALUES (105, NULL, 'Test');
INSERT INTO public.customers VALUES (173, NULL, 'Test');
INSERT INTO public.customers VALUES (107, NULL, 'Test');
INSERT INTO public.customers VALUES (109, NULL, 'Test');
INSERT INTO public.customers VALUES (175, NULL, 'Test');
INSERT INTO public.customers VALUES (111, NULL, 'Test');
INSERT INTO public.customers VALUES (113, NULL, 'Test');
INSERT INTO public.customers VALUES (177, NULL, 'Test');
INSERT INTO public.customers VALUES (115, NULL, 'Test');
INSERT INTO public.customers VALUES (117, NULL, 'Test');
INSERT INTO public.customers VALUES (179, NULL, 'Test');
INSERT INTO public.customers VALUES (119, NULL, 'Test');
INSERT INTO public.customers VALUES (181, NULL, 'Test');
INSERT INTO public.customers VALUES (183, NULL, 'Test');
INSERT INTO public.customers VALUES (185, NULL, 'Test');
INSERT INTO public.customers VALUES (187, NULL, 'Test');
INSERT INTO public.customers VALUES (189, NULL, 'Test');
INSERT INTO public.customers VALUES (191, NULL, 'Test');
INSERT INTO public.customers VALUES (193, NULL, 'Test');
INSERT INTO public.customers VALUES (195, NULL, 'Test');
INSERT INTO public.customers VALUES (197, NULL, 'Test');
INSERT INTO public.customers VALUES (199, NULL, 'Test');
INSERT INTO public.customers VALUES (201, NULL, 'Test');
INSERT INTO public.customers VALUES (203, NULL, 'Test');
INSERT INTO public.customers VALUES (205, NULL, 'Test');
INSERT INTO public.customers VALUES (207, NULL, 'Test');
INSERT INTO public.customers VALUES (209, NULL, 'Test');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'cut');
INSERT INTO public.services VALUES (2, 'color');
INSERT INTO public.services VALUES (3, 'perm');
INSERT INTO public.services VALUES (4, 'style');
INSERT INTO public.services VALUES (5, 'trim');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 54, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 262, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 5, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

