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
-- Name: guest; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.guest (
    guest_id bigint NOT NULL,
    guest_name character varying NOT NULL,
    guest_details character varying NOT NULL
);


ALTER TABLE public.guest OWNER TO dotsql1_admin;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.rooms (
    room_id bigint NOT NULL,
    room_type bigint NOT NULL,
    room_no bigint NOT NULL,
    staff_id bigint NOT NULL
);


ALTER TABLE public.rooms OWNER TO dotsql1_admin;

--
-- Name: roomservicestaff; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.roomservicestaff (
    staff_id bigint NOT NULL,
    staff_name character varying(50) NOT NULL,
    staff_address character varying(255) NOT NULL,
    contact_number bigint NOT NULL,
    gender character varying(6) NOT NULL
);


ALTER TABLE public.roomservicestaff OWNER TO dotsql1_admin;

--
-- Name: stayschedule; Type: TABLE; Schema: public; Owner: dotsql1_admin
--

CREATE TABLE public.stayschedule (
    stay_schedule_id bigint NOT NULL,
    room_id bigint NOT NULL,
    guest_id bigint NOT NULL,
    check_in timestamp with time zone NOT NULL,
    check_out timestamp with time zone NOT NULL
);


ALTER TABLE public.stayschedule OWNER TO dotsql1_admin;

--
-- Data for Name: guest; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.guest (guest_id, guest_name, guest_details) FROM stdin;
1	string	string
2	Suppu	string
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.rooms (room_id, room_type, room_no, staff_id) FROM stdin;
0	4	4	1
10	4	56	1
12	17	56	1
3	0	5	3
\.


--
-- Data for Name: roomservicestaff; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.roomservicestaff (staff_id, staff_name, staff_address, contact_number, gender) FROM stdin;
1	supriya	karimnagar	9876543210	female
4	string	string	356465	Male
0	string	string	0	string
5	stri	sing	6556	male
3	Dhanu	Hyd	9898989898	Female
\.


--
-- Data for Name: stayschedule; Type: TABLE DATA; Schema: public; Owner: dotsql1_admin
--

COPY public.stayschedule (stay_schedule_id, room_id, guest_id, check_in, check_out) FROM stdin;
1	12	1	2022-03-10 18:36:44.218+05:30	2022-03-10 18:36:44.218+05:30
3	3	2	2022-03-10 18:36:44.218+05:30	2022-03-10 18:36:44.218+05:30
\.


--
-- Name: guest guest_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_pkey PRIMARY KEY (guest_id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (room_id);


--
-- Name: roomservicestaff roomservicestaff_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.roomservicestaff
    ADD CONSTRAINT roomservicestaff_pkey PRIMARY KEY (staff_id);


--
-- Name: stayschedule stayschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.stayschedule
    ADD CONSTRAINT stayschedule_pkey PRIMARY KEY (stay_schedule_id);


--
-- Name: stayschedule guest_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.stayschedule
    ADD CONSTRAINT guest_id FOREIGN KEY (guest_id) REFERENCES public.guest(guest_id) NOT VALID;


--
-- Name: stayschedule room_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.stayschedule
    ADD CONSTRAINT room_id FOREIGN KEY (room_id) REFERENCES public.rooms(room_id) NOT VALID;


--
-- Name: rooms staff_id; Type: FK CONSTRAINT; Schema: public; Owner: dotsql1_admin
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT staff_id FOREIGN KEY (staff_id) REFERENCES public.roomservicestaff(staff_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

