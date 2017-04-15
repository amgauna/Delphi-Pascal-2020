
(* Programa que recebe dois números representando um custo e uma moeda, e fornece o primeiro
   valor seguido do nome da moeda.  As moedas foram codificadas da seguinte forma:
   código    significado
      1      libra esterlina
      2      franco suiço
      3      dólar americano
      4      marco alemão
      5      cruzeiro brasileiro
*)

program Decodifica (input, output);
var
   Valor : real;
   Moeda : integer;
begin
   read (Valor, Moeda);
   case Moeda of
      1 : writeln ('Custo = ', Valor, 'libras esterlina');
      2 : writeln ('Custo = ', Valor, 'francos suiço');
      3 : writeln (´Custo = ', Valor, 'dólares americanos');
      4 : writeln (´Custo = ´, Valor, 'marcos alemão');
      5 : writeln ('Custo = ', Valor, 'cruzeiro brasileiro');
   end
end.
   
   
