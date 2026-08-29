-- Packages
with Ada.Text_IO; -- Text Package
with Ada.Command_Line; -- Command Line Package
with Ada.Real_Time; -- Real Time Package
with Ada.Calendar; -- Calendar Package
with Ada.Calendar.Formatting;

procedure Ada_Ex is

   -- Variables
   -- var syntax: var_name : var_type := value;
   HelloWorld : String := "HELLO World!";
   x : Integer := 1; 

   -- time
   Time_1 : Ada.Calendar.Time;
   Time_2 : Ada.Calendar.Time;
   Next_Time : Ada.Real_Time.Time;
   

begin
   -- Hello World
   Ada.Text_IO.Put_Line ("Hello Word!");
   -- With Var
   Ada.Text_IO.Put_Line (HelloWorld);

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


   -- Schedule the next execution exactly 5 second from
   -- the previous scheduled execution.

   Time_1 := Ada.Calendar.Clock; -- Get the current time before the delay
   Ada.Text_IO.Put_Line ("Hello World! First " & Ada.Calendar.Formatting.Image (Time_1));

   -- Wait until the scheduled time
   Next_Time := Ada.Real_Time."+"(Ada.Real_Time.Clock, Ada.Real_Time.Seconds (5)); -- Schedule the next execution exactly 5 seconds from now
   delay until Next_Time; -- Wait until the scheduled time


   Time_2 := Ada.Calendar.Clock; -- Get the current time after the delay
   Ada.Text_IO.Put_Line ("Hello World! Second " & Ada.Calendar.Formatting.Image (Time_2));

end Ada_Ex;