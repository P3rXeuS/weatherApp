PGDMP  :        
        	    |            weather_dashboard     17.0 (Ubuntu 17.0-1.pgdg22.04+1)     17.0 (Ubuntu 17.0-1.pgdg22.04+1)     3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            6           1262    16406    weather_dashboard    DATABASE     }   CREATE DATABASE weather_dashboard WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
 !   DROP DATABASE weather_dashboard;
                     yourvei    false            �            1259    16422    cities    TABLE     f   CREATE TABLE public.cities (
    id integer NOT NULL,
    city_name character varying(50) NOT NULL
);
    DROP TABLE public.cities;
       public         heap r       yourvei    false            �            1259    16421    cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public               yourvei    false    218            7           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public               yourvei    false    217            �           2604    16425 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public               yourvei    false    217    218    218            0          0    16422    cities 
   TABLE DATA           /   COPY public.cities (id, city_name) FROM stdin;
    public               yourvei    false    218            8           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public               yourvei    false    217            �           2606    16427    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public                 yourvei    false    218            0      x������ � �          3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            6           1262    16406    weather_dashboard    DATABASE     }   CREATE DATABASE weather_dashboard WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
 !   DROP DATABASE weather_dashboard;
                     yourvei    false            �            1259    16422    cities    TABLE     f   CREATE TABLE public.cities (
    id integer NOT NULL,
    city_name character varying(50) NOT NULL
);
    DROP TABLE public.cities;
       public         heap r       yourvei    false            �            1259    16421    cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public               yourvei    false    218            7           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public               yourvei    false    217            �           2604    16425 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public               yourvei    false    217    218    218            0          0    16422    cities 
   TABLE DATA           /   COPY public.cities (id, city_name) FROM stdin;
    public               yourvei    false    218   �
       8           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public               yourvei    false    217            �           2606    16427    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public                 yourvei    false    218           