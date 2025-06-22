-- DROP TABLE IF EXISTS public.medicare_stats;

CREATE TABLE IF NOT EXISTS public.medicare_stats
(
	provider_id text COLLATE pg_catalog. "default", 
	provider_name text COLLATE pg_catalog. "default",
	"totalhealthDeficiencyValue" numeric,
	"totalhealthDeficiencyStateValue" numeric,
	"totalhealthDeficiencyNationalValue" numeric
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.medicare_stats
	OWNER to postgres;
