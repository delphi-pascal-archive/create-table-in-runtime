object Form1: TForm1
  Left = 218
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Create table in runtime'
  ClientHeight = 410
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 577
    Height = 361
    DataSource = D1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 224
    Top = 376
    Width = 105
    Height = 25
    Caption = '  C l o s e '
    TabOrder = 1
    OnClick = Button1Click
  end
  object D1: TDataSource
    DataSet = Ordonateur
    Left = 72
    Top = 40
  end
  object Ordonateur: TTable
    Left = 32
    Top = 40
  end
end
