(* Calculo das raizes de uma equação do segundo grau (coeficientes tais que as raízes não sejam imaginárias). *)

program Raizes (input, output);
var
   A, B, C, X1, X2 : real;
begin
   read (A, B, C);
   X1 := (B + sqrt (B * B - 4 * A * C)) / (2 * A);
   X2 := (B - sqrt (B * B - 4 * A * C)) / (2 * A);
   writeln ('Raizes = ', X1, X2)
end.
