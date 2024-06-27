-- public.items definition

-- Drop table

-- DROP TABLE public.items;

CREATE TABLE public.items (
	"ID" int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	description varchar(100) NULL,
	category int4 NULL,
	CONSTRAINT items_pk PRIMARY KEY ("ID")
);
CREATE INDEX "fki_categoryFk" ON public.items USING btree (category);


-- public.items foreign keys

ALTER TABLE public.items ADD CONSTRAINT "categoryFk" FOREIGN KEY (category) REFERENCES public.category("ID");