# Operadores booleanos en PostgreSQL

La lógica proposicional o calculo proposicional es una herramienta utilizada en muchas áreas del conocimiento: en matemáticas se utiliza para demostrar teoremas, en derecho se utiliza para la formulación de argumentos, en física para establecer el procedimiento para llevar a cabo un experimento, en el campo de la computación tiene un papel relevante ya que se relaciona con las áreas de Inteligencia Artificial y Lenguajes de programación.

En cuanto a esta última área, su utilización va desde la demostración de programas hasta la creación de un paradigma de desarrollo llamado programación lógica relacional cuyo exponente principal es el lenguaje de programación Prolog.

Proposiciones
La proposición simple es la unidad básica de construcción de la lógica proposicional.

Una proposición simple es un enunciado declarativo al cual se le puede asignar uno u otro (nunca ambos) de dos valores:falso representado por la letra (f) o el dígito (0) y verdadero representado por la letra (v) o el dígito (1), estos valores son llamados valores de verdad (truth values).

Algunos ejemplos de proposiciones en un lenguaje natural con su correspondiente valor de verdad.

Japón es un país de Europa (Falso) 
Alemania es un país de Europa (Verdadero) 
Charles Darwin escribió el origen de las especies en 1905 (Falso) 
Charles Darwin escribió el origen de las especies en 1859 (Verdadero)
  
Para la representación de operaciones lógicas PostgreSQL cuenta con el tipo de dato boolean que guarda la representación de cualquiera de los valores de verdad mas el valor NULL. Este tipo de dato cuenta con sinónimos para la representación de valores true y false , sin embargo en el campo de tabla solo se almacenaran los valores t para true y f para false. A continuación la tabla de sinónimos para estos valores:

Valor de campo	Sinónimo
T	True, t, yes, y, 1
F	False, f, no, n, 0
Mostraré unos ejemplos de operaciones booleanas básicas, creamos la siguiente tabla:



Ahora insertaré unos registros, como proposiciones utilizaré las columnas nombrándolas con las letras standard que se usan para representarlas, en otra columna almacenaré su correspondiente valor de verdad, esto lo hago con el siguiente script.



Al ejecutar el script y después la consulta SELECT * FROM propositions observamos que a pesar de los sinónimos en los comandos INSERT, únicamente se almacenaron en la tabla los valores f y t.



Adicionalmente al tipo de dato boolean ,PostgreSQL cuenta con los operadores lógicos o conectores AND , OR y NOT que permiten formar proposiciones compuestas, es decir proposiciones que se forman por dos o más proposiciones simples unidas por conectores.

Conjunción AND
Multiplicación lógica, su tabla de verdad incluyendo el valor NULL es la siguiente:

P	Q	P AND Q
True	True	True
True	False	False
False	True	False
False	False	False
Null	True	Null
Null	False	False
Null	Null	Null
Ejecuto unas consultas con el operador AND en PostgreSQL , para confirmar la tabla de verdad (truth table):





Disyunción OR

Suma lógica, su tabla de verdad incluyendo el valor NULL es la siguiente:

P	Q	P OR Q
True	True	True
True	False	True
False	True	True
False	False	False
Null	True	True
Null	False	Null
Null	Null	Null
Ejecuto unas consultas con el operador OR en PostgreSQL , para confirmar la tabla de verdad (truth table):



Negación NOT
Este operador invierte el valor de la proposición, su tabla de verdad incluyendo el valor NULL es la siguiente:

S	NOT S
True	False
False	True
Null	Null
Ejecutando el operador NOT en PostgreSQL, en las siguientes consultas, para confirmar la tabla de verdad (truth table):


Con este repaso vemos que en el contexto de las bases de datos además de los valores de verdad como True y False tenemos que considerar el valor NULL al momento de hacer operaciones booleanas.
