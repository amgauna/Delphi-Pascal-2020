(* Programa que recebe um número inteiro positivo e fornece o valor do fatorial desse número usando o comando while do *)

program Fatorial (input, output);
var
   Num, Fat, I : integer;
begin
   read (Num);
   I := 1;
   Fat := 1;
   while I <= Num do
      begin
         Fat := Fat + I;
         I := I + 1
      end;
   writeln 'Fatorial = ', Fat)
end.
