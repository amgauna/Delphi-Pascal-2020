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
