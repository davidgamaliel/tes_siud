--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.10
-- Dumped by pg_dump version 9.4.0
-- Started on 2017-03-10 00:46:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 178 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1981 (class 0 OID 0)
-- Dependencies: 178
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 175 (class 1259 OID 87858)
-- Name: tmst_ruangan; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tmst_ruangan (
    id integer NOT NULL,
    nama character varying(50),
    lokasi character varying(50),
    fasilitas text,
    kapasitas integer
);


ALTER TABLE tmst_ruangan OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 87856)
-- Name: tmst_ruangan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tmst_ruangan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tmst_ruangan_id_seq OWNER TO postgres;

--
-- TOC entry 1982 (class 0 OID 0)
-- Dependencies: 174
-- Name: tmst_ruangan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tmst_ruangan_id_seq OWNED BY tmst_ruangan.id;


--
-- TOC entry 171 (class 1259 OID 87835)
-- Name: tmst_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tmst_user (
    id integer NOT NULL,
    username character varying(25),
    password character varying(25),
    id_role integer,
    id_pegawai integer,
    email character varying(50)
);


ALTER TABLE tmst_user OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 87833)
-- Name: tmst_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tmst_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tmst_user_id_seq OWNER TO postgres;

--
-- TOC entry 1983 (class 0 OID 0)
-- Dependencies: 170
-- Name: tmst_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tmst_user_id_seq OWNED BY tmst_user.id;


--
-- TOC entry 177 (class 1259 OID 87869)
-- Name: tran_peminjaman_ruangan; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tran_peminjaman_ruangan (
    id integer NOT NULL,
    id_ruangan integer,
    id_user_peminjam integer,
    tanggal_peminjaman date,
    waktu_peminjaman character varying(20),
    kegiatan character varying(100),
    nodin character varying(100)
);


ALTER TABLE tran_peminjaman_ruangan OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 87867)
-- Name: tran_peminjaman_ruangan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tran_peminjaman_ruangan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tran_peminjaman_ruangan_id_seq OWNER TO postgres;

--
-- TOC entry 1984 (class 0 OID 0)
-- Dependencies: 176
-- Name: tran_peminjaman_ruangan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tran_peminjaman_ruangan_id_seq OWNED BY tran_peminjaman_ruangan.id;


--
-- TOC entry 173 (class 1259 OID 87845)
-- Name: tref_role; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tref_role (
    id integer NOT NULL,
    nama character varying(25)
);


ALTER TABLE tref_role OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 87843)
-- Name: tref_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tref_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tref_role_id_seq OWNER TO postgres;

--
-- TOC entry 1985 (class 0 OID 0)
-- Dependencies: 172
-- Name: tref_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tref_role_id_seq OWNED BY tref_role.id;


--
-- TOC entry 1844 (class 2604 OID 87861)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tmst_ruangan ALTER COLUMN id SET DEFAULT nextval('tmst_ruangan_id_seq'::regclass);


--
-- TOC entry 1842 (class 2604 OID 87838)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tmst_user ALTER COLUMN id SET DEFAULT nextval('tmst_user_id_seq'::regclass);


--
-- TOC entry 1845 (class 2604 OID 87872)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tran_peminjaman_ruangan ALTER COLUMN id SET DEFAULT nextval('tran_peminjaman_ruangan_id_seq'::regclass);


--
-- TOC entry 1843 (class 2604 OID 87848)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tref_role ALTER COLUMN id SET DEFAULT nextval('tref_role_id_seq'::regclass);


--
-- TOC entry 1971 (class 0 OID 87858)
-- Dependencies: 175
-- Data for Name: tmst_ruangan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tmst_ruangan (id, nama, lokasi, fasilitas, kapasitas) FROM stdin;
1	2301	gedung B	Komputer, Proyektor	20
2	2302	gedung B	Komputer, Proyektor	20
3	2404	gedung B	Komputer, Proyektor	20
4	3210	gedung C	Komputer, Proyektor	20
\.


--
-- TOC entry 1986 (class 0 OID 0)
-- Dependencies: 174
-- Name: tmst_ruangan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tmst_ruangan_id_seq', 4, true);


--
-- TOC entry 1967 (class 0 OID 87835)
-- Dependencies: 171
-- Data for Name: tmst_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tmst_user (id, username, password, id_role, id_pegawai, email) FROM stdin;
1	admin	admin	1	\N	admin@admin
2	pegawai	12345	2	\N	a@a.com
\.


--
-- TOC entry 1987 (class 0 OID 0)
-- Dependencies: 170
-- Name: tmst_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tmst_user_id_seq', 2, true);


--
-- TOC entry 1973 (class 0 OID 87869)
-- Dependencies: 177
-- Data for Name: tran_peminjaman_ruangan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tran_peminjaman_ruangan (id, id_ruangan, id_user_peminjam, tanggal_peminjaman, waktu_peminjaman, kegiatan, nodin) FROM stdin;
\.


--
-- TOC entry 1988 (class 0 OID 0)
-- Dependencies: 176
-- Name: tran_peminjaman_ruangan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tran_peminjaman_ruangan_id_seq', 1, false);


--
-- TOC entry 1969 (class 0 OID 87845)
-- Dependencies: 173
-- Data for Name: tref_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tref_role (id, nama) FROM stdin;
1	admin
2	pegawai
\.


--
-- TOC entry 1989 (class 0 OID 0)
-- Dependencies: 172
-- Name: tref_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tref_role_id_seq', 2, true);


--
-- TOC entry 1855 (class 2606 OID 87874)
-- Name: peminjaman_ruangan_primary_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tran_peminjaman_ruangan
    ADD CONSTRAINT peminjaman_ruangan_primary_key PRIMARY KEY (id);


--
-- TOC entry 1851 (class 2606 OID 87850)
-- Name: role_primary_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tref_role
    ADD CONSTRAINT role_primary_key PRIMARY KEY (id);


--
-- TOC entry 1853 (class 2606 OID 87866)
-- Name: ruangan_primary_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tmst_ruangan
    ADD CONSTRAINT ruangan_primary_key PRIMARY KEY (id);


--
-- TOC entry 1847 (class 2606 OID 87840)
-- Name: user_primary_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tmst_user
    ADD CONSTRAINT user_primary_key PRIMARY KEY (id);


--
-- TOC entry 1849 (class 2606 OID 87842)
-- Name: user_unique_username; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tmst_user
    ADD CONSTRAINT user_unique_username UNIQUE (username);


--
-- TOC entry 1858 (class 2606 OID 87880)
-- Name: id_peminjam_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tran_peminjaman_ruangan
    ADD CONSTRAINT id_peminjam_foreign_key FOREIGN KEY (id_user_peminjam) REFERENCES tmst_user(id);


--
-- TOC entry 1856 (class 2606 OID 87851)
-- Name: id_role_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tmst_user
    ADD CONSTRAINT id_role_foreign_key FOREIGN KEY (id_role) REFERENCES tref_role(id);


--
-- TOC entry 1857 (class 2606 OID 87875)
-- Name: id_ruangan_foreign_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tran_peminjaman_ruangan
    ADD CONSTRAINT id_ruangan_foreign_key FOREIGN KEY (id_ruangan) REFERENCES tmst_ruangan(id);


--
-- TOC entry 1980 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-03-10 00:46:49

--
-- PostgreSQL database dump complete
--

