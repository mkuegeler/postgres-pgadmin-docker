-- Database: parametric-elements

-- DROP DATABASE "parametric-elements";

CREATE DATABASE "parametric-elements"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Table: public.categories

-- DROP TABLE public.categories;

CREATE TABLE IF NOT EXISTS public.categories (
	category_id serial PRIMARY KEY,
	category_name VARCHAR ( 50 ) UNIQUE NOT NULL
)


TABLESPACE pg_default;

ALTER TABLE public.categories
    OWNER to postgres; 

-- Table: public.elements

-- DROP TABLE public.elements;

CREATE TABLE IF NOT EXISTS public.elements (
	element_id serial PRIMARY KEY,
	element_name VARCHAR ( 50 ) UNIQUE NOT NULL,
    category_name VARCHAR ( 50 ) UNIQUE NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE public.elements
    OWNER to postgres;    

-- DROP TABLE public.attributes;

CREATE TABLE IF NOT EXISTS public.attributes (
	attribute_id serial PRIMARY KEY,
	attribute_name VARCHAR ( 50 ) UNIQUE NOT NULL,
    attribute_value VARCHAR ( 50 ) UNIQUE NOT NULL,
    element_name VARCHAR ( 50 ) UNIQUE NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE public.attributes
    OWNER to postgres;         