PGDMP     "                	    x            postgres    11.9    11.9 6    C           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            D           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            E           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            F           1262    13012    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
             postgres    false            G           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2886                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            H           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            �            1259    16607    administrator    TABLE     k   CREATE TABLE public.administrator (
    admin_id integer NOT NULL,
    surname text,
    firstname text
);
 !   DROP TABLE public.administrator;
       public         postgres    false            �            1259    16605    administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.administrator_id_seq;
       public       postgres    false    203            I           0    0    administrator_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.administrator_id_seq OWNED BY public.administrator.admin_id;
            public       postgres    false    202            �            1259    16766    contract    TABLE     ~   CREATE TABLE public.contract (
    contract integer NOT NULL,
    room integer,
    passport integer,
    admin_id integer
);
    DROP TABLE public.contract;
       public         postgres    false            �            1259    16764    contract_contract_seq    SEQUENCE     �   CREATE SEQUENCE public.contract_contract_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.contract_contract_seq;
       public       postgres    false    208            J           0    0    contract_contract_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.contract_contract_seq OWNED BY public.contract.contract;
            public       postgres    false    207            �            1259    16637    customer    TABLE     �   CREATE TABLE public.customer (
    passport integer NOT NULL,
    name character varying(30),
    surname character varying(30),
    city text,
    arrival daterange
);
    DROP TABLE public.customer;
       public         postgres    false            �            1259    16576    room    TABLE     �   CREATE TABLE public.room (
    room integer NOT NULL,
    phone character varying(12),
    floor integer,
    roomtype integer
);
    DROP TABLE public.room;
       public         postgres    false            �            1259    16566    roomtype    TABLE     `   CREATE TABLE public.roomtype (
    id integer NOT NULL,
    price integer,
    copacity text
);
    DROP TABLE public.roomtype;
       public         postgres    false            �            1259    16564    roomtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roomtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.roomtype_id_seq;
       public       postgres    false    198            K           0    0    roomtype_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.roomtype_id_seq OWNED BY public.roomtype.id;
            public       postgres    false    197            �            1259    16618 	   timetable    TABLE     o   CREATE TABLE public.timetable (
    id integer NOT NULL,
    day text,
    room integer,
    worker integer
);
    DROP TABLE public.timetable;
       public         postgres    false            �            1259    16616    timetable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.timetable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.timetable_id_seq;
       public       postgres    false    205            L           0    0    timetable_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.timetable_id_seq OWNED BY public.timetable.id;
            public       postgres    false    204            �            1259    16596    workers    TABLE     _   CREATE TABLE public.workers (
    id integer NOT NULL,
    surname text,
    firstname text
);
    DROP TABLE public.workers;
       public         postgres    false            �            1259    16594    workers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.workers_id_seq;
       public       postgres    false    201            M           0    0    workers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.workers_id_seq OWNED BY public.workers.id;
            public       postgres    false    200            �
           2604    16610    administrator admin_id    DEFAULT     z   ALTER TABLE ONLY public.administrator ALTER COLUMN admin_id SET DEFAULT nextval('public.administrator_id_seq'::regclass);
 E   ALTER TABLE public.administrator ALTER COLUMN admin_id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    16769    contract contract    DEFAULT     v   ALTER TABLE ONLY public.contract ALTER COLUMN contract SET DEFAULT nextval('public.contract_contract_seq'::regclass);
 @   ALTER TABLE public.contract ALTER COLUMN contract DROP DEFAULT;
       public       postgres    false    207    208    208            �
           2604    16569    roomtype id    DEFAULT     j   ALTER TABLE ONLY public.roomtype ALTER COLUMN id SET DEFAULT nextval('public.roomtype_id_seq'::regclass);
 :   ALTER TABLE public.roomtype ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197    198            �
           2604    16621    timetable id    DEFAULT     l   ALTER TABLE ONLY public.timetable ALTER COLUMN id SET DEFAULT nextval('public.timetable_id_seq'::regclass);
 ;   ALTER TABLE public.timetable ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    16599 
   workers id    DEFAULT     h   ALTER TABLE ONLY public.workers ALTER COLUMN id SET DEFAULT nextval('public.workers_id_seq'::regclass);
 9   ALTER TABLE public.workers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            ;          0    16607    administrator 
   TABLE DATA               E   COPY public.administrator (admin_id, surname, firstname) FROM stdin;
    public       postgres    false    203   �8       @          0    16766    contract 
   TABLE DATA               F   COPY public.contract (contract, room, passport, admin_id) FROM stdin;
    public       postgres    false    208   #9       >          0    16637    customer 
   TABLE DATA               J   COPY public.customer (passport, name, surname, city, arrival) FROM stdin;
    public       postgres    false    206   @9       7          0    16576    room 
   TABLE DATA               <   COPY public.room (room, phone, floor, roomtype) FROM stdin;
    public       postgres    false    199   �9       6          0    16566    roomtype 
   TABLE DATA               7   COPY public.roomtype (id, price, copacity) FROM stdin;
    public       postgres    false    198   E:       =          0    16618 	   timetable 
   TABLE DATA               :   COPY public.timetable (id, day, room, worker) FROM stdin;
    public       postgres    false    205   �:       9          0    16596    workers 
   TABLE DATA               9   COPY public.workers (id, surname, firstname) FROM stdin;
    public       postgres    false    201   �:       N           0    0    administrator_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.administrator_id_seq', 3, true);
            public       postgres    false    202            O           0    0    contract_contract_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.contract_contract_seq', 1, false);
            public       postgres    false    207            P           0    0    roomtype_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.roomtype_id_seq', 3, true);
            public       postgres    false    197            Q           0    0    timetable_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.timetable_id_seq', 4, true);
            public       postgres    false    204            R           0    0    workers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.workers_id_seq', 3, true);
            public       postgres    false    200            �
           2606    16615     administrator administrator_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.administrator
    ADD CONSTRAINT administrator_pkey PRIMARY KEY (admin_id);
 J   ALTER TABLE ONLY public.administrator DROP CONSTRAINT administrator_pkey;
       public         postgres    false    203            �
           2606    16771    contract contract_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_pkey PRIMARY KEY (contract);
 @   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_pkey;
       public         postgres    false    208            �
           2606    16644    customer customer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (passport);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public         postgres    false    206            �
           2606    16580    room room_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (room);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public         postgres    false    199            �
           2606    16574    roomtype roomtype_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.roomtype
    ADD CONSTRAINT roomtype_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.roomtype DROP CONSTRAINT roomtype_pkey;
       public         postgres    false    198            �
           2606    16626    timetable timetable_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.timetable DROP CONSTRAINT timetable_pkey;
       public         postgres    false    205            �
           2606    16604    workers workers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.workers
    ADD CONSTRAINT workers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.workers DROP CONSTRAINT workers_pkey;
       public         postgres    false    201            �
           2606    16782    contract contract_admin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.administrator(admin_id);
 I   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_admin_id_fkey;
       public       postgres    false    2735    203    208            �
           2606    16777    contract contract_passport_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_passport_fkey FOREIGN KEY (passport) REFERENCES public.customer(passport);
 I   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_passport_fkey;
       public       postgres    false    2739    208    206            �
           2606    16772    contract contract_room_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_room_fkey FOREIGN KEY (room) REFERENCES public.room(room);
 E   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_room_fkey;
       public       postgres    false    2731    208    199            �
           2606    16581    room room_roomtype_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_roomtype_fkey FOREIGN KEY (roomtype) REFERENCES public.roomtype(id);
 A   ALTER TABLE ONLY public.room DROP CONSTRAINT room_roomtype_fkey;
       public       postgres    false    198    2729    199            �
           2606    16627    timetable timetable_room_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_room_fkey FOREIGN KEY (room) REFERENCES public.room(room);
 G   ALTER TABLE ONLY public.timetable DROP CONSTRAINT timetable_room_fkey;
       public       postgres    false    2731    205    199            �
           2606    16632    timetable timetable_worker_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_worker_fkey FOREIGN KEY (worker) REFERENCES public.workers(id);
 I   ALTER TABLE ONLY public.timetable DROP CONSTRAINT timetable_worker_fkey;
       public       postgres    false    2733    201    205            ;   Z   x��K@@D�݇��:38�����D1�g���bQ��{�
zsVcƉ��` �T�f��~���h��Zi���\�]��k����9�      @      x������ � �      >   �   x�342662414�0��6\�{a߅M���M .gpAg������������i��ejljnlnjl� �Ļ.v I�)
�f��4w녽@�v\�ə�_��_3��t`L##��&�@3��r^XT��� �7��]�ى9��PS,t,!�X�&W� I�\      7   ;   x�5��	�0���J� )M�]�������Z-٥QA��S�x�nfN��3ߛ��e      6   D   x�3�4200༰�{��[/6^l�7\��2�4�n���b3��1�H�b���x+�l� K�2N      =   <   x�3⼰�¾{/l���w_��w\��ihd�i�e�K��ȈӘ���1Pڈ+F��� TS6G      9   I   x�3估�b��v]�qa/�M6\l���e�	�9�^�wa'�	7��ra�-�]l � �\1z\\\ ,�0�     