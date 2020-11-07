--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2020-11-07 11:51:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2848 (class 0 OID 24735)
-- Dependencies: 214
-- Data for Name: estados; Type: TABLE DATA; Schema: utils; Owner: safenet
--

INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (1, 'Acre', 'AC', 12, 76, '[68]', 'NORTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (2, 'Alagoas', 'AL', 27, 76, '[82]', 'NORDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (3, 'Amazonas', 'AM', 13, 76, '[97,92]', 'NORTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (4, 'Amapá', 'AP', 16, 76, '[96]', 'NORTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (5, 'Bahia', 'BA', 29, 76, '[77,75,73,74,71]', 'NORDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (6, 'Ceará', 'CE', 23, 76, '[88,85]', 'NORDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (7, 'Distrito Federal', 'DF', 53, 76, '[61]', 'CENTRO OESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (8, 'Espírito Santo', 'ES', 32, 76, '[28,27]', 'SUDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (9, 'Goiás', 'GO', 52, 76, '[62,64,61]', 'CENTRO OESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (10, 'Maranhão', 'MA', 21, 76, '[99,98]', 'NORDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (11, 'Minas Gerais', 'MG', 31, 76, '[34,37,31,33,35,38,32]', 'SUDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (12, 'Mato Grosso do Sul', 'MS', 50, 76, '[67]', 'CENTRO OESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (13, 'Mato Grosso', 'MT', 51, 76, '[65,66]', 'CENTRO OESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (14, 'Pará', 'PA', 15, 76, '[91,94,93]', 'NORTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (15, 'Paraíba', 'PB', 25, 76, '[83]', 'NORDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (16, 'Pernambuco', 'PE', 26, 76, '[81,87]', 'NORDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (17, 'Piauí', 'PI', 22, 76, '[89,86]', 'NORDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (18, 'Paraná', 'PR', 41, 76, '[43,41,42,44,45,46]', 'SUL');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (19, 'Rio de Janeiro', 'RJ', 33, 76, '[24,22,21]', 'SUDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (20, 'Rio Grande do Norte', 'RN', 24, 76, '[84]', 'NORDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (21, 'Rondônia', 'RO', 11, 76, '[69]', 'NORTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (22, 'Roraima', 'RR', 14, 76, '[95]', 'NORTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (23, 'Rio Grande do Sul', 'RS', 43, 76, '[53,54,55,51]', 'SUL');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (24, 'Santa Catarina', 'SC', 42, 76, '[47,48,49]', 'SUL');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (25, 'Sergipe', 'SE', 28, 76, '[79]', 'NORDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (26, 'São Paulo', 'SP', 35, 76, '[11,12,13,14,15,16,17,18,19]', 'SUDESTE');
INSERT INTO utils.estados (codestado, nome, uf, ibge, pais, ddd, nomeregiao) VALUES (27, 'Tocantins', 'TO', 17, 76, '[63]', 'NORTE');


-- Completed on 2020-11-07 11:51:06

--
-- PostgreSQL database dump complete
--

