(* Cálculo do Máximo Divisor Comum (MDC). *)

program MDC (input, output);
var
   A, B, X, Y);
begin
   read (X, Y);
   A := X;
   B := Y;
   while A <> B do
      if A > B
        then A := A - B
        else B := B - A;
   writeln ('MDC = ', A)
end.
