```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   All_Iterations_Complete : Boolean := False;
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         -- Do not exit, instead set a flag
         All_Iterations_Complete := True; 
      end if;
   end loop;
   -- Now proceed based on whether all iterations finished or not
   if All_Iterations_Complete then
      Put_Line("Loop completed, but 5 was encountered");
   else
      Put_Line("Loop completed without encountering 5");
   end if;
exception
   when others =>
      null; -- Handle exceptions
end Example_Solution;
```