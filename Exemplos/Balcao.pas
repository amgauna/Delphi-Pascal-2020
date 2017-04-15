program Balcão (input, output);

(* Exemplo de código de 1984 *)

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
   write (´comando: ´);
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


   

    
