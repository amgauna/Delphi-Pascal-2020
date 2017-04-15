(* Impressão de uma sequência de caracteres na ordem inversa em que foram recebidos. *)

program Espelho (input, output);
var
   I : integer;
   Cadeia : array[1..10] of char;
begin
   for I := 1 to 10 do read (Cadeia[I]);
   for i := 10 downto 1 do write (Cadeia[I]);
   writeln
end.
