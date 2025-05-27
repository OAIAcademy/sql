-- table creation
CREATE TABLE documents
(
    id      SERIAL PRIMARY KEY, -- auto generated
    name    text not null,      -- can't be left empty
    link    text not null,
    checked bool DEFAULT FALSE  -- always set to false if not specified
);

-- table deletion
DROP TABLE documents;
DROP TABLE IF EXISTS documents;
DROP TABLE IF EXISTS documents CASCADE;

-- altering table
-- add/remove columns
ALTER TABLE documents
    ADD COLUMN description TEXT;
ALTER TABLE documents
    DROP COLUMN description;

-- set constraint
ALTER TABLE documents
    ADD COLUMN student_id TEXT;
ALTER TABLE documents
    ALTER COLUMN student_id SET NOT NULL;
ALTER TABLE documents
    ADD CONSTRAINT name_student_uniq UNIQUE (student_id, name);

-- set foreign key
ALTER TABLE documents
    ADD CONSTRAINT sudent_id_fk FOREIGN KEY (student_id) REFERENCES students (id)

