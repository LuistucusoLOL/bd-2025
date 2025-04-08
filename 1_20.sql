select codigo_oficina as "codigo de oficina" , ciudad from oficina;

MariaDB [jardineria]> select codigo_oficina as "codigo de oficina" , ciudad from oficina;
+-------------------+----------------------+
| codigo de oficina | ciudad               |
+-------------------+----------------------+
| BCN-ES            | Barcelona            |
| BOS-USA           | Boston               |
| LON-UK            | Londres              |
| MAD-ES            | Madrid               |
| PAR-FR            | Paris                |
| SFC-USA           | San Francisco        |
| SYD-AU            | Sydney               |
| TAL-ES            | Talavera de la Reina |
| TOK-JP            | Tokyo                |
+-------------------+----------------------+

select telefono , ciudad, pais from oficina where pais="Espa├▒a";

MariaDB [jardineria]> select telefono , ciudad, pais from oficina where pais="Espa├▒a";
+----------------+----------------------+---------+
| telefono       | ciudad               | pais    |
+----------------+----------------------+---------+
| +34 93 3561182 | Barcelona            | Espa├▒a  |
| +34 91 7514487 | Madrid               | Espa├▒a  |
| +34 925 867231 | Talavera de la Reina | Espa├▒a  |
+----------------+----------------------+---------+

select email, concat(nombre, apellido1, apellido2) AS "nombre completo", codigo_jefe from empleado where codigo_jefe=7;

+--------------------------+-------------------------+-------------+
| email                    | nombre completo         | codigo_jefe |
+--------------------------+-------------------------+-------------+
| mlopez@jardineria.es     | MarianoL├│pezMurcia      |           7 |
| lcampoamor@jardineria.es | LucioCampoamorMart├¡n    |           7 |
| hrodriguez@jardineria.es | HilarioRodriguezHuertas |           7 |
+--------------------------+-------------------------+-------------+

select concat(nombre, apellido1, apellido2) AS "nombre completo", email , puesto from empleado where puesto = "Director General";

MariaDB [jardineria]> select concat(nombre, apellido1, apellido2) AS "nombre completo", email , puesto from empleado where puesto = "Director General";
+--------------------+----------------------+------------------+
| nombre completo    | email                | puesto           |
+--------------------+----------------------+------------------+
| MarcosMaga├▒aPerez  | marcos@jardineria.es | Director General |
+--------------------+----------------------+------------------+

select concat(nombre, apellido1, apellido2) AS "nombre completo" , puesto from empleado where puesto != "Representante Ventas";

MariaDB [jardineria]> select concat(nombre, apellido1, apellido2) AS "nombre completo" , puesto from empleado where puesto != "Representante Ventas";
+----------------------+-----------------------+
| nombre completo      | puesto                |
+----------------------+-----------------------+
| MarcosMaga├▒aPerez    | Director General      |
| RubenL├│pezMartinez   | Subdirector Marketing |
| AlbertoSoriaCarrasco | Subdirector Ventas    |
| MariaSol├¡sJerez      | Secretaria            |
| CarlosSoriaJimenez   | Director Oficina      |
| EmmanuelMaga├▒aPerez  | Director Oficina      |
| FrancoisFignon       | Director Oficina      |
| MichaelBolton        | Director Oficina      |
| HilaryWashington     | Director Oficina      |
| NeiNishikori         | Director Oficina      |
| AmyJohnson           | Director Oficina      |
| KevinFallmer         | Director Oficina      |
+----------------------+-----------------------+

select concat (nombre_cliente, apellido_contacto) as "nombre cliente", pais from cliente where pais = "Spain";

MariaDB [jardineria]> select concat (nombre_cliente, apellido_contacto) as "nombre cliente", pais from cliente where pais = "Spain";
+----------------------------------------+-------+
| nombre cliente                         | pais  |
+----------------------------------------+-------+
| Lasas S.A.Lasas                        | Spain |
| BeraguaBermejo                         | Spain |
| Club Golf Puerta del hierroLopez       | Spain |
| NaturaguaRengifo                       | Spain |
| DaraDistribucionesSerrano              | Spain |
| Madrile├▒a de riegosTaca├▒o              | Spain |
| Lasas S.A.Lasas                        | Spain |
| Camunas Jardines S.L.Camunas           | Spain |
| Dardena S.A.Rodriguez                  | Spain |
| Jardin de FloresVillar                 | Spain |
| Flores MariviRodriguez                 | Spain |
| Flowers, S.AFernandez                  | Spain |
| NaturajardinCruz                       | Spain |
| Golf S.A.Martinez                      | Spain |
| Americh Golf Management SLSuarez       | Spain |
| AlohaRodrigez                          | Spain |
| El PratCamacho                         | Spain |
| SotograndeSantillana                   | Spain |
| Vivero HumanesGomez                    | Spain |
| Fuenla CityMu├▒oz Mena                  | Spain |
| Jardines y Mansiones Cactus SLS├ínchez  | Spain |
| Jardiner├¡as Mat├¡as SLSan Mart├¡n        | Spain |
| AgrojardinLopez                        | Spain |
| Top CampoSanchez                       | Spain |
| Jardineria SaraMarquez                 | Spain |
| CampohermosoJimenez                    | Spain |
| Flores S.L.Romero                      | Spain |
+----------------------------------------+-------+

