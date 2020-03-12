object frmCadConta: TfrmCadConta
  Left = 0
  Top = 0
  Caption = 'frmCadConta'
  ClientHeight = 227
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCategoria: TLabel
    Left = 8
    Top = 73
    Width = 480
    Height = 41
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = '1111111'
    ParentBiDiMode = False
    WordWrap = True
  end
  object Label1: TLabel
    Left = 26
    Top = 16
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo:'
    FocusControl = edtCodigo
  end
  object Label2: TLabel
    Left = 13
    Top = 43
    Width = 50
    Height = 13
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o:'
    FocusControl = edtDescricao
  end
  object edtCodigo: TEdit
    Left = 64
    Top = 16
    Width = 81
    Height = 21
    MaxLength = 5
    TabOrder = 0
    OnChange = edtCodigoChange
  end
  object edtDescricao: TEdit
    Left = 64
    Top = 43
    Width = 424
    Height = 21
    TabOrder = 1
  end
  object btnGravar: TBitBtn
    Left = 280
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = btnGravarClick
  end
  object btnCancelar: TBitBtn
    Left = 413
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 144
    Width = 479
    Height = 73
    Caption = 'Como funciona o C'#243'digo das contas:'
    TabOrder = 4
    object Label3: TLabel
      Left = 124
      Top = 16
      Width = 231
      Height = 13
      Caption = 'Dois primeiros d'#237'gitos: para a categoria principal '
    end
    object Label4: TLabel
      Left = 137
      Top = 35
      Width = 205
      Height = 13
      Caption = #218'nico digito do meio: para a sub-categoria '
    end
    object Label5: TLabel
      Left = 146
      Top = 54
      Width = 179
      Height = 13
      Caption = 'Dois '#250'ltimos d'#237'gitos:  para a categoria'
    end
  end
  object qryPai: TFDQuery
    Active = True
    Connection = DataModule1.Connection
    SQL.Strings = (
      
        'SELECT PLACOD, SUBSTR(PLACOD, 1, 3)||'#39'00'#39'  AS CHILD, SUBSTR(PLAC' +
        'OD, 1, 2)||'#39'000'#39'  AS PAI, PLADES'
      'FROM CONTA'
      'WHERE PAI IN (PLACOD) AND SUBSTR(PLACOD, 1, 2)=:PAI'
      'ORDER BY PLACOD')
    Left = 296
    Top = 8
    ParamData = <
      item
        Name = 'PAI'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
  end
  object qryFilho: TFDQuery
    Connection = DataModule1.Connection
    SQL.Strings = (
      
        'SELECT PLACOD, SUBSTR(PLACOD, 1, 3)||'#39'00'#39'  AS CHILD, SUBSTR(PLAC' +
        'OD, 1, 2)||'#39'000'#39'  AS PAI, PLADES'
      'FROM CONTA'
      'WHERE PLACOD IN (CHILD) AND SUBSTR(CHILD, 1, 3)=:Filho'
      'ORDER BY PLACOD')
    Left = 344
    Top = 8
    ParamData = <
      item
        Name = 'FILHO'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end>
  end
  object qryConta: TFDQuery
    Connection = DataModule1.Connection
    SQL.Strings = (
      
        'SELECT PLACOD, SUBSTR(PLACOD, 1, 3)||'#39'00'#39'  AS CHILD, SUBSTR(PLAC' +
        'OD, 1, 2)||'#39'000'#39'  AS PAI, PLADES'
      'FROM CONTA'
      'WHERE CHILD in (:Child)'
      'ORDER BY PLACOD')
    Left = 400
    Top = 8
    ParamData = <
      item
        Name = 'CHILD'
        DataType = ftString
        ParamType = ptInput
        Value = '10100'
      end>
    object qryContaPLACOD: TWideStringField
      FieldName = 'PLACOD'
      Origin = 'PLACOD'
      FixedChar = True
      Size = 5
    end
    object qryContaCHILD: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHILD'
      Origin = 'CHILD'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qryContaPAI: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI'
      Origin = 'PAI'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qryContaPLADES: TWideStringField
      FieldName = 'PLADES'
      Origin = 'PLADES'
      FixedChar = True
      Size = 60
    end
  end
end
