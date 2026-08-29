-- Packages
with Ada.Text_IO; -- Text Package
with Ada.Command_Line; -- Command Line Package
procedure Ada_Examples is
-- Variables
-- var syntax: var_name : var_type := value;
HelloWorld : String :="HELLO World!";


begin
-- Hello World
Ada.Text_IO.Put_Line("Hello Word!");
-- With Var
Ada.Text_IO.Put_Line(HelloWorld);

-- For Loop
-- Loop over each command-line argument and print it.
for NEXT in 1 .. Ada.Command_Line.Argument_Count loop
   -- A declare block gives us a place to declare per-iteration variables.
   declare
      VALUE : String := Ada.Command_Line.Argument (NEXT);
   begin
      Ada.Text_IO.Put_Line (Integer'Image (NEXT) & ": " & VALUE);
   end;
end loop;
end Ada_Examples;
