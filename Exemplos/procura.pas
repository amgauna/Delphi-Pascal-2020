(* Exemplo de procura de um elemento inteiro positivo em uma tabela.
   Primeiramente a tabela é carregada, ou seja, lida.
   Testa-se a existência de valores não apropriados: nulos ou não na tabela anteriormente preenchida.
   Um número negativo, ou nulo, nesta fase significa fim da lista dos números a serem pesquisados.
*)

program Procura (input, output);
label
   99;
   
const
   Zero =0;
   Ultimo = 10;
   Tam = 11;
   
type
   Indice = 1..Tam;
   Tabela = array[Indice] of integer;
   
var
   Tab : Tabela;
   I : integer;
   Num : integer;
   Achou : boolean;
   
begin
   (* Carga da Tabela *)
   for I := 1 to Ultimo do
      begin
         read (Tab[I]);
         if Tab[I] <= Zero
         then
            begin
               writeln ('Valor inválido', Tab[I]);
               goto 99
            end
         end;
         readln (Num);
         while Num > Zero do
         begin
            Tab[Tam] := Num;
            I := Zero;
            Achou := false;
            while not Achou do
            begin
               I := I + 1;
               Achou := Tab[I] = Num
            end;
            if I < Tam
            then
               writeln ('Achei ', Num, ' na posição ', I)
            else
               writeln ('Não achei ', Num, ' na tabela ');
            readln (Num)
         end; (* do while *)
       99;
    end; (* De procura *)
 end.
