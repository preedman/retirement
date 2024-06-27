-- public.lifestyle definition

-- Drop table

-- DROP TABLE public.lifestyle;

CREATE TABLE public.lifestyle (
	"ID" int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	description varchar(25) NULL,
	CONSTRAINT lifestyle_pkey PRIMARY KEY ("ID")
);