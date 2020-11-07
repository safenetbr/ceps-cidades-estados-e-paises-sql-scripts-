# ceps-cidades-estados-e-paises-sql-scripts-

Olá, 

Precisei definir tabelas simples para postgres onde armazenasse os ceps, cidades, estados e pais(es) para utilização pelos nossos sistemas.
Sendo assim, encontrei os CEPs no site https://cepaberto.com/ e aqui mesmo no github, scripts para os paises.

Adaptei e disponho aqui para quem quiser usar.
No arquivo creates.sql estão os comandos para criar as tabelas e também uma função para consultar o CEP e no arquivo *data.sql estão os comandos insert com os dados das tabelas.

Lembrando que os CEPs tem uma frequencia de atualização que não deve ser desprezada, e eventualmente poderá ser interessante atualizar essas informações de uma boa fonte, neste caso, no site https://cepaberto.com, agradeço ao trabalho deles. 

07 de novembro de 2020

Fernando A de Araujo Filho
