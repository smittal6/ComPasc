PROGRAM Greeting;

CONSTANT
x = 1;
y = 1;
z = 7;
k = 8;

TYPE
   a1 = ARRAY[x..10,y..10] OF INTEGER;

VAR 
a2: a1;
i : INTEGER;
j : INTEGER;
c : INTEGER;

BEGIN
    i := 0;
    j := 0;
    c := x+y;
    WHILE i < 10 DO
        BEGIN
            WHILE j < 10 DO
                BEGIN
                    a2[i,j] := c;
                    j := j + 1;
                    WRITELN(a2[i,j]);
                END;
            i := i + 1;
        END;
END;