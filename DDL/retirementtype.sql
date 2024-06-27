-- public.retirementtype definition

-- Drop table

-- DROP TABLE public.retirementtype;

CREATE TABLE public.retirementtype (
	"ID" int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	description varchar(100) NULL,
	CONSTRAINT retirementtype_pkey PRIMARY KEY ("ID")
);