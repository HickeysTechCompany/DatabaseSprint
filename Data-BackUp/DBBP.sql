PGDMP                         {           Hickeys-BookStore    15.2    15.2 (    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    32938    Hickeys-BookStore    DATABASE     �   CREATE DATABASE "Hickeys-BookStore" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Canada.1252';
 #   DROP DATABASE "Hickeys-BookStore";
                postgres    false            �            1259    32967    appointments    TABLE     �   CREATE TABLE public.appointments (
    appointmentid integer NOT NULL,
    customerid integer,
    clinicid integer,
    bookid integer,
    appointmentdate date,
    appointmenttime time without time zone
);
     DROP TABLE public.appointments;
       public         heap    postgres    false            �            1259    32966    appointments_appointmentid_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_appointmentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.appointments_appointmentid_seq;
       public          postgres    false    221            (           0    0    appointments_appointmentid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.appointments_appointmentid_seq OWNED BY public.appointments.appointmentid;
          public          postgres    false    220            �            1259    32940    books    TABLE     �   CREATE TABLE public.books (
    bookid integer NOT NULL,
    title character varying(255),
    author character varying(255),
    genre character varying(255),
    price numeric(10,2)
);
    DROP TABLE public.books;
       public         heap    postgres    false            �            1259    32939    books_bookid_seq    SEQUENCE     �   CREATE SEQUENCE public.books_bookid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.books_bookid_seq;
       public          postgres    false    215            )           0    0    books_bookid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.books_bookid_seq OWNED BY public.books.bookid;
          public          postgres    false    214            �            1259    32949    clinics    TABLE     �   CREATE TABLE public.clinics (
    clinicid integer NOT NULL,
    clinicname character varying(255),
    location character varying(255),
    contactnumber character varying(20)
);
    DROP TABLE public.clinics;
       public         heap    postgres    false            �            1259    32948    clinics_clinicid_seq    SEQUENCE     �   CREATE SEQUENCE public.clinics_clinicid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.clinics_clinicid_seq;
       public          postgres    false    217            *           0    0    clinics_clinicid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.clinics_clinicid_seq OWNED BY public.clinics.clinicid;
          public          postgres    false    216            �            1259    32988    customerbooks    TABLE     d   CREATE TABLE public.customerbooks (
    customerid integer NOT NULL,
    bookid integer NOT NULL
);
 !   DROP TABLE public.customerbooks;
       public         heap    postgres    false            �            1259    32958 	   customers    TABLE     �   CREATE TABLE public.customers (
    customerid integer NOT NULL,
    name character varying(255),
    address character varying(255),
    email character varying(255),
    phonenumber character varying(20)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    32957    customers_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customers_customerid_seq;
       public          postgres    false    219            +           0    0    customers_customerid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customers_customerid_seq OWNED BY public.customers.customerid;
          public          postgres    false    218            {           2604    32970    appointments appointmentid    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN appointmentid SET DEFAULT nextval('public.appointments_appointmentid_seq'::regclass);
 I   ALTER TABLE public.appointments ALTER COLUMN appointmentid DROP DEFAULT;
       public          postgres    false    221    220    221            x           2604    32943    books bookid    DEFAULT     l   ALTER TABLE ONLY public.books ALTER COLUMN bookid SET DEFAULT nextval('public.books_bookid_seq'::regclass);
 ;   ALTER TABLE public.books ALTER COLUMN bookid DROP DEFAULT;
       public          postgres    false    215    214    215            y           2604    32952    clinics clinicid    DEFAULT     t   ALTER TABLE ONLY public.clinics ALTER COLUMN clinicid SET DEFAULT nextval('public.clinics_clinicid_seq'::regclass);
 ?   ALTER TABLE public.clinics ALTER COLUMN clinicid DROP DEFAULT;
       public          postgres    false    216    217    217            z           2604    32961    customers customerid    DEFAULT     |   ALTER TABLE ONLY public.customers ALTER COLUMN customerid SET DEFAULT nextval('public.customers_customerid_seq'::regclass);
 C   ALTER TABLE public.customers ALTER COLUMN customerid DROP DEFAULT;
       public          postgres    false    218    219    219                       0    32967    appointments 
   TABLE DATA                 public          postgres    false    221   m-                 0    32940    books 
   TABLE DATA                 public          postgres    false    215   �-                 0    32949    clinics 
   TABLE DATA                 public          postgres    false    217   o.       !          0    32988    customerbooks 
   TABLE DATA                 public          postgres    false    222   �.                 0    32958 	   customers 
   TABLE DATA                 public          postgres    false    219   K/       ,           0    0    appointments_appointmentid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.appointments_appointmentid_seq', 3, true);
          public          postgres    false    220            -           0    0    books_bookid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.books_bookid_seq', 3, true);
          public          postgres    false    214            .           0    0    clinics_clinicid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.clinics_clinicid_seq', 3, true);
          public          postgres    false    216            /           0    0    customers_customerid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.customers_customerid_seq', 3, true);
          public          postgres    false    218            �           2606    32972    appointments appointments_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointmentid);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public            postgres    false    221            }           2606    32947    books books_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (bookid);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    215                       2606    32956    clinics clinics_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.clinics
    ADD CONSTRAINT clinics_pkey PRIMARY KEY (clinicid);
 >   ALTER TABLE ONLY public.clinics DROP CONSTRAINT clinics_pkey;
       public            postgres    false    217            �           2606    32992     customerbooks customerbooks_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.customerbooks
    ADD CONSTRAINT customerbooks_pkey PRIMARY KEY (customerid, bookid);
 J   ALTER TABLE ONLY public.customerbooks DROP CONSTRAINT customerbooks_pkey;
       public            postgres    false    222    222            �           2606    32965    customers customers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customerid);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    219            �           2606    32983 %   appointments appointments_bookid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_bookid_fkey FOREIGN KEY (bookid) REFERENCES public.books(bookid);
 O   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_bookid_fkey;
       public          postgres    false    221    215    3197            �           2606    32978 '   appointments appointments_clinicid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_clinicid_fkey FOREIGN KEY (clinicid) REFERENCES public.clinics(clinicid);
 Q   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_clinicid_fkey;
       public          postgres    false    217    3199    221            �           2606    32973 )   appointments appointments_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);
 S   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_customerid_fkey;
       public          postgres    false    221    219    3201            �           2606    32998 '   customerbooks customerbooks_bookid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customerbooks
    ADD CONSTRAINT customerbooks_bookid_fkey FOREIGN KEY (bookid) REFERENCES public.books(bookid);
 Q   ALTER TABLE ONLY public.customerbooks DROP CONSTRAINT customerbooks_bookid_fkey;
       public          postgres    false    215    222    3197            �           2606    32993 +   customerbooks customerbooks_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customerbooks
    ADD CONSTRAINT customerbooks_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);
 U   ALTER TABLE ONLY public.customerbooks DROP CONSTRAINT customerbooks_customerid_fkey;
       public          postgres    false    222    3201    219                t   x���v
Q���W((M��L�K,(���+�M�+)Vs�	uV�0�Q�#u##c]3]#Ku ���� ��5��<�4�HG��ƙ���3�2&�8c8Bg2�����j �<�         n   x���v
Q���W((M��L�K���.Vs�	uV�0�QPw�(�Y��%�E�{j^Q*�ih�gi�i��I�0#�aFH�!1��4�f�1�a��@L�Y\\ |�>�         v   x���v
Q���W((M��L�K����L.Vs�	uV�0�QPw�)��>�ɉ%��y�������������5�'a����YZ����k�1�8c��<�Ӏ��� ��A^      !   F   x���v
Q���W((M��L�K.-.��M-J���.Vs�	uV�0�Q0Դ��$A�)�t��깸 LQ,�         �   x���v
Q���W((M��L�K.-.��M-*Vs�	uV�0�QPw��*�y�))E���L��CjEbnAN�^r~.H��5��<����*#d����2B������*cd����2F��@Vqq OE`?     