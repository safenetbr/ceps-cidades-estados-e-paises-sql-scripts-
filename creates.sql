-- Table: utils.paises

-- DROP TABLE utils.paises;

CREATE TABLE utils.paises
(
    codpais integer NOT NULL,
    ddi integer NOT NULL,
    iso2 character(2) COLLATE pg_catalog."default" NOT NULL,
    iso3 character(3) COLLATE pg_catalog."default" NOT NULL,
    nome character varying(50) COLLATE pg_catalog."default" NOT NULL,
    nomeformal character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT paises_pkey PRIMARY KEY (codpais)
)

TABLESPACE pg_default;

ALTER TABLE utils.paises
    OWNER to safenet;
	
-- Table: utils.estados

-- DROP TABLE utils.estados;

CREATE TABLE utils.estados
(
    codestado integer NOT NULL,
    nome character varying(30) COLLATE pg_catalog."default" NOT NULL,
    uf character varying(2) COLLATE pg_catalog."default" NOT NULL,
    ibge integer,
    pais integer,
    ddd json,
    nomeregiao character varying(25) COLLATE pg_catalog."default",
    CONSTRAINT estados_pkey PRIMARY KEY (codestado),
    CONSTRAINT fk_tbestadopais FOREIGN KEY (pais)
        REFERENCES utils.paises (codpais) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE utils.estados
    OWNER to safenet;	

-- Table: utils.cidades

-- DROP TABLE utils.cidades;

CREATE TABLE utils.cidades
(
    codcidade integer NOT NULL,
    nome character varying(70) COLLATE pg_catalog."default" NOT NULL,
    codestado integer NOT NULL,
    CONSTRAINT cidades_pkey PRIMARY KEY (codcidade),
    CONSTRAINT fk_cidades_codestado FOREIGN KEY (codestado)
        REFERENCES utils.estados (codestado) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE utils.cidades
    OWNER to safenet;
	
-- Table: utils.ceps

-- DROP TABLE utils.ceps;

CREATE TABLE utils.ceps
(
    cep character varying(8) COLLATE pg_catalog."default" NOT NULL,
    logradouro character varying(100) COLLATE pg_catalog."default",
    referencia character varying(100) COLLATE pg_catalog."default",
    bairro character varying(100) COLLATE pg_catalog."default",
    codcidade integer NOT NULL,
    codestado integer NOT NULL,
    CONSTRAINT ceps_pkey PRIMARY KEY (cep),
    CONSTRAINT fk_cep_codestados FOREIGN KEY (codestado)
        REFERENCES utils.estados (codestado) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_tbcepcodcidade FOREIGN KEY (codcidade)
        REFERENCES utils.cidades (codcidade) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE utils.ceps
    OWNER to safenet;

COMMENT ON TABLE utils.ceps
    IS 'sd';	
	
-- FUNCTION: utils.consultacep(character varying)

-- DROP FUNCTION utils.consultacep(character varying);

CREATE OR REPLACE FUNCTION utils.consultacep(
	p1 character varying)
    RETURNS TABLE(logradouro character varying, referencia character varying, bairro character varying, cidade character varying, sigla character varying) 
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
    ROWS 1000
    
AS $BODY$
begin
return query	
select a.logradouro, a.referencia, a.bairro, b.nome, c.sigla 
from utils.ceps a, utils.cidades b, utils.estados c 
where a.codestado = c.codEstado and a.codcidade = b.codcidade and a.cep=p1;
END;
$BODY$;

ALTER FUNCTION utils.consultacep(character varying)
    OWNER TO safenet;
	