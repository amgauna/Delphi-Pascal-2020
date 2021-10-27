const
    t: array [1..40] of char { declara 40  elementos para o tipo char }
var
    s: array[1..200] of real { declara 200 elementos para o tipo real }
    ind: integer;
begin
    for Ind := low(s) to high(s) do s[Ind] := 1; { atribui 1 para os elementos fo array s }
    if SizeOf(t) = 'f' then exit; { se o último elemento do array T for 'f' sai do loop }
end;
