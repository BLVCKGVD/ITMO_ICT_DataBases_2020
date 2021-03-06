toc.dat                                                                                             0000600 0004000 0002000 00000032607 13667202706 0014460 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       &                    x            airport_system    12.2    12.2 %    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         E           1262    16393    airport_system    DATABASE     �   CREATE DATABASE airport_system WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE airport_system;
                postgres    false         �            1259    16515    Аэропорт    TABLE     �   CREATE TABLE public."Аэропорт" (
    "ID_airport" integer NOT NULL,
    "Название" text,
    "Страна" text
);
 &   DROP TABLE public."Аэропорт";
       public         heap    postgres    false         �            1259    16553    Аэропорт_ID_airport_seq    SEQUENCE     �   ALTER TABLE public."Аэропорт" ALTER COLUMN "ID_airport" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Аэропорт_ID_airport_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212         �            1259    16508    Маршрут    TABLE     �   CREATE TABLE public."Маршрут" (
    "ID_route" integer NOT NULL,
    "ID_airport_start" integer,
    "ID_airport_finish" integer,
    "Расстояние" integer
);
 $   DROP TABLE public."Маршрут";
       public         heap    postgres    false         �            1259    16511    Маршрут_ID_route_seq    SEQUENCE     �   ALTER TABLE public."Маршрут" ALTER COLUMN "ID_route" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Маршрут_ID_route_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210         �            1259    16493    Посадка    TABLE       CREATE TABLE public."Посадка" (
    "ID_landing" integer NOT NULL,
    "ID_flight" integer NOT NULL,
    "ID_airport_landing" integer,
    "Время_посадки" timestamp with time zone,
    "Время_вылета_посадки" timestamp with time zone
);
 $   DROP TABLE public."Посадка";
       public         heap    postgres    false         �            1259    16556    Посадка_ID_landing_seq    SEQUENCE     �   ALTER TABLE public."Посадка" ALTER COLUMN "ID_landing" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Посадка_ID_landing_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209         �            1259    16464    Рейс    TABLE     9  CREATE TABLE public."Рейс" (
    "ID_flight" integer NOT NULL,
    "ID_airplane" integer NOT NULL,
    "Количество_проданных_билетов" integer,
    "ID_route" integer,
    "Время_вылета" timestamp with time zone,
    "Время_прилёта" timestamp with time zone
);
    DROP TABLE public."Рейс";
       public         heap    postgres    false         �            1259    16491    Рейс_ID_flight_seq    SEQUENCE     �   ALTER TABLE public."Рейс" ALTER COLUMN "ID_flight" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Рейс_ID_flight_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    207         �            1259    16394    Самолёт    TABLE     �   CREATE TABLE public."Самолёт" (
    "ID_airplane" integer NOT NULL,
    "Тип_самолёта" text,
    "Число_мест" integer,
    "Скорость_полёта" integer,
    "Компания-авиаперевозчик" text
);
 $   DROP TABLE public."Самолёт";
       public         heap    postgres    false         �            1259    16460    Самолёт_ID_airplane_seq    SEQUENCE     �   ALTER TABLE public."Самолёт" ALTER COLUMN "ID_airplane" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Самолёт_ID_airplane_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    202         �            1259    16421    Сотрудник    TABLE     ;  CREATE TABLE public."Сотрудник" (
    "ID_worker" integer NOT NULL,
    "ФИО" text,
    "Возраст" integer,
    "Авиакомпания" text,
    "Должность" text,
    "Образование" text,
    "Стаж_работы" interval,
    "Паспортные-данные" text
);
 (   DROP TABLE public."Сотрудник";
       public         heap    postgres    false         �            1259    16462 "   Сотрудники_ID_worker_seq    SEQUENCE     �   ALTER TABLE public."Сотрудник" ALTER COLUMN "ID_worker" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Сотрудники_ID_worker_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203         �            1259    16443    Экипаж    TABLE     �   CREATE TABLE public."Экипаж" (
    "ID_flight" integer NOT NULL,
    "ID_worker" integer NOT NULL,
    "ID_staff" integer NOT NULL
);
 "   DROP TABLE public."Экипаж";
       public         heap    postgres    false         �            1259    16558    Экипаж_ID_staff_seq    SEQUENCE     �   ALTER TABLE public."Экипаж" ALTER COLUMN "ID_staff" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Экипаж_ID_staff_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204         �
           2606    16522 &   Аэропорт Аэропорт_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Аэропорт"
    ADD CONSTRAINT "Аэропорт_pkey" PRIMARY KEY ("ID_airport");
 T   ALTER TABLE ONLY public."Аэропорт" DROP CONSTRAINT "Аэропорт_pkey";
       public            postgres    false    212         �
           2606    16514 "   Маршрут Маршрут_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Маршрут"
    ADD CONSTRAINT "Маршрут_pkey" PRIMARY KEY ("ID_route");
 P   ALTER TABLE ONLY public."Маршрут" DROP CONSTRAINT "Маршрут_pkey";
       public            postgres    false    210         �
           2606    16500 "   Посадка Посадка_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Посадка"
    ADD CONSTRAINT "Посадка_pkey" PRIMARY KEY ("ID_landing");
 P   ALTER TABLE ONLY public."Посадка" DROP CONSTRAINT "Посадка_pkey";
       public            postgres    false    209         �
           2606    16471    Рейс Рейс_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Рейс"
    ADD CONSTRAINT "Рейс_pkey" PRIMARY KEY ("ID_flight");
 D   ALTER TABLE ONLY public."Рейс" DROP CONSTRAINT "Рейс_pkey";
       public            postgres    false    207         �
           2606    16401 "   Самолёт Самолёт_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."Самолёт"
    ADD CONSTRAINT "Самолёт_pkey" PRIMARY KEY ("ID_airplane");
 P   ALTER TABLE ONLY public."Самолёт" DROP CONSTRAINT "Самолёт_pkey";
       public            postgres    false    202         �
           2606    16428 *   Сотрудник Сотрудник_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."Сотрудник"
    ADD CONSTRAINT "Сотрудник_pkey" PRIMARY KEY ("ID_worker");
 X   ALTER TABLE ONLY public."Сотрудник" DROP CONSTRAINT "Сотрудник_pkey";
       public            postgres    false    203         �
           2606    16565    Экипаж Экипаж_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Экипаж"
    ADD CONSTRAINT "Экипаж_pkey" PRIMARY KEY ("ID_staff");
 L   ALTER TABLE ONLY public."Экипаж" DROP CONSTRAINT "Экипаж_pkey";
       public            postgres    false    204         �
           1259    16534 )   fki_Маршрут_ID_airport_finish_fkey    INDEX     w   CREATE INDEX "fki_Маршрут_ID_airport_finish_fkey" ON public."Маршрут" USING btree ("ID_airport_finish");
 ?   DROP INDEX public."fki_Маршрут_ID_airport_finish_fkey";
       public            postgres    false    210         �
           1259    16528 (   fki_Маршрут_ID_airport_start_fkey    INDEX     u   CREATE INDEX "fki_Маршрут_ID_airport_start_fkey" ON public."Маршрут" USING btree ("ID_airport_start");
 >   DROP INDEX public."fki_Маршрут_ID_airport_start_fkey";
       public            postgres    false    210         �
           1259    16540 *   fki_Посадка_ID_airport_landing_fkey    INDEX     y   CREATE INDEX "fki_Посадка_ID_airport_landing_fkey" ON public."Посадка" USING btree ("ID_airport_landing");
 @   DROP INDEX public."fki_Посадка_ID_airport_landing_fkey";
       public            postgres    false    209         �
           1259    16546    fki_Рейс_ID_airplane_fkey    INDEX     _   CREATE INDEX "fki_Рейс_ID_airplane_fkey" ON public."Рейс" USING btree ("ID_airplane");
 3   DROP INDEX public."fki_Рейс_ID_airplane_fkey";
       public            postgres    false    207         �
           1259    16552    fki_Рейс_ID_route_fkey    INDEX     Y   CREATE INDEX "fki_Рейс_ID_route_fkey" ON public."Рейс" USING btree ("ID_route");
 0   DROP INDEX public."fki_Рейс_ID_route_fkey";
       public            postgres    false    207         �
           2606    16529 4   Маршрут Маршрут_ID_airport_finish_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Маршрут"
    ADD CONSTRAINT "Маршрут_ID_airport_finish_fkey" FOREIGN KEY ("ID_airport_finish") REFERENCES public."Аэропорт"("ID_airport");
 b   ALTER TABLE ONLY public."Маршрут" DROP CONSTRAINT "Маршрут_ID_airport_finish_fkey";
       public          postgres    false    2746    210    212         �
           2606    16523 3   Маршрут Маршрут_ID_airport_start_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Маршрут"
    ADD CONSTRAINT "Маршрут_ID_airport_start_fkey" FOREIGN KEY ("ID_airport_start") REFERENCES public."Аэропорт"("ID_airport");
 a   ALTER TABLE ONLY public."Маршрут" DROP CONSTRAINT "Маршрут_ID_airport_start_fkey";
       public          postgres    false    2746    212    210         �
           2606    16535 5   Посадка Посадка_ID_airport_landing_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Посадка"
    ADD CONSTRAINT "Посадка_ID_airport_landing_fkey" FOREIGN KEY ("ID_airport_landing") REFERENCES public."Аэропорт"("ID_airport");
 c   ALTER TABLE ONLY public."Посадка" DROP CONSTRAINT "Посадка_ID_airport_landing_fkey";
       public          postgres    false    212    209    2746         �
           2606    16501 ,   Посадка Посадка_ID_flight_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Посадка"
    ADD CONSTRAINT "Посадка_ID_flight_fkey" FOREIGN KEY ("ID_landing") REFERENCES public."Рейс"("ID_flight");
 Z   ALTER TABLE ONLY public."Посадка" DROP CONSTRAINT "Посадка_ID_flight_fkey";
       public          postgres    false    2737    207    209         �
           2606    16547    Рейс Рейс_ID_route_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Рейс"
    ADD CONSTRAINT "Рейс_ID_route_fkey" FOREIGN KEY ("ID_route") REFERENCES public."Маршрут"("ID_route");
 M   ALTER TABLE ONLY public."Рейс" DROP CONSTRAINT "Рейс_ID_route_fkey";
       public          postgres    false    2744    207    210         �
           2606    16478 (   Экипаж Экипаж_ID_flight_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Экипаж"
    ADD CONSTRAINT "Экипаж_ID_flight_fkey" FOREIGN KEY ("ID_flight") REFERENCES public."Рейс"("ID_flight");
 V   ALTER TABLE ONLY public."Экипаж" DROP CONSTRAINT "Экипаж_ID_flight_fkey";
       public          postgres    false    2737    207    204         �
           2606    16483 (   Экипаж Экипаж_ID_worker_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Экипаж"
    ADD CONSTRAINT "Экипаж_ID_worker_fkey" FOREIGN KEY ("ID_worker") REFERENCES public."Сотрудник"("ID_worker");
 V   ALTER TABLE ONLY public."Экипаж" DROP CONSTRAINT "Экипаж_ID_worker_fkey";
       public          postgres    false    204    203    2731                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000025050 13667202706 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE airport_system;
--
-- Name: airport_system; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE airport_system WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';


ALTER DATABASE airport_system OWNER TO postgres;

\connect airport_system

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
-- Name: Аэропорт; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Аэропорт" (
    "ID_airport" integer NOT NULL,
    "Название" text,
    "Страна" text
);


ALTER TABLE public."Аэропорт" OWNER TO postgres;

--
-- Name: Аэропорт_ID_airport_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Аэропорт" ALTER COLUMN "ID_airport" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Аэропорт_ID_airport_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Маршрут; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Маршрут" (
    "ID_route" integer NOT NULL,
    "ID_airport_start" integer,
    "ID_airport_finish" integer,
    "Расстояние" integer
);


ALTER TABLE public."Маршрут" OWNER TO postgres;

--
-- Name: Маршрут_ID_route_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Маршрут" ALTER COLUMN "ID_route" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Маршрут_ID_route_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Посадка; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Посадка" (
    "ID_landing" integer NOT NULL,
    "ID_flight" integer NOT NULL,
    "ID_airport_landing" integer,
    "Время_посадки" timestamp with time zone,
    "Время_вылета_посадки" timestamp with time zone
);


ALTER TABLE public."Посадка" OWNER TO postgres;

--
-- Name: Посадка_ID_landing_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Посадка" ALTER COLUMN "ID_landing" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Посадка_ID_landing_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Рейс; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Рейс" (
    "ID_flight" integer NOT NULL,
    "ID_airplane" integer NOT NULL,
    "Количество_проданных_билетов" integer,
    "ID_route" integer,
    "Время_вылета" timestamp with time zone,
    "Время_прилёта" timestamp with time zone
);


ALTER TABLE public."Рейс" OWNER TO postgres;

--
-- Name: Рейс_ID_flight_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Рейс" ALTER COLUMN "ID_flight" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Рейс_ID_flight_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Самолёт; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Самолёт" (
    "ID_airplane" integer NOT NULL,
    "Тип_самолёта" text,
    "Число_мест" integer,
    "Скорость_полёта" integer,
    "Компания-авиаперевозчик" text
);


ALTER TABLE public."Самолёт" OWNER TO postgres;

--
-- Name: Самолёт_ID_airplane_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Самолёт" ALTER COLUMN "ID_airplane" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Самолёт_ID_airplane_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Сотрудник; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Сотрудник" (
    "ID_worker" integer NOT NULL,
    "ФИО" text,
    "Возраст" integer,
    "Авиакомпания" text,
    "Должность" text,
    "Образование" text,
    "Стаж_работы" interval,
    "Паспортные-данные" text
);


ALTER TABLE public."Сотрудник" OWNER TO postgres;

--
-- Name: Сотрудники_ID_worker_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Сотрудник" ALTER COLUMN "ID_worker" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Сотрудники_ID_worker_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Экипаж; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Экипаж" (
    "ID_flight" integer NOT NULL,
    "ID_worker" integer NOT NULL,
    "ID_staff" integer NOT NULL
);


ALTER TABLE public."Экипаж" OWNER TO postgres;

--
-- Name: Экипаж_ID_staff_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Экипаж" ALTER COLUMN "ID_staff" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Экипаж_ID_staff_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Аэропорт Аэропорт_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Аэропорт"
    ADD CONSTRAINT "Аэропорт_pkey" PRIMARY KEY ("ID_airport");


--
-- Name: Маршрут Маршрут_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Маршрут"
    ADD CONSTRAINT "Маршрут_pkey" PRIMARY KEY ("ID_route");


--
-- Name: Посадка Посадка_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Посадка"
    ADD CONSTRAINT "Посадка_pkey" PRIMARY KEY ("ID_landing");


--
-- Name: Рейс Рейс_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Рейс"
    ADD CONSTRAINT "Рейс_pkey" PRIMARY KEY ("ID_flight");


--
-- Name: Самолёт Самолёт_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Самолёт"
    ADD CONSTRAINT "Самолёт_pkey" PRIMARY KEY ("ID_airplane");


--
-- Name: Сотрудник Сотрудник_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Сотрудник"
    ADD CONSTRAINT "Сотрудник_pkey" PRIMARY KEY ("ID_worker");


--
-- Name: Экипаж Экипаж_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Экипаж"
    ADD CONSTRAINT "Экипаж_pkey" PRIMARY KEY ("ID_staff");


--
-- Name: fki_Маршрут_ID_airport_finish_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_Маршрут_ID_airport_finish_fkey" ON public."Маршрут" USING btree ("ID_airport_finish");


--
-- Name: fki_Маршрут_ID_airport_start_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_Маршрут_ID_airport_start_fkey" ON public."Маршрут" USING btree ("ID_airport_start");


--
-- Name: fki_Посадка_ID_airport_landing_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_Посадка_ID_airport_landing_fkey" ON public."Посадка" USING btree ("ID_airport_landing");


--
-- Name: fki_Рейс_ID_airplane_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_Рейс_ID_airplane_fkey" ON public."Рейс" USING btree ("ID_airplane");


--
-- Name: fki_Рейс_ID_route_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_Рейс_ID_route_fkey" ON public."Рейс" USING btree ("ID_route");


--
-- Name: Маршрут Маршрут_ID_airport_finish_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Маршрут"
    ADD CONSTRAINT "Маршрут_ID_airport_finish_fkey" FOREIGN KEY ("ID_airport_finish") REFERENCES public."Аэропорт"("ID_airport");


--
-- Name: Маршрут Маршрут_ID_airport_start_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Маршрут"
    ADD CONSTRAINT "Маршрут_ID_airport_start_fkey" FOREIGN KEY ("ID_airport_start") REFERENCES public."Аэропорт"("ID_airport");


--
-- Name: Посадка Посадка_ID_airport_landing_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Посадка"
    ADD CONSTRAINT "Посадка_ID_airport_landing_fkey" FOREIGN KEY ("ID_airport_landing") REFERENCES public."Аэропорт"("ID_airport");


--
-- Name: Посадка Посадка_ID_flight_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Посадка"
    ADD CONSTRAINT "Посадка_ID_flight_fkey" FOREIGN KEY ("ID_landing") REFERENCES public."Рейс"("ID_flight");


--
-- Name: Рейс Рейс_ID_route_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Рейс"
    ADD CONSTRAINT "Рейс_ID_route_fkey" FOREIGN KEY ("ID_route") REFERENCES public."Маршрут"("ID_route");


--
-- Name: Экипаж Экипаж_ID_flight_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Экипаж"
    ADD CONSTRAINT "Экипаж_ID_flight_fkey" FOREIGN KEY ("ID_flight") REFERENCES public."Рейс"("ID_flight");


--
-- Name: Экипаж Экипаж_ID_worker_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Экипаж"
    ADD CONSTRAINT "Экипаж_ID_worker_fkey" FOREIGN KEY ("ID_worker") REFERENCES public."Сотрудник"("ID_worker");


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        