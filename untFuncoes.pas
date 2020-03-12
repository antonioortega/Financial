unit untFuncoes;

interface

implementation

function Espaco(Descricao: String; NumEsp: Integer): String;
var
  I : Integer;
  Esp: String;
begin
  Esp := StringOfChar(' ',NumEsp);
  Result := '';
  for I := 1 to Length(Descricao) do
  Result := Result + Descricao[I]+Esp;
end;

end.
