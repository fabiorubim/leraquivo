unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,uLeArquivo;

type
  TfrmLerArquivo = class(TForm)
    Memo: TMemo;
    btnExibeArquivo: TButton;
    edtCaminho: TEdit;
    Label1: TLabel;
    btnCarregaArquivo: TButton;
    OpenDialog: TOpenDialog;
    procedure btnExibeArquivoClick(Sender: TObject);
    procedure btnCarregaArquivoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    refObjArquivo:TLeArquivo;
  public
    { Public declarations }
  end;

var
  frmLerArquivo: TfrmLerArquivo;

implementation

{$R *.dfm}

procedure TfrmLerArquivo.btnCarregaArquivoClick(Sender: TObject);
begin
  if OpenDialog.Execute then
    edtCaminho.Text:=OpenDialog.FileName;
end;

procedure TfrmLerArquivo.btnExibeArquivoClick(Sender: TObject);
begin
  try
    refObjArquivo:=TLeArquivo.Create;
    if refObjArquivo.CarregaArquivo(edtCaminho.Text) then
      refObjArquivo.ExibeArquivo(memo)
    else
      Memo.Lines.Add('Erro na leitura do arquivo.');
  except
    FreeAndNil(refObjArquivo);
  end;
end;

procedure TfrmLerArquivo.FormDestroy(Sender: TObject);
begin
  if Assigned(refObjArquivo) then
    FreeAndNil(refObjArquivo);
  
end;

end.
