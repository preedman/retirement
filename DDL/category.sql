-- public.category definition

-- Drop table

-- DROP TABLE public.category;

CREATE TABLE public.category (
	"ID" int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	description varchar(100) NULL,
	CONSTRAINT category_pk PRIMARY KEY ("ID")
);