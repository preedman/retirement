-- public.yearbudget definition

-- Drop table

-- DROP TABLE public.yearbudget;

CREATE TABLE public.yearbudget (
	"ID" int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	lifestyle int4 NULL,
	retirementtype int4 NULL,
	yearamount float8 NULL,
	CONSTRAINT yearbudget_pkey PRIMARY KEY ("ID")
);


-- public.yearbudget foreign keys

ALTER TABLE public.yearbudget ADD CONSTRAINT "lifestyleFK" FOREIGN KEY (lifestyle) REFERENCES public.lifestyle("ID");
ALTER TABLE public.yearbudget ADD CONSTRAINT "retirementtypeFK" FOREIGN KEY (retirementtype) REFERENCES public.retirementtype("ID");
