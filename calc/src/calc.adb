-- Packages
with Ada.Text_IO; -- Text Package
with Ada.Integer_Text_IO;



procedure Calc is
-- Variables

x,y,z : Integer;
operands : Character;

Root_Error: exception;  -- error exceptions 


begin
--    Ada.Text_IO.Get_Line (Str, Last); -- input 2 
--    Ada.Text_IO.Put_Line (Str (1 .. Last)); -- will get 2 

  -- GET is for types like Integers while Get_Line is for genral strings up to the new line

  Ada.Text_IO.Put_Line("Give me an X integer?");
  Ada.Integer_Text_IO.Get(x);

  Ada.Text_IO.Put_Line("Give me an Y integer?");
  Ada.Integer_Text_IO.Get(y);

  Ada.Text_IO.Put_Line ("Choose an operand (+,-,*,/,%)");
  Ada.Text_IO.Skip_Line; -- discard new lines like java nextLine();
  Ada.Text_IO.Get(operands);



  --switch case

  case operands is
   when '+' =>
      z := (x+y);
   when '-' =>
      z := (x-y);
   when '*' =>
      z := (x*y);
   when '/' =>
      z := (x/y);
   when '%' =>
      z := (x mod y);
   when others =>
    
      Ada.Text_IO.Put_Line ("Please Select Operand, Exiting Program");
       raise Root_Error;
  end case;
   

-- prints the answer


 

  Ada.Text_IO.Put_Line (Integer'Image(x) & " " & operands  & Integer'Image(y) & " " & "=" & Integer'Image(z) );
   


end Calc;
