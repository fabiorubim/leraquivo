program prjLerAquivo;

uses
  Forms,
  uMain in 'uMain.pas' {frmLerArquivo},
  uLeArquivo in 'uLeArquivo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLerArquivo, frmLerArquivo);
  Application.Run;
end.
