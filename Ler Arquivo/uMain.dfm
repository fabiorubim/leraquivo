object frmLerArquivo: TfrmLerArquivo
  Left = 0
  Top = 0
  Caption = 'Ler arquivo'
  ClientHeight = 354
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 126
    Height = 13
    Caption = 'Local do arquivo de texto:'
  end
  object Memo: TMemo
    Left = 8
    Top = 64
    Width = 505
    Height = 225
    TabOrder = 0
  end
  object btnExibeArquivo: TButton
    Left = 224
    Top = 312
    Width = 113
    Height = 25
    Caption = 'Exibe arquivo'
    TabOrder = 1
    OnClick = btnExibeArquivoClick
  end
  object edtCaminho: TEdit
    Left = 8
    Top = 27
    Width = 305
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object btnCarregaArquivo: TButton
    Left = 319
    Top = 25
    Width = 122
    Height = 25
    Caption = 'Carrega arquivo'
    TabOrder = 3
    OnClick = btnCarregaArquivoClick
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Txt|*.txt'
    Left = 464
    Top = 24
  end
end
