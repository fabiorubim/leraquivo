unit uLeArquivo;

interface
  uses
    StdCtrls;

type
  TLeArquivo = class

  private
    FArquivo:TextFile;
  public
    function CarregaArquivo(sLocal:String):Boolean;
    function ExibeArquivo(var vMemo:TMemo):Boolean;
  end;

implementation

{ TLeArquivo }

function TLeArquivo.CarregaArquivo(sLocal: String): Boolean;
begin
  AssignFile(FArquivo,sLocal);
end;

function TLeArquivo.ExibeArquivo(var vMemo: TMemo): Boolean;
var
  sLinha:String;
begin
  try
    Reset(FArquivo);

    if (IOResult <> 0) then
      Result:=False
    else
    begin
      while (not Eof(FArquivo)) do
      begin
        Readln(FArquivo,sLinha);
        vMemo.Lines.Add(sLinha);
      end;
      Result:=True;
    end;
  finally
    CloseFile(FArquivo);
  end;
end;

end.
