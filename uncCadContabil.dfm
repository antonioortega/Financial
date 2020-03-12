object frmCadContabil: TfrmCadContabil
  Left = 0
  Top = 0
  Caption = 'Cadastro de C'#243'digos Cont'#225'beis'
  ClientHeight = 235
  ClientWidth = 488
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
  object pnlControles: TPanel
    Left = 0
    Top = 194
    Width = 488
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnIncluir: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Action = actIncluir
      Caption = 'Incluir'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 88
      Top = 6
      Width = 75
      Height = 25
      Action = actAlterar
      Caption = 'Alterar'
      TabOrder = 1
    end
    object btnSair: TBitBtn
      Left = 400
      Top = 6
      Width = 75
      Height = 25
      Action = actSair
      Caption = 'Sair'
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 193
    Height = 194
    Align = alLeft
    DataSource = dsContabil
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ScrollBox1: TScrollBox
    Left = 193
    Top = 0
    Width = 295
    Height = 194
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = edtDesc
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 43
      Height = 21
      DataField = 'COD'
      DataSource = dsContabil
      Enabled = False
      TabOrder = 0
    end
    object edtDesc: TDBEdit
      Left = 16
      Top = 72
      Width = 264
      Height = 21
      DataField = 'DESCR'
      DataSource = dsContabil
      TabOrder = 1
    end
  end
  object dsContabil: TDataSource
    AutoEdit = False
    DataSet = DataModule1.tbContabil
    Left = 416
    Top = 16
  end
  object ActionList: TActionList
    Left = 353
    Top = 16
    object actIncluir: TAction
      Caption = 'Incluir'
      OnExecute = actIncluirExecute
    end
    object actAlterar: TAction
      Caption = 'Alterar'
      OnExecute = actAlterarExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      OnExecute = actSairExecute
    end
  end
end
