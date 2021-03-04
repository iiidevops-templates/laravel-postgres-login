-- Adminer 4.8.0 PostgreSQL 13.2 dump

DROP TABLE IF EXISTS "failed_jobs";
DROP SEQUENCE IF EXISTS failed_jobs_id_seq;
CREATE SEQUENCE failed_jobs_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

CREATE TABLE "public"."failed_jobs" (
    "id" bigint DEFAULT nextval('failed_jobs_id_seq') NOT NULL,
    "connection" text NOT NULL,
    "queue" text NOT NULL,
    "payload" text NOT NULL,
    "exception" text NOT NULL,
    "failed_at" timestamp(0) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


<br />
<b>Warning</b>:  PDO::query(): SQLSTATE[42703]: Undefined column: 7 ERROR:  column &quot;consrc&quot; does not exist
LINE 1: SELECT conname, consrc
                        ^
HINT:  Perhaps you meant to reference the column &quot;pg_constraint.conkey&quot; or the column &quot;pg_constraint.conbin&quot;. in <b>/var/www/html/adminer.php</b> on line <b>185</b><br />
DROP TABLE IF EXISTS "migrations";
DROP SEQUENCE IF EXISTS migrations_id_seq;
CREATE SEQUENCE migrations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 3 CACHE 1;

CREATE TABLE "public"."migrations" (
    "id" integer DEFAULT nextval('migrations_id_seq') NOT NULL,
    "migration" character varying(255) NOT NULL,
    "batch" integer NOT NULL,
    CONSTRAINT "migrations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "migrations" ("id", "migration", "batch") VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1);

<br />
<b>Warning</b>:  PDO::query(): SQLSTATE[42703]: Undefined column: 7 ERROR:  column &quot;consrc&quot; does not exist
LINE 1: SELECT conname, consrc
                        ^
HINT:  Perhaps you meant to reference the column &quot;pg_constraint.conkey&quot; or the column &quot;pg_constraint.conbin&quot;. in <b>/var/www/html/adminer.php</b> on line <b>185</b><br />
DROP TABLE IF EXISTS "password_resets";
CREATE TABLE "public"."password_resets" (
    "email" character varying(255) NOT NULL,
    "token" character varying(255) NOT NULL,
    "created_at" timestamp(0)
) WITH (oids = false);

CREATE INDEX "password_resets_email_index" ON "public"."password_resets" USING btree ("email");


<br />
<b>Warning</b>:  PDO::query(): SQLSTATE[42703]: Undefined column: 7 ERROR:  column &quot;consrc&quot; does not exist
LINE 1: SELECT conname, consrc
                        ^
HINT:  Perhaps you meant to reference the column &quot;pg_constraint.conkey&quot; or the column &quot;pg_constraint.conbin&quot;. in <b>/var/www/html/adminer.php</b> on line <b>185</b><br />
DROP TABLE IF EXISTS "users";
DROP SEQUENCE IF EXISTS users_id_seq;
CREATE SEQUENCE users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."users" (
    "id" bigint DEFAULT nextval('users_id_seq') NOT NULL,
    "name" character varying(255) NOT NULL,
    "email" character varying(255) NOT NULL,
    "email_verified_at" timestamp(0),
    "password" character varying(255) NOT NULL,
    "remember_token" character varying(100),
    "created_at" timestamp(0),
    "updated_at" timestamp(0),
    CONSTRAINT "users_email_unique" UNIQUE ("email"),
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at") VALUES
(1,	'm0724001',	'm0724001@gm.nuu.edu.tw',	NULL,	'$2y$10$gp7kfLtAoTVDQdfPo8oZTekjdMafCipcvgjK.QKeO/chfbIC6DIkK',	NULL,	'2021-03-03 08:55:42',	'2021-03-03 08:55:42');

-- 2021-03-03 08:57:45.724227+00
