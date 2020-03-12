object frmContas: TfrmContas
  Left = 0
  Top = 0
  Caption = 'Plano de Contas - Centro de Custos'
  ClientHeight = 514
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControl: TPanel
    Left = 0
    Top = 479
    Width = 633
    Height = 35
    Align = alBottom
    TabOrder = 0
    ExplicitWidth = 490
    object btnInserir: TBitBtn
      Left = 163
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = btnInserirClick
    end
    object btnExcluir: TBitBtn
      Left = 324
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = btnExcluirClick
    end
    object btnFechar: TBitBtn
      Left = 405
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
    end
    object btnAlterar: TBitBtn
      Left = 243
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 3
    end
  end
  object pnlList: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 479
    Align = alClient
    BevelOuter = bvLowered
    Color = clSkyBlue
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 152
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
    object ViewContas: TListView
      Left = 11
      Top = 6
      Width = 611
      Height = 467
      Align = alClient
      Columns = <
        item
          Caption = 'C'#243'digo'
        end
        item
          AutoSize = True
          Caption = 'Descri'#231#227'o'
        end>
      FlatScrollBars = True
      GridLines = True
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnChange = ViewContasChange
      OnClick = ViewContasClick
      OnCustomDrawItem = ViewContasCustomDrawItem
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 488
      ExplicitHeight = 477
    end
  end
  object dsContas: TDataSource
    DataSet = DataModule1.tbCONTAS
    Left = 408
    Top = 120
  end
end
