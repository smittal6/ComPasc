Program TestObjects;
 
Type
   DrawingObject = Object
      x, y : INTEGER;
      height, width : INTEGER;       // replaced 'single' by 'integer' for now
      procedure Draw;  //  procedure declared in here
   end;
 
Var
  Rectangle : DrawingObject;

procedure DrawingObject.Draw;
  begin
       writeln('Drawing an Object');
       writeln(' x = ', x, ' y = ', y);  // object fields
       writeln(' width = ', width);
       writeln(' height = ', height);
       writeln;
//    moveto (x, y);  // probably would need to include a platform dependent drawing unit to do actual drawing
//    ... more code to actually draw a shape on the screen using the other parameters
  end;

begin
 
  Rectangle.x:= 50;  //  the fields specific to the variable "Rectangle"
  Rectangle.y:= 100;
  Rectangle.width:= 40;
  Rectangle.height:= 40;
 
  writeln('x = ', Rectangle.x);
 
  Rectangle.Draw;  //  Calling the method (procedure)
 
  { with Rectangle do   //  With works the same way even with the method (procedure) field }
  {  begin }
  {      x:= 75; }
  {      Draw; }
  {  end; }
 
end;
