toc.dat                                                                                             0000600 0004000 0002000 00000041546 13647604453 0014465 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       #    6                x            pticefabrica    12.2    12.2 2    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         I           1262    16685    pticefabrica    DATABASE     �   CREATE DATABASE pticefabrica WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1251' LC_CTYPE = 'English_United States.1251';
    DROP DATABASE pticefabrica;
                postgres    false         �            1259    16697    Порода    TABLE     �   CREATE TABLE public."Порода" (
    "название_породы" text NOT NULL,
    "производительность" integer NOT NULL,
    "средний_вес" integer NOT NULL,
    "содержание_диеты" text NOT NULL
);
 "   DROP TABLE public."Порода";
       public         heap    postgres    false         �            1259    16714    директор    TABLE     Z   CREATE TABLE public."директор" (
    "фио_директора" text NOT NULL
);
 &   DROP TABLE public."директор";
       public         heap    postgres    false         �            1259    16722    клетка    TABLE       CREATE TABLE public."клетка" (
    "id_клетки" integer NOT NULL,
    "ряд_клетки" integer NOT NULL,
    "номер_клетки" integer NOT NULL,
    "вместительность" integer NOT NULL,
    "номер_цеха_fk" integer NOT NULL
);
 "   DROP TABLE public."клетка";
       public         heap    postgres    false         �            1259    16720     клетка_id_клетки_seq    SEQUENCE     �   CREATE SEQUENCE public."клетка_id_клетки_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."клетка_id_клетки_seq";
       public          postgres    false    208         J           0    0     клетка_id_клетки_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."клетка_id_клетки_seq" OWNED BY public."клетка"."id_клетки";
          public          postgres    false    207         �            1259    16688    курица    TABLE     :  CREATE TABLE public."курица" (
    "серийный_номер_курицы" integer NOT NULL,
    "вес" integer NOT NULL,
    "название_породы_fk" text NOT NULL,
    "возраст" integer NOT NULL,
    "кол_во_яиц" integer NOT NULL,
    "id_клетки_fk" integer NOT NULL
);
 "   DROP TABLE public."курица";
       public         heap    postgres    false         �            1259    16756 #   курица_id_клетки_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."курица_id_клетки_fk_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."курица_id_клетки_fk_seq";
       public          postgres    false    203         K           0    0 #   курица_id_клетки_fk_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."курица_id_клетки_fk_seq" OWNED BY public."курица"."id_клетки_fk";
          public          postgres    false    213         �            1259    16686 9   курица_серийный_номер_курицы_seq    SEQUENCE     �   CREATE SEQUENCE public."курица_серийный_номер_курицы_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 R   DROP SEQUENCE public."курица_серийный_номер_курицы_seq";
       public          postgres    false    203         L           0    0 9   курица_серийный_номер_курицы_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."курица_серийный_номер_курицы_seq" OWNED BY public."курица"."серийный_номер_курицы";
          public          postgres    false    202         �            1259    16734 
   отчет    TABLE     f  CREATE TABLE public."отчет" (
    "id_работника_fk" integer NOT NULL,
    "количество_яиц" integer NOT NULL,
    "количество_кур" integer NOT NULL,
    "с_п_породы" integer NOT NULL,
    "с_п_цеха" integer NOT NULL,
    "производительность_птицефабрики" integer NOT NULL
);
     DROP TABLE public."отчет";
       public         heap    postgres    false         �            1259    16732 '   отчет_id_работника_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."отчет_id_работника_fk_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."отчет_id_работника_fk_seq";
       public          postgres    false    212         M           0    0 '   отчет_id_работника_fk_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."отчет_id_работника_fk_seq" OWNED BY public."отчет"."id_работника_fk";
          public          postgres    false    211         �            1259    16728    работник    TABLE     �   CREATE TABLE public."работник" (
    "id_работника" integer NOT NULL,
    "паспортные_данные" integer NOT NULL,
    "зарплата" integer NOT NULL
);
 &   DROP TABLE public."работник";
       public         heap    postgres    false         �            1259    16726 *   работник_id_работника_seq    SEQUENCE     �   CREATE SEQUENCE public."работник_id_работника_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."работник_id_работника_seq";
       public          postgres    false    210         N           0    0 *   работник_id_работника_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."работник_id_работника_seq" OWNED BY public."работник"."id_работника";
          public          postgres    false    209         �            1259    16705    цех    TABLE     M   CREATE TABLE public."цех" (
    "номер_цеха" integer NOT NULL
);
    DROP TABLE public."цех";
       public         heap    postgres    false         �
           2604    16725    клетка id_клетки    DEFAULT     �   ALTER TABLE ONLY public."клетка" ALTER COLUMN "id_клетки" SET DEFAULT nextval('public."клетка_id_клетки_seq"'::regclass);
 O   ALTER TABLE public."клетка" ALTER COLUMN "id_клетки" DROP DEFAULT;
       public          postgres    false    208    207    208         �
           2604    16691 5   курица серийный_номер_курицы    DEFAULT     �   ALTER TABLE ONLY public."курица" ALTER COLUMN "серийный_номер_курицы" SET DEFAULT nextval('public."курица_серийный_номер_курицы_seq"'::regclass);
 h   ALTER TABLE public."курица" ALTER COLUMN "серийный_номер_курицы" DROP DEFAULT;
       public          postgres    false    203    202    203         �
           2604    16758    курица id_клетки_fk    DEFAULT     �   ALTER TABLE ONLY public."курица" ALTER COLUMN "id_клетки_fk" SET DEFAULT nextval('public."курица_id_клетки_fk_seq"'::regclass);
 R   ALTER TABLE public."курица" ALTER COLUMN "id_клетки_fk" DROP DEFAULT;
       public          postgres    false    213    203         �
           2604    16737 #   отчет id_работника_fk    DEFAULT     �   ALTER TABLE ONLY public."отчет" ALTER COLUMN "id_работника_fk" SET DEFAULT nextval('public."отчет_id_работника_fk_seq"'::regclass);
 V   ALTER TABLE public."отчет" ALTER COLUMN "id_работника_fk" DROP DEFAULT;
       public          postgres    false    211    212    212         �
           2604    16731 &   работник id_работника    DEFAULT     �   ALTER TABLE ONLY public."работник" ALTER COLUMN "id_работника" SET DEFAULT nextval('public."работник_id_работника_seq"'::regclass);
 Y   ALTER TABLE public."работник" ALTER COLUMN "id_работника" DROP DEFAULT;
       public          postgres    false    210    209    210         :          0    16697    Порода 
   TABLE DATA           �   COPY public."Порода" ("название_породы", "производительность", "средний_вес", "содержание_диеты") FROM stdin;
    public          postgres    false    204       2874.dat <          0    16714    директор 
   TABLE DATA           I   COPY public."директор" ("фио_директора") FROM stdin;
    public          postgres    false    206       2876.dat >          0    16722    клетка 
   TABLE DATA           �   COPY public."клетка" ("id_клетки", "ряд_клетки", "номер_клетки", "вместительность", "номер_цеха_fk") FROM stdin;
    public          postgres    false    208       2878.dat 9          0    16688    курица 
   TABLE DATA           �   COPY public."курица" ("серийный_номер_курицы", "вес", "название_породы_fk", "возраст", "кол_во_яиц", "id_клетки_fk") FROM stdin;
    public          postgres    false    203       2873.dat B          0    16734 
   отчет 
   TABLE DATA           �   COPY public."отчет" ("id_работника_fk", "количество_яиц", "количество_кур", "с_п_породы", "с_п_цеха", "производительность_птицефабрики") FROM stdin;
    public          postgres    false    212       2882.dat @          0    16728    работник 
   TABLE DATA           ~   COPY public."работник" ("id_работника", "паспортные_данные", "зарплата") FROM stdin;
    public          postgres    false    210       2880.dat ;          0    16705    цех 
   TABLE DATA           9   COPY public."цех" ("номер_цеха") FROM stdin;
    public          postgres    false    205       2875.dat O           0    0     клетка_id_клетки_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."клетка_id_клетки_seq"', 1, false);
          public          postgres    false    207         P           0    0 #   курица_id_клетки_fk_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."курица_id_клетки_fk_seq"', 1, false);
          public          postgres    false    213         Q           0    0 9   курица_серийный_номер_курицы_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public."курица_серийный_номер_курицы_seq"', 1, false);
          public          postgres    false    202         R           0    0 '   отчет_id_работника_fk_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."отчет_id_работника_fk_seq"', 1, false);
          public          postgres    false    211         S           0    0 *   работник_id_работника_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."работник_id_работника_seq"', 1, false);
          public          postgres    false    209         �
           2606    16768    клетка id_клетки 
   CONSTRAINT     m   ALTER TABLE ONLY public."клетка"
    ADD CONSTRAINT "id_клетки" PRIMARY KEY ("id_клетки");
 J   ALTER TABLE ONLY public."клетка" DROP CONSTRAINT "id_клетки";
       public            postgres    false    208         �
           2606    16744 $   работник id_работник 
   CONSTRAINT     {   ALTER TABLE ONLY public."работник"
    ADD CONSTRAINT "id_работник" PRIMARY KEY ("id_работника");
 R   ALTER TABLE ONLY public."работник" DROP CONSTRAINT "id_работник";
       public            postgres    false    210         �
           2606    16704 *   Порода название_породы 
   CONSTRAINT     �   ALTER TABLE ONLY public."Порода"
    ADD CONSTRAINT "название_породы" PRIMARY KEY ("название_породы");
 X   ALTER TABLE ONLY public."Порода" DROP CONSTRAINT "название_породы";
       public            postgres    false    204         �
           2606    16742    цех номер_цеха 
   CONSTRAINT     o   ALTER TABLE ONLY public."цех"
    ADD CONSTRAINT "номер_цеха" PRIMARY KEY ("номер_цеха");
 H   ALTER TABLE ONLY public."цех" DROP CONSTRAINT "номер_цеха";
       public            postgres    false    205         �
           2606    16696 5   курица серийный_номер_курицы 
   CONSTRAINT     �   ALTER TABLE ONLY public."курица"
    ADD CONSTRAINT "серийный_номер_курицы" PRIMARY KEY ("серийный_номер_курицы");
 c   ALTER TABLE ONLY public."курица" DROP CONSTRAINT "серийный_номер_курицы";
       public            postgres    false    203         �
           2606    16776 *   директор фио_директора 
   CONSTRAINT     �   ALTER TABLE ONLY public."директор"
    ADD CONSTRAINT "фио_директора" PRIMARY KEY ("фио_директора");
 X   ALTER TABLE ONLY public."директор" DROP CONSTRAINT "фио_директора";
       public            postgres    false    206         �
           1259    16713 $   fki_название_породы_fk    INDEX        CREATE INDEX "fki_название_породы_fk" ON public."курица" USING btree ("название_породы_fk");
 :   DROP INDEX public."fki_название_породы_fk";
       public            postgres    false    203         �
           1259    16774    fki_номер_цеха_fk    INDEX     k   CREATE INDEX "fki_номер_цеха_fk" ON public."клетка" USING btree ("номер_цеха_fk");
 0   DROP INDEX public."fki_номер_цеха_fk";
       public            postgres    false    208         �
           1259    16750     fki_фио_работника_fk    INDEX     q   CREATE INDEX "fki_фио_работника_fk" ON public."отчет" USING btree ("id_работника_fk");
 6   DROP INDEX public."fki_фио_работника_fk";
       public            postgres    false    212         �
           2606    16751 #   отчет id_работника_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."отчет"
    ADD CONSTRAINT "id_работника_fk" FOREIGN KEY ("id_работника_fk") REFERENCES public."работник"("id_работника") NOT VALID;
 Q   ALTER TABLE ONLY public."отчет" DROP CONSTRAINT "id_работника_fk";
       public          postgres    false    210    2741    212         �
           2606    16708 -   курица название_породы_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."курица"
    ADD CONSTRAINT "название_породы_fk" FOREIGN KEY ("название_породы_fk") REFERENCES public."Порода"("название_породы") NOT VALID;
 [   ALTER TABLE ONLY public."курица" DROP CONSTRAINT "название_породы_fk";
       public          postgres    false    2732    203    204         �
           2606    16769 #   клетка номер_цеха_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."клетка"
    ADD CONSTRAINT "номер_цеха_fk" FOREIGN KEY ("номер_цеха_fk") REFERENCES public."цех"("номер_цеха") NOT VALID;
 Q   ALTER TABLE ONLY public."клетка" DROP CONSTRAINT "номер_цеха_fk";
       public          postgres    false    205    208    2734                                                                                                                                                                  2874.dat                                                                                            0000600 0004000 0002000 00000000207 13647604453 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        волв	23	12	гртвлы
товл	12	34	марыло
двдл	12	98	йцув
бьтьм	23	76	йцук
мпрт	34	76	ыамс
\.


                                                                                                                                                                                                                                                                                                                                                                                         2876.dat                                                                                            0000600 0004000 0002000 00000000136 13647604453 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        волв д. т.
товл р. м.
двдл з. г.
бьтьм т. д.
ыдлст д. т.
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                  2878.dat                                                                                            0000600 0004000 0002000 00000000103 13647604453 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	12	23	1
2	2	34	65	27
3	6	14	28	3
4	7	187	20	4
5	9	19	25	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                             2873.dat                                                                                            0000600 0004000 0002000 00000000146 13647604453 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	5	волв	1	3	1
2	4	товл	2	3	2
3	3	двдл	3	7	3
4	2	бьтьм	6	5	4
5	1	мпрт	6	3	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                          2882.dat                                                                                            0000600 0004000 0002000 00000000101 13647604453 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4	5	3	3	4
2	3	3	5	4	4
3	5	6	4	3	7
4	3	5	7	3	4
5	4	5	5	4	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                               2880.dat                                                                                            0000600 0004000 0002000 00000000105 13647604453 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	85464	87654
2	8233	2345
3	8546	87654
4	8233	2345
5	8718	76543
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                           2875.dat                                                                                            0000600 0004000 0002000 00000000020 13647604453 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1
27
3
4
5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                restore.sql                                                                                         0000600 0004000 0002000 00000035207 13647604453 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

DROP DATABASE pticefabrica;
--
-- Name: pticefabrica; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE pticefabrica WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1251' LC_CTYPE = 'English_United States.1251';


ALTER DATABASE pticefabrica OWNER TO postgres;

\connect pticefabrica

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
-- Name: Порода; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Порода" (
    "название_породы" text NOT NULL,
    "производительность" integer NOT NULL,
    "средний_вес" integer NOT NULL,
    "содержание_диеты" text NOT NULL
);


ALTER TABLE public."Порода" OWNER TO postgres;

--
-- Name: директор; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."директор" (
    "фио_директора" text NOT NULL
);


ALTER TABLE public."директор" OWNER TO postgres;

--
-- Name: клетка; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."клетка" (
    "id_клетки" integer NOT NULL,
    "ряд_клетки" integer NOT NULL,
    "номер_клетки" integer NOT NULL,
    "вместительность" integer NOT NULL,
    "номер_цеха_fk" integer NOT NULL
);


ALTER TABLE public."клетка" OWNER TO postgres;

--
-- Name: клетка_id_клетки_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."клетка_id_клетки_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."клетка_id_клетки_seq" OWNER TO postgres;

--
-- Name: клетка_id_клетки_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."клетка_id_клетки_seq" OWNED BY public."клетка"."id_клетки";


--
-- Name: курица; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."курица" (
    "серийный_номер_курицы" integer NOT NULL,
    "вес" integer NOT NULL,
    "название_породы_fk" text NOT NULL,
    "возраст" integer NOT NULL,
    "кол_во_яиц" integer NOT NULL,
    "id_клетки_fk" integer NOT NULL
);


ALTER TABLE public."курица" OWNER TO postgres;

--
-- Name: курица_id_клетки_fk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."курица_id_клетки_fk_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."курица_id_клетки_fk_seq" OWNER TO postgres;

--
-- Name: курица_id_клетки_fk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."курица_id_клетки_fk_seq" OWNED BY public."курица"."id_клетки_fk";


--
-- Name: курица_серийный_номер_курицы_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."курица_серийный_номер_курицы_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."курица_серийный_номер_курицы_seq" OWNER TO postgres;

--
-- Name: курица_серийный_номер_курицы_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."курица_серийный_номер_курицы_seq" OWNED BY public."курица"."серийный_номер_курицы";


--
-- Name: отчет; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."отчет" (
    "id_работника_fk" integer NOT NULL,
    "количество_яиц" integer NOT NULL,
    "количество_кур" integer NOT NULL,
    "с_п_породы" integer NOT NULL,
    "с_п_цеха" integer NOT NULL,
    "производительность_птицефабрики" integer NOT NULL
);


ALTER TABLE public."отчет" OWNER TO postgres;

--
-- Name: отчет_id_работника_fk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."отчет_id_работника_fk_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."отчет_id_работника_fk_seq" OWNER TO postgres;

--
-- Name: отчет_id_работника_fk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."отчет_id_работника_fk_seq" OWNED BY public."отчет"."id_работника_fk";


--
-- Name: работник; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."работник" (
    "id_работника" integer NOT NULL,
    "паспортные_данные" integer NOT NULL,
    "зарплата" integer NOT NULL
);


ALTER TABLE public."работник" OWNER TO postgres;

--
-- Name: работник_id_работника_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."работник_id_работника_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."работник_id_работника_seq" OWNER TO postgres;

--
-- Name: работник_id_работника_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."работник_id_работника_seq" OWNED BY public."работник"."id_работника";


--
-- Name: цех; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."цех" (
    "номер_цеха" integer NOT NULL
);


ALTER TABLE public."цех" OWNER TO postgres;

--
-- Name: клетка id_клетки; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."клетка" ALTER COLUMN "id_клетки" SET DEFAULT nextval('public."клетка_id_клетки_seq"'::regclass);


--
-- Name: курица серийный_номер_курицы; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."курица" ALTER COLUMN "серийный_номер_курицы" SET DEFAULT nextval('public."курица_серийный_номер_курицы_seq"'::regclass);


--
-- Name: курица id_клетки_fk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."курица" ALTER COLUMN "id_клетки_fk" SET DEFAULT nextval('public."курица_id_клетки_fk_seq"'::regclass);


--
-- Name: отчет id_работника_fk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."отчет" ALTER COLUMN "id_работника_fk" SET DEFAULT nextval('public."отчет_id_работника_fk_seq"'::regclass);


--
-- Name: работник id_работника; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."работник" ALTER COLUMN "id_работника" SET DEFAULT nextval('public."работник_id_работника_seq"'::regclass);


--
-- Data for Name: Порода; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Порода" ("название_породы", "производительность", "средний_вес", "содержание_диеты") FROM stdin;
\.
COPY public."Порода" ("название_породы", "производительность", "средний_вес", "содержание_диеты") FROM '$$PATH$$/2874.dat';

--
-- Data for Name: директор; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."директор" ("фио_директора") FROM stdin;
\.
COPY public."директор" ("фио_директора") FROM '$$PATH$$/2876.dat';

--
-- Data for Name: клетка; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."клетка" ("id_клетки", "ряд_клетки", "номер_клетки", "вместительность", "номер_цеха_fk") FROM stdin;
\.
COPY public."клетка" ("id_клетки", "ряд_клетки", "номер_клетки", "вместительность", "номер_цеха_fk") FROM '$$PATH$$/2878.dat';

--
-- Data for Name: курица; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."курица" ("серийный_номер_курицы", "вес", "название_породы_fk", "возраст", "кол_во_яиц", "id_клетки_fk") FROM stdin;
\.
COPY public."курица" ("серийный_номер_курицы", "вес", "название_породы_fk", "возраст", "кол_во_яиц", "id_клетки_fk") FROM '$$PATH$$/2873.dat';

--
-- Data for Name: отчет; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."отчет" ("id_работника_fk", "количество_яиц", "количество_кур", "с_п_породы", "с_п_цеха", "производительность_птицефабрики") FROM stdin;
\.
COPY public."отчет" ("id_работника_fk", "количество_яиц", "количество_кур", "с_п_породы", "с_п_цеха", "производительность_птицефабрики") FROM '$$PATH$$/2882.dat';

--
-- Data for Name: работник; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."работник" ("id_работника", "паспортные_данные", "зарплата") FROM stdin;
\.
COPY public."работник" ("id_работника", "паспортные_данные", "зарплата") FROM '$$PATH$$/2880.dat';

--
-- Data for Name: цех; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."цех" ("номер_цеха") FROM stdin;
\.
COPY public."цех" ("номер_цеха") FROM '$$PATH$$/2875.dat';

--
-- Name: клетка_id_клетки_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."клетка_id_клетки_seq"', 1, false);


--
-- Name: курица_id_клетки_fk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."курица_id_клетки_fk_seq"', 1, false);


--
-- Name: курица_серийный_номер_курицы_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."курица_серийный_номер_курицы_seq"', 1, false);


--
-- Name: отчет_id_работника_fk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."отчет_id_работника_fk_seq"', 1, false);


--
-- Name: работник_id_работника_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."работник_id_работника_seq"', 1, false);


--
-- Name: клетка id_клетки; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."клетка"
    ADD CONSTRAINT "id_клетки" PRIMARY KEY ("id_клетки");


--
-- Name: работник id_работник; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."работник"
    ADD CONSTRAINT "id_работник" PRIMARY KEY ("id_работника");


--
-- Name: Порода название_породы; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Порода"
    ADD CONSTRAINT "название_породы" PRIMARY KEY ("название_породы");


--
-- Name: цех номер_цеха; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."цех"
    ADD CONSTRAINT "номер_цеха" PRIMARY KEY ("номер_цеха");


--
-- Name: курица серийный_номер_курицы; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."курица"
    ADD CONSTRAINT "серийный_номер_курицы" PRIMARY KEY ("серийный_номер_курицы");


--
-- Name: директор фио_директора; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."директор"
    ADD CONSTRAINT "фио_директора" PRIMARY KEY ("фио_директора");


--
-- Name: fki_название_породы_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_название_породы_fk" ON public."курица" USING btree ("название_породы_fk");


--
-- Name: fki_номер_цеха_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_номер_цеха_fk" ON public."клетка" USING btree ("номер_цеха_fk");


--
-- Name: fki_фио_работника_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_фио_работника_fk" ON public."отчет" USING btree ("id_работника_fk");


--
-- Name: отчет id_работника_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."отчет"
    ADD CONSTRAINT "id_работника_fk" FOREIGN KEY ("id_работника_fk") REFERENCES public."работник"("id_работника") NOT VALID;


--
-- Name: курица название_породы_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."курица"
    ADD CONSTRAINT "название_породы_fk" FOREIGN KEY ("название_породы_fk") REFERENCES public."Порода"("название_породы") NOT VALID;


--
-- Name: клетка номер_цеха_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."клетка"
    ADD CONSTRAINT "номер_цеха_fk" FOREIGN KEY ("номер_цеха_fk") REFERENCES public."цех"("номер_цеха") NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         