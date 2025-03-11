-- Cargar datos
A = LOAD '/scripts/users.csv' USING PigStorage(',') AS (id:int, name:chararray, age:int);

-- Mostrar todos los registros
DUMP A;

-- Contar cuántas personas hay
B = GROUP A ALL;
C = FOREACH B GENERATE COUNT(A);
DUMP C;

-- Filtrar personas mayores de 30
E = FILTER A BY age > 30;
DUMP E;

-- Obtener el promedio de edad
F = FOREACH (GROUP A ALL) GENERATE AVG(A.age);
DUMP F;