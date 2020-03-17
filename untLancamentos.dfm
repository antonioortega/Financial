object frmLancamentos: TfrmLancamentos
  Left = 0
  Top = 0
  Caption = 'Lan'#231'amentos'
  ClientHeight = 313
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
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 544
    Height = 271
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 16
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. do Movimento'
    end
    object Label2: TLabel
      Left = 11
      Top = 43
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. do Documento'
    end
    object Label3: TLabel
      Left = 44
      Top = 70
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Documento'
    end
    object Label4: TLabel
      Left = 57
      Top = 97
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hist'#243'rico'
    end
    object Label5: TLabel
      Left = 74
      Top = 125
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor'
    end
    object Label6: TLabel
      Left = 231
      Top = 124
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Grupo'
    end
    object Label7: TLabel
      Left = 19
      Top = 152
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Centro de Custo'
    end
    object Label8: TLabel
      Left = 23
      Top = 180
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo Cont'#225'bil'
    end
    object Label9: TLabel
      Left = 456
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Banco'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnShadow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btnCTA: TSpeedButton
      Left = 487
      Top = 152
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000F810F817E730
        E748DD3DDD5FD845D96CD749D771D350D47BD252D27FD252D27FD252D27FD24F
        D27CD64AD772D847D96DDD3EDD60E630E649F90DFA12FF00FF00FA0DFA128C3F
        93AE2E343AFF353C42FF668BA4FF73A1BEFF6F9CB9FF6E9BB8FF6E9AB8FF6D9A
        B6FF6C98B6FF6A97B5FF6696B6FFAE62CAA3D04FAD89D35D87A3FF00FF005E10
        68AB0C131AFF101921FF5385A8FF65A2CBFF619DC3FF5F9CC2FF5E9BC1FF5C99
        C0FF5A97BFFF5896BEFF5396C4FF867D84E7B88B34FFDC9371DCFF00FF006112
        6BAA121920FF151E26FF5889ABFF6AA6CFFF66A0C7FF649EC5FF619DC4FF619C
        C3FF689DBFFF639CC4FF709093FFB08837FFDC9F61EFFA2ADD3AFF00FF006316
        70AA131D24FF162128FF5B8CADFF6DA9D2FF64A0C9FF63A0CAFF73A5C7FF9EAF
        BAFFB0B3B6FFAAB2BAFFAEA48AFFC7A45AFFB774CC98FF00FF00FF00FF00671B
        75AA19252CFF1A2830FF5E8FB0FF6AA8D2FF88B8D8FFBCD6E8FFBAC2C6FFC4C6
        C8FFD6DFE5FFBFCFDAFFBCBDC2FF9CC2C1FE8D69F583FF00FF00FF00FF006C20
        7AAA1F2C34FF212F38FF5D90B3FF89BCDEFFCDE3F2FFB7CEDEFFC6C7C8FFC4D7
        E3FFCEE2EFFFCFE4F1FFB0C9DAFFBEC2C9FBD538DB55FF00FF00FF00FF006F24
        7FAA24323BFF26353FFF5C91B5FFB3D6ECFFBAD8ECFFDCE4EAFFD4D3D1FFF3F5
        F6FFE0EDF4FFCEE3EFFFAFCCDFFFCECAC7FFDE489A8CFF00FF00FF00FF007228
        83AA293941FF2A3B45FF6095B8FFB9D9EEFFBAD7EBFFD6E6F1FFC3CDD4FFE5E4
        E3FFC6DBE9FFD9E6EDFFCCD6DEFFCDBEADFFD6499392FF00FF00FF00FF00752C
        87AA2E3F48FF30424CFF6398BBFFAFD4ECFFB3D2E8FFC9E0EFFFC3D9E7FFDFE0
        E1FFD5D8DBFFDDDDDDFFC1D5E3FF9D9FA2F8DF3FA77AFF00FF00FF00FF007830
        8BAA32444EFF344752FF6A9DBFFF84BCE1FFC9E0EFFFAACDE5FFAED0E7FFA0C7
        E1FFC9DCE8FFC2D8E7FF72B1D7FF6C76C0E9C114D956FF00FF00FF00FF007B32
        8EAA364952FF384C56FF6EA1C3FF78B5DFFF87BBDEFFBAD7EAFFBDD8EAFFBFD9
        EBFFB4D4E9FF7CB3D8FF77B5D8FF4D75C5FF740CCE92FF00FF00FF00FF007D35
        91AA394D57FF3B505BFF70A3C5FF7FBAE1FF78B4DCFF76B2DAFF80B7DCFF7FB6
        DCFF74AFD8FF75B0D9FF7DBADCFF5077C4FF770ECD93FF00FF00FF00FF007F37
        93AA3C505BFF3E535FFF72A5C6FF80BBE3FF7DB7DEFF7CB6DEFF7AB5DDFF7AB5
        DCFF7AB4DBFF7AB4DBFF7EBBDDFF617BCCF39B0BDB6FFF00FF00FF00FF007C3A
        92AF3D515BFF3F5460FF71A5C7FF7FBAE3FF7CB7DFFF7CB7DEFF7BB6DEFF7BB5
        DDFF7AB5DDFF79B4DCFF7AB6DCFFA46DE6A5FF020003FF00FF00FF00FF009733
        AA8F545972F0565C76F088A5D1F095BAEAF093B6E8F093B6E6F093B6E6F092B6
        E5F092B5E5F091B5E5F092B5E5F0C25FF080FF00FF00FF00FF00}
      OnClick = btnCTAClick
    end
    object btnCodCont: TSpeedButton
      Left = 487
      Top = 180
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000F810F817E730
        E748DD3DDD5FD845D96CD749D771D350D47BD252D27FD252D27FD252D27FD24F
        D27CD64AD772D847D96DDD3EDD60E630E649F90DFA12FF00FF00FA0DFA128C3F
        93AE2E343AFF353C42FF668BA4FF73A1BEFF6F9CB9FF6E9BB8FF6E9AB8FF6D9A
        B6FF6C98B6FF6A97B5FF6696B6FFAE62CAA3D04FAD89D35D87A3FF00FF005E10
        68AB0C131AFF101921FF5385A8FF65A2CBFF619DC3FF5F9CC2FF5E9BC1FF5C99
        C0FF5A97BFFF5896BEFF5396C4FF867D84E7B88B34FFDC9371DCFF00FF006112
        6BAA121920FF151E26FF5889ABFF6AA6CFFF66A0C7FF649EC5FF619DC4FF619C
        C3FF689DBFFF639CC4FF709093FFB08837FFDC9F61EFFA2ADD3AFF00FF006316
        70AA131D24FF162128FF5B8CADFF6DA9D2FF64A0C9FF63A0CAFF73A5C7FF9EAF
        BAFFB0B3B6FFAAB2BAFFAEA48AFFC7A45AFFB774CC98FF00FF00FF00FF00671B
        75AA19252CFF1A2830FF5E8FB0FF6AA8D2FF88B8D8FFBCD6E8FFBAC2C6FFC4C6
        C8FFD6DFE5FFBFCFDAFFBCBDC2FF9CC2C1FE8D69F583FF00FF00FF00FF006C20
        7AAA1F2C34FF212F38FF5D90B3FF89BCDEFFCDE3F2FFB7CEDEFFC6C7C8FFC4D7
        E3FFCEE2EFFFCFE4F1FFB0C9DAFFBEC2C9FBD538DB55FF00FF00FF00FF006F24
        7FAA24323BFF26353FFF5C91B5FFB3D6ECFFBAD8ECFFDCE4EAFFD4D3D1FFF3F5
        F6FFE0EDF4FFCEE3EFFFAFCCDFFFCECAC7FFDE489A8CFF00FF00FF00FF007228
        83AA293941FF2A3B45FF6095B8FFB9D9EEFFBAD7EBFFD6E6F1FFC3CDD4FFE5E4
        E3FFC6DBE9FFD9E6EDFFCCD6DEFFCDBEADFFD6499392FF00FF00FF00FF00752C
        87AA2E3F48FF30424CFF6398BBFFAFD4ECFFB3D2E8FFC9E0EFFFC3D9E7FFDFE0
        E1FFD5D8DBFFDDDDDDFFC1D5E3FF9D9FA2F8DF3FA77AFF00FF00FF00FF007830
        8BAA32444EFF344752FF6A9DBFFF84BCE1FFC9E0EFFFAACDE5FFAED0E7FFA0C7
        E1FFC9DCE8FFC2D8E7FF72B1D7FF6C76C0E9C114D956FF00FF00FF00FF007B32
        8EAA364952FF384C56FF6EA1C3FF78B5DFFF87BBDEFFBAD7EAFFBDD8EAFFBFD9
        EBFFB4D4E9FF7CB3D8FF77B5D8FF4D75C5FF740CCE92FF00FF00FF00FF007D35
        91AA394D57FF3B505BFF70A3C5FF7FBAE1FF78B4DCFF76B2DAFF80B7DCFF7FB6
        DCFF74AFD8FF75B0D9FF7DBADCFF5077C4FF770ECD93FF00FF00FF00FF007F37
        93AA3C505BFF3E535FFF72A5C6FF80BBE3FF7DB7DEFF7CB6DEFF7AB5DDFF7AB5
        DCFF7AB4DBFF7AB4DBFF7EBBDDFF617BCCF39B0BDB6FFF00FF00FF00FF007C3A
        92AF3D515BFF3F5460FF71A5C7FF7FBAE3FF7CB7DFFF7CB7DEFF7BB6DEFF7BB5
        DDFF7AB5DDFF79B4DCFF7AB6DCFFA46DE6A5FF020003FF00FF00FF00FF009733
        AA8F545972F0565C76F088A5D1F095BAEAF093B6E8F093B6E6F093B6E6F092B6
        E5F092B5E5F091B5E5F092B5E5F0C25FF080FF00FF00FF00FF00}
      OnClick = btnCodContClick
    end
    object edtDtMov: TDateTimePicker
      Left = 104
      Top = 16
      Width = 186
      Height = 21
      Date = 43861.628149594910000000
      Time = 43861.628149594910000000
      TabOrder = 0
    end
    object edtDtDoc: TDateTimePicker
      Left = 104
      Top = 43
      Width = 186
      Height = 21
      Date = 43861.628174317130000000
      Time = 43861.628174317130000000
      TabOrder = 1
    end
    object edtOperacao: TRadioGroup
      Left = 320
      Top = 7
      Width = 121
      Height = 57
      Caption = 'Opera'#231#227'o'
      Items.Strings = (
        'Entrada'
        'Sa'#237'da')
      TabOrder = 2
      OnClick = edtOperacaoClick
    end
    object edtNumDoc: TEdit
      Left = 104
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edtHisDoc: TEdit
      Left = 104
      Top = 97
      Width = 409
      Height = 21
      TabOrder = 4
    end
    object edtValDoc: TEdit
      Left = 104
      Top = 125
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object edtConf: TRadioGroup
      Left = 104
      Top = 207
      Width = 377
      Height = 49
      Caption = 'Confer'#234'ncia'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Conferido'
        'N'#227'o Conferido')
      TabOrder = 9
      OnClick = edtConfClick
    end
    object edtBan: TEdit
      Left = 488
      Top = 16
      Width = 41
      Height = 21
      TabStop = False
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnShadow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      Text = '001'
    end
    object edtCTACOD: TEdit
      Left = 104
      Top = 152
      Width = 49
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 11
    end
    object edtCCTCOD: TEdit
      Left = 104
      Top = 180
      Width = 49
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 12
    end
    object edtCON: TDBLookupComboBox
      Left = 159
      Top = 152
      Width = 326
      Height = 21
      KeyField = 'PLACOD'
      ListField = 'PLADES;PLACOD'
      ListSource = dsContas
      TabOrder = 7
      OnClick = edtCONClick
    end
    object edtCCT: TDBLookupComboBox
      Left = 159
      Top = 180
      Width = 326
      Height = 21
      KeyField = 'COD'
      ListField = 'DESCR;COD'
      ListSource = dsContabil
      TabOrder = 8
      OnClick = edtCCTClick
    end
    object edtGruDoc: TDBLookupComboBox
      Left = 326
      Top = 124
      Width = 159
      Height = 21
      KeyField = 'COD'
      ListField = 'DESCR'
      ListSource = dsGrupo
      TabOrder = 6
      OnClick = edtGruDocClick
    end
    object edtCodGruDoc: TEdit
      Left = 265
      Top = 124
      Width = 55
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 13
    end
  end
  object pnlControl: TPanel
    Left = 0
    Top = 271
    Width = 544
    Height = 42
    Align = alBottom
    TabOrder = 1
    object btnGravar: TBitBtn
      Left = 32
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object dsContas: TDataSource
    DataSet = DataModule1.tbCONTAS
    Left = 200
    Top = 264
  end
  object qryLancamentos: TFDQuery
    Connection = DataModule1.MovFin
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    SQL.Strings = (
      'select * from movban')
    Left = 400
    Top = 40
    object qryLancamentosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryLancamentosCODBAN: TWideStringField
      FieldName = 'CODBAN'
      Origin = 'CODBAN'
      FixedChar = True
      Size = 3
    end
    object qryLancamentosDTMOV: TDateField
      FieldName = 'DTMOV'
      Origin = 'DTMOV'
    end
    object qryLancamentosDOC: TWideStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      FixedChar = True
      Size = 8
    end
    object qryLancamentosCHQ: TWideStringField
      FieldName = 'CHQ'
      Origin = 'CHQ'
      FixedChar = True
      Size = 6
    end
    object qryLancamentosDTDOC: TDateField
      FieldName = 'DTDOC'
      Origin = 'DTDOC'
    end
    object qryLancamentosHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      FixedChar = True
      Size = 80
    end
    object qryLancamentosVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object qryLancamentosSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object qryLancamentosOPE: TWideStringField
      FieldName = 'OPE'
      Origin = 'OPE'
      FixedChar = True
      Size = 1
    end
    object qryLancamentosCTA: TWideStringField
      FieldName = 'CTA'
      Origin = 'CTA'
      FixedChar = True
      Size = 5
    end
    object qryLancamentosCODGRU: TWideStringField
      FieldName = 'CODGRU'
      Origin = 'CODGRU'
      FixedChar = True
      Size = 15
    end
    object qryLancamentosID_APA: TWideStringField
      FieldName = 'ID_APA'
      Origin = 'ID_APA'
      FixedChar = True
      Size = 5
    end
    object qryLancamentosID_REC: TWideStringField
      FieldName = 'ID_REC'
      Origin = 'ID_REC'
      FixedChar = True
      Size = 5
    end
    object qryLancamentosATM: TIntegerField
      FieldName = 'ATM'
      Origin = 'ATM'
    end
    object qryLancamentosFLAG: TWideStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object qryLancamentosID_ENT: TWideStringField
      FieldName = 'ID_ENT'
      Origin = 'ID_ENT'
      FixedChar = True
      Size = 14
    end
    object qryLancamentosNUMCHQ: TWideStringField
      FieldName = 'NUMCHQ'
      Origin = 'NUMCHQ'
      FixedChar = True
      Size = 6
    end
    object qryLancamentosCCT: TWideStringField
      FieldName = 'CCT'
      Origin = 'CCT'
      FixedChar = True
      Size = 3
    end
    object qryLancamentosCONFE: TWideStringField
      FieldName = 'CONFE'
      Origin = 'CONFE'
      FixedChar = True
      Size = 1
    end
  end
  object dsContabil: TDataSource
    DataSet = DataModule1.tbContabil
    Left = 256
    Top = 264
  end
  object dsGrupo: TDataSource
    DataSet = DataModule1.tbContabil
    Left = 304
    Top = 264
  end
  object EnterTab: TACBrEnterTab
    EnterAsTab = True
    Left = 488
    Top = 224
  end
end