select distinct estado from pedido;

MariaDB [jardineria]> select distinct estado from pedido;
+-----------+
| estado    |
+-----------+
| Entregado |
| Rechazado |
| Pendiente |
+-----------+

select codigo_cliente , id_transaccion , year(fecha_pago) AS "año de compra" from pago where year(fecha_pago) = 2008;

MariaDB [jardineria]> select codigo_cliente , id_transaccion , year(fecha_pago) AS "año de compra" from pago where year(fecha_pago) = 2008;
+----------------+----------------+---------------+
| codigo_cliente | id_transaccion | a?o de compra |
+----------------+----------------+---------------+
|              1 | ak-std-000001  |          2008 |
|              1 | ak-std-000002  |          2008 |
|             13 | ak-std-000014  |          2008 |
|             14 | ak-std-000015  |          2008 |
|             26 | ak-std-000020  |          2008 |
+----------------+----------------+---------------+

select codigo_cliente , id_transaccion , date_format(fecha_pago, '%Y') AS "año de compra" from pago where date_format(fecha_pago, '%Y') = 2008;

MariaDB [jardineria]> select codigo_cliente , id_transaccion , date_format(fecha_pago, '%Y') AS "año de compra" from pago where date_format(fecha_pago, '%Y') = 2008;
+----------------+----------------+---------------+
| codigo_cliente | id_transaccion | a?o de compra |
+----------------+----------------+---------------+
|              1 | ak-std-000001  | 2008          |
|              1 | ak-std-000002  | 2008          |
|             13 | ak-std-000014  | 2008          |
|             14 | ak-std-000015  | 2008          |
|             26 | ak-std-000020  | 2008          |
+----------------+----------------+---------------+

select codigo_cliente , id_transaccion , extract(year from fecha_pago) AS "año de compra" from pago where extract(year from fecha_pago) = 2008;

MariaDB [jardineria]> select codigo_cliente , id_transaccion , extract(year from fecha_pago) AS "año de compra" from pago where extract(year from fecha_pago) = 2008;
+----------------+----------------+---------------+
| codigo_cliente | id_transaccion | a?o de compra |
+----------------+----------------+---------------+
|              1 | ak-std-000001  |          2008 |
|              1 | ak-std-000002  |          2008 |
|             13 | ak-std-000014  |          2008 |
|             14 | ak-std-000015  |          2008 |
|             26 | ak-std-000020  |          2008 |
+----------------+----------------+---------------+

select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from pedido where fecha_entrega > fecha_esperada;

MariaDB [jardineria]> select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from pedido where fecha_entrega > fecha_esperada;
+---------------+----------------+----------------+---------------+
| codigo_pedido | codigo_cliente | fecha_esperada | fecha_entrega |
+---------------+----------------+----------------+---------------+
|             9 |              1 | 2008-12-27     | 2008-12-28    |
|            13 |              7 | 2009-01-14     | 2009-01-15    |
|            16 |              7 | 2009-01-07     | 2009-01-15    |
|            17 |              7 | 2009-01-09     | 2009-01-11    |
|            18 |              9 | 2009-01-06     | 2009-01-07    |
|            22 |              9 | 2009-01-11     | 2009-01-13    |
|            28 |              3 | 2009-02-17     | 2009-02-20    |
|            31 |             13 | 2008-09-30     | 2008-10-04    |
|            32 |              4 | 2007-01-19     | 2007-01-27    |
|            38 |             19 | 2009-03-06     | 2009-03-07    |
|            39 |             19 | 2009-03-07     | 2009-03-09    |
|            40 |             19 | 2009-03-10     | 2009-03-13    |
|            42 |             19 | 2009-03-23     | 2009-03-27    |
|            43 |             23 | 2009-03-26     | 2009-03-28    |
|            44 |             23 | 2009-03-27     | 2009-03-30    |
|            45 |             23 | 2009-03-04     | 2009-03-07    |
|            46 |             23 | 2009-03-04     | 2009-03-05    |
|            49 |             26 | 2008-07-22     | 2008-07-30    |
|            55 |             14 | 2009-01-10     | 2009-01-11    |
|            60 |              1 | 2008-12-27     | 2008-12-28    |
|            68 |              3 | 2009-02-17     | 2009-02-20    |
|            92 |             27 | 2009-04-30     | 2009-05-03    |
|            96 |             35 | 2008-04-12     | 2008-04-13    |
|           103 |             30 | 2009-01-20     | 2009-01-24    |
|           106 |             30 | 2009-05-15     | 2009-05-20    |
|           112 |             36 | 2009-04-06     | 2009-05-07    |
|           113 |             36 | 2008-11-09     | 2009-01-09    |
|           114 |             36 | 2009-01-29     | 2009-01-31    |
|           115 |             36 | 2009-01-26     | 2009-02-27    |
|           123 |             30 | 2009-01-20     | 2009-01-24    |
|           126 |             30 | 2009-05-15     | 2009-05-20    |
|           128 |             38 | 2008-12-10     | 2008-12-29    |
+---------------+----------------+----------------+---------------+

