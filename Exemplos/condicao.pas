(* Comandos condicionais *)

program Maior (input, output);
var
   X, Y : real;
begin
   read (X, Y);
   if X >= Y
      then writeln (´Maior = ´, X)
      else writeln (´Maior = ´, Y)
end.
