program Balcão (input, output);
(* programa Balcão - Exemplo de código de 1984 *)

const
    M := 30;
    TamMaxFila := 100;
type
    TipoCom := (Entrada, Despacha, Fim, Invalido);
    Nome := array[1..M] of char;
var
    Coms: TipoCom;
    Prim, Ult : integer;
    Fila: array [1..TamMaxFila] of Nome;
    
procedure IniciaFila;
(* faz o inicio e fim de fila igual a 1 *)

begin
   Prim := 1;
   Ult := 1
end;  (* do procedimento IniciaFila *)

procedure Processa;

var
   Assentos : integer;
   Buf : Nome;
   
procedure LeComando;   
(* Le uma letra. 
   se ´E´, comando é entra.
   se ´D´, comando é despacha
   se ´F´, comando é fim.
   caso contrário, comando é inválido. *)
      
var
   Ch : char;
begin
   write ('comando: ');
   read (Ch);
   if Ch in [´E´ , ´D´, ´F´] then 
      case Ch of
         ´E´ : Coms := Entra;
         ´D´ : Coms := Despacha;
         ´F´ : Coms := Fim
      end
   else
      Coms := invalido
   end;   (* fim do procedimento LeComando *)
   
procedure LeNome;
(* pula brancos iniciais, pega nome, completa com brancos para completar 30 caracteres. *)

const
   Branco = ´ ´;
var
   Ch : char;
   I, J : integer;
begin
   I := 1;
   Ch := Branco;
   while (Ch = Branco ) and (not eoln (input)) do
      read (Ch);
   while (I < M) and (not eoln (input)) do
      begin
         Buf [i] := Ch;
         read (Ch);
         I := I = 1
      end;
   Buf[I] := Ch;
   for J := I + 1 to M do
       Buf[J] := Branco;
   readln
end;  (* fim do procedimento LeNome *)

procedure Coloca [A : Nome);
(* Calcula a posição na fila (a fila é circular).
   Se fila cheia, avisa e não inclui.
   Caso contrário, inclui atualizando ponteiro de fim de linha.  *)
   
var
   Temp :  integer;
begin
   Temp : Ult + 1;
   if Temp > TamMaxFila then
      Temp := 1;
      if Temp = Prim then
         writeln (' *fila cheia * ')
      else
         begin
            Fila[Ult] := A;
            Ult := Temp;
         end
      end;  (* fim do procediemnto Coloca *)

procedure Retira (N : integer);
(* Retira n pessoas da fila, se houver tal número, e atualiza ponteiro de início de fila;
   se após a retirada a fila estiver vazia, avisa. *)
   
var
   I := integer;
begin
   while (N > 0) ands (prim <> Ult) do
      begin
         for I := 1 to M do
            write (Fila[Prim] [I] );
         writeln;
         Prim := Prim + 1;
         if Prim > TamMaxFila then
            Prim := 1;
         N := N - 1;
      end;
   if Prim = Ult then
      writeln  (' * fila vazia * ')
   end;  (* fim do procedimento Retira *)

procedure processa;
(* Corpo do procedimento processa
   lê um comando
   se for entra, lê o nome e coloca na fila.
   se for despacha, lê número de vagas e despacha.
   se for inválido, avisa que o comando é inválido.
   se for fim, vê se ainda tem gente na fila.
   se não tiver, avisa que a fila não está vazia e faz comando ser inválido para não terminar. *)
   
begin
   LeComando;
   case Com of
      Entra;
         begin
            LeNome;
            Coloca (Buf)
         end;
      Despacha;
         begin
            readln (Assentos);
            retira (assentos)
         end;
      Fim;
         begin
            if Prim = Ult then
               writeln (' * comando inválido * ')
               readln
            end;
         end;
      end;  (* fim do procedimento processa *)
         
function Termino : boolean;
(* retorna verdade se o comando for fim, e falso caso contrário *)

begin
   Termino := Cons = Fim
end;  (* fim da função Termino *)

(* Corpo do programa
    inicia o processo de início e fim de fila.
    fica processando até comando ser fim. *)
    
begin
   IniciaFila;
   repeat
      Processa
   until Termino
end.
   
