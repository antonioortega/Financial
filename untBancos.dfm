object frmBancos: TfrmBancos
  Left = 0
  Top = 0
  Caption = 'Bancos'
  ClientHeight = 296
  ClientWidth = 544
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
  object pnlControl: TPanel
    Left = 0
    Top = 261
    Width = 544
    Height = 35
    Align = alBottom
    TabOrder = 0
    object DBNav: TDBNavigator
      Left = 1
      Top = 1
      Width = 192
      Height = 33
      DataSource = dsBancos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Align = alLeft
      TabOrder = 0
    end
    object btnInserir: TBitBtn
      Left = 215
      Top = 6
      Width = 75
      Height = 25
      Action = actInserir
      Caption = 'Inserir'
      TabOrder = 1
    end
    object btnExcluir: TBitBtn
      Left = 376
      Top = 6
      Width = 75
      Height = 25
      Action = actExcluir
      Caption = 'Excluir'
      TabOrder = 2
    end
    object btnFechar: TBitBtn
      Left = 457
      Top = 6
      Width = 75
      Height = 25
      Action = actFechar
      Caption = 'Fechar'
      TabOrder = 3
    end
    object btnAlterar: TBitBtn
      Left = 295
      Top = 6
      Width = 75
      Height = 25
      Action = actAlterar
      Caption = 'Alterar'
      TabOrder = 4
    end
  end
  object grdBanco: TDBGrid
    Left = 0
    Top = 0
    Width = 544
    Height = 261
    Align = alClient
    DataSource = dsBancos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODBCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBCO'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTACOR'
        Visible = True
      end>
  end
  object dsBancos: TDataSource
    DataSet = DataModule1.tbBanco
    Left = 144
    Top = 160
  end
  object ActionList: TActionList
    Images = frmMain.Image16
    Left = 81
    Top = 161
    object actInserir: TAction
      Category = 'Controles'
      Caption = 'Inserir'
      ImageIndex = 12
      OnExecute = actInserirExecute
    end
    object actAlterar: TAction
      Category = 'Controles'
      Caption = 'Alterar'
      ImageIndex = 38
      OnExecute = actAlterarExecute
    end
    object actExcluir: TAction
      Category = 'Controles'
      Caption = 'Excluir'
      ImageIndex = 9
      OnExecute = actExcluirExecute
    end
    object actFechar: TAction
      Category = 'Controles'
      Caption = 'Fechar'
      ImageIndex = 33
      OnExecute = actFecharExecute
    end
  end
end
