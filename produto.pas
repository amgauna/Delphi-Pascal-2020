(* Multiplicação de dois números naturais utilizando apenas as operações primitivas de soma e subtração. *)

program produto (input, output);
var
   X, Y, U, Z : integer;
begin
   read (X, Y);
   Z := 0;
   U := X;
   repeat
      Z := Z + Y;
      U := U - 1;
   until
      U = 0;
   writeln ('Produto = ', Z)
end.
