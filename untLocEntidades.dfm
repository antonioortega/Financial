object frmLocalizaEntidades: TfrmLocalizaEntidades
  Left = 0
  Top = 0
  Caption = 'Localizar Clientes/Fornecedores'
  ClientHeight = 478
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gridEntidade: TDBGrid
    Left = 0
    Top = 137
    Width = 616
    Height = 341
    Align = alClient
    DataSource = dsLocaliza
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridEntidadeDblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 114
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 609
    object Label1: TLabel
      Left = 8
      Top = 64
      Width = 193
      Height = 13
      Caption = 'Digite aqui o valor que est'#225' procurando:'
      FocusControl = edtLocaliza
    end
    object rdgColunaPesquisa: TRadioGroup
      Left = 8
      Top = 3
      Width = 417
      Height = 49
      Caption = 'Localizar por:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Raz'#227'o Social/Nome'
        'Nome Fantasia'
        'C'#243'digo')
      TabOrder = 0
    end
    object edtLocaliza: TEdit
      Left = 8
      Top = 80
      Width = 417
      Height = 21
      TabOrder = 1
    end
    object selAmbos: TRadioButton
      Left = 448
      Top = 49
      Width = 113
      Height = 17
      Caption = 'Ambos'
      TabOrder = 2
      OnClick = selAmbosClick
    end
    object selClientes: TRadioButton
      Tag = 1
      Left = 448
      Top = 3
      Width = 113
      Height = 17
      Caption = 'Clientes'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = selClientesClick
    end
    object selFornecedores: TRadioButton
      Tag = 1
      Left = 448
      Top = 26
      Width = 113
      Height = 17
      Caption = 'Fornecedores'
      TabOrder = 4
      OnClick = selFornecedoresClick
    end
    object btnLocalizar: TButton
      Left = 448
      Top = 78
      Width = 75
      Height = 25
      Caption = 'Localizar'
      TabOrder = 5
      OnClick = btnLocalizarClick
    end
    object btnFechar: TButton
      Left = 529
      Top = 78
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 6
      OnClick = btnFecharClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 114
    Width = 616
    Height = 23
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Clique duas vezes sobre o item desejado para selecionar...'
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 2
  end
  object dsLocaliza: TDataSource
    DataSet = qryLocaliza
    Left = 376
    Top = 288
  end
  object qryLocaliza: TFDQuery
    Active = True
    Connection = DataModule1.Connection
    SQL.Strings = (
      'SELECT CODIGO, NOMEFAN, RAZSOC from ENTIDADE'
      'WHERE RAZSOC LIKE :LOCALIZA AND TIPCAD IN (1,2,3)'
      'ORDER BY RAZSOC')
    Left = 448
    Top = 288
    ParamData = <
      item
        Name = 'LOCALIZA'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end>
    object qryLocalizaCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      FixedChar = True
      Size = 14
    end
    object qryLocalizaNOMEFAN: TWideStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NOMEFAN'
      Origin = 'NOMEFAN'
      FixedChar = True
      Size = 30
    end
    object qryLocalizaRAZSOC: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZSOC'
      Origin = 'RAZSOC'
      FixedChar = True
      Size = 50
    end
  end
end
