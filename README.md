# ceps-cidades-estados-e-paises-sql-scripts-

Olá, 

Precisei definir tabelas simples para postgres onde armazenasse os ceps, cidades, estados e pais(es) para utilização pelos nossos sistemas.
Sendo assim, encontrei os CEPs no site https://cepaberto.com/ e aqui mesmo no github, scripts para os paises.

Adaptei e disponho aqui para quem quiser usar.
No arquivo creates.sql estão os comandos para criar as tabelas e também uma função para consultar o CEP e nos arquivos *data.sql estão os comandos insert com os dados das tabelas. Observe que o arquivo com os ceps tem mais de 900k linhas, e está compactado.

Lembrando que os CEPs tem uma frequencia de atualização que não deve ser desprezada, e eventualmente poderá ser interessante atualizar essas informações de uma boa fonte, neste caso, no site https://cepaberto.com, agradeço ao trabalho deles. 

Insira os dados na sxeguinte ordem:

PAISES, ESTADOS, CIDADES, CEPS.

07 de novembro de 2020

Fernando A de Araujo Filho
