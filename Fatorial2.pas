(* Programa que recebe um número inteiro positivo e fornece o valor do fatorial desse número usando o comando repeat until. *)

program Fatorial (input, output);
var
   Num, Fat, I : integer;
begin
   read (Num);
   I := 1;
   Fat := 1;
   repeat
      Fat := Fat * I;
      I := I + 1
   ultil  
      I > num;
   writeln ('Fatorial = ', Fat)
end.
