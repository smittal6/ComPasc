PROGRAM Greeting;

VAR 
x, y, z, a: INTEGER; 
height, width : INTEGER; 
c: CHAR;

CONSTANT
x = 5;
y = 6;
   
TYPE
   a1 = ARRAY[x..10,y..10] OF INTEGER;

{ procedure Print(x: INTEGER;y: INTEGER); }
{ BEGIN }
{     x := x + y; }
{ END; }

{ FUNCTION Print1(x: INTEGER;y: INTEGER): INTEGER; }
{ BEGIN }
{     Print1 := x + y; }
{ END; }

BEGIN

   a1[7][8]:=a1[6][7]-z;
   
   { IF a1[6]<z THEN }
   {    BEGIN }
   { 	 a1[7] := z; }
   {    END; }
   { ELSE }
   {    BEGIN }
   { 	 z := a1[6]; }
   {    END; }

   { REPEAT }
   {    x := x-1; }
   { UNTIL x<5; }
   {  WHILE x < 5 DO }
   {  BEGIN }
   {     x := x + 1; }
   {     WHILE y < 5 DO }
   {     BEGIN }
   { 	  y := y + 1; }
   { 	  IF y=4 THEN }
   { 	     BEGIN }
   { 		BREAK; }
   { 	     END; }
   {     END; }
   {     IF x=3 THEN }
   {     BEGIN }
   { 	  CONTINUE; }
   {     END;	   }
   {  END; }
   { REPEAT }
   {      x := x + 1; }
   {  UNTIL x<9; }

   { CASE x OF }
   {  1: x:= x + 1; }
   {  2: x:= x + 2; }
   {  3: x:= x + 3; }
   {  ELSE }
   {  BEGIN }
   {      x:= x + 5; }
   {  END; }
   { END; }
END;
