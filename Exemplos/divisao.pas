(* Divisão inteira de dois números naturais utilizando apenas as operações primitivas de soma e subtração. *)

program Divisão (input, output);
var
   X, Y, Q, R : integer;
begin
   read (X, Y);
   Q := 0;
   R := X;
   while R >= Y do
      begin
         R := R - Y;
         Q := Q = 1
      end;
   writeln ('Quociente = ', Q);
   writeln ('Resto = ', R)
end.
