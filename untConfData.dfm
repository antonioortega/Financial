object frmConfData: TfrmConfData
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data de Confer'#234'ncia'
  ClientHeight = 126
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 450
    Height = 16
    Caption = 
      'Todos os lan'#231'amentos ser'#227'o colocados como conferidos at'#233' a data ' +
      'informada!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 87
    Width = 450
    Height = 18
    Shape = bsTopLine
  end
  object BitBtn1: TBitBtn
    Left = 302
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Sim'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 383
    Top = 96
    Width = 75
    Height = 25
    Caption = 'N'#227'o'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
  end
  object SetDataConfe: TDateTimePicker
    Left = 144
    Top = 40
    Width = 186
    Height = 21
    Date = 43861.535242129630000000
    Time = 43861.535242129630000000
    TabOrder = 2
  end
end
