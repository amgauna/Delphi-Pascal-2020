(* Comandos condicionais *)

(* Programa que recebe dois números e fornece o valor do maior. *)

program Maior (input, output);
var
   X, Y : real;
begin
   read (X, Y);
   if X >= Y
      then writeln ('Maior = ', X)
      else writeln ('Maior = ', Y)
end.
