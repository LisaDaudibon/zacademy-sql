---- RESET

DROP TYPE IF EXISTS regime;
--tid     uuid DEFAULT gen_random_uuid(),

---- CREATION

CREATE TYPE regime AS ENUM ('carnivore', 'herbivore', 'omnivore');

---- UPDATE

-- Try this
-- ALTER TABLE legumes
--     ALTER COLUMN tid
--         TYPE uuid;
-- ERROR: column "tid" cannot be cast automatically to type uuid
-- Hint: You might need to specify "USING tid::uuid".

-- ALTER TABLE legumes
--     ALTER COLUMN tid
--         TYPE uuid USING tid::uuid;
-- ERROR: foreign key constraint "animaux_legume_prefere_fkey" cannot be implemented
-- Key columns "legume_prefere" AND "tid" are of incompatible types: character varying AND uuid.

-- Remove constraint
ALTER TABLE animaux
    DROP CONSTRAINT animaux_legume_prefere_fkey;

-- Update type of tid column
ALTER TABLE legumes
    ALTER COLUMN tid
        TYPE uuid USING tid::uuid;
ALTER TABLE animaux
    ALTER COLUMN tid
        TYPE uuid USING tid::uuid;
ALTER TABLE legumes
    ALTER COLUMN tid
        SET DEFAULT gen_random_uuid();
ALTER TABLE animaux
    ALTER COLUMN tid
        SET DEFAULT gen_random_uuid();
ALTER TABLE animaux
    ALTER COLUMN legume_prefere
        TYPE uuid USING legume_prefere::uuid;

-- Recreate constraint
ALTER TABLE animaux
    ADD CONSTRAINT animaux_legume_prefere_fkey
        FOREIGN KEY (legume_prefere)
            REFERENCES legumes (tid);

-- Try this
-- ALTER TABLE animaux
--     ADD COLUMN classification REGIME NOT NULL;
-- ERROR: column "classification" of relation "animaux" contains null values

ALTER TABLE animaux
    ADD COLUMN classification REGIME;