CREATE ROLE pippo;

ALTER ROLE pippo with LOGIN;
ALTER USER user_name WITH PASSWORD 'new_password';
SELECT * FROM pg_roles;

GRANT ALL PRIVILEGES ON SCHEMA university.public TO pippo;
REVOKE INSERT ON TABLE university.public.teachers FROM pippo;

DROP ROLE pippo;

