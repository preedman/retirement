-- public.budgetstandard definition

-- Drop table

-- DROP TABLE public.budgetstandard;

CREATE TABLE public.budgetstandard (
	"ID" int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	item int4 NULL,
	lifestyle int4 NULL,
	retirementtype int4 NULL,
	budgetperweek float8 NULL,
	category int4 NULL,
	CONSTRAINT budgetstandard_pkey PRIMARY KEY ("ID")
);
CREATE INDEX "fki_itemFK" ON public.budgetstandard USING btree (item);
CREATE INDEX "fki_lifestyleFK" ON public.budgetstandard USING btree (lifestyle);
CREATE INDEX "fki_retirementtypeFK" ON public.budgetstandard USING btree (retirementtype);


-- public.budgetstandard foreign keys

ALTER TABLE public.budgetstandard ADD CONSTRAINT "categoryFk" FOREIGN KEY (category) REFERENCES public.category("ID");
ALTER TABLE public.budgetstandard ADD CONSTRAINT "itemFK" FOREIGN KEY (item) REFERENCES public.items("ID");
ALTER TABLE public.budgetstandard ADD CONSTRAINT "lifestyleFK" FOREIGN KEY (lifestyle) REFERENCES public.lifestyle("ID");
ALTER TABLE public.budgetstandard ADD CONSTRAINT "retirementtypeFK" FOREIGN KEY (retirementtype) REFERENCES public.retirementtype("ID");