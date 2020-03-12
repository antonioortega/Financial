object frmCadEntidades: TfrmCadEntidades
  Left = 0
  Top = 0
  Caption = 'Cadastro de Entidades (Clientes e Fornecedores)'
  ClientHeight = 522
  ClientWidth = 841
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
  object pnlControles: TPanel
    Left = 0
    Top = 491
    Width = 841
    Height = 31
    Align = alBottom
    TabOrder = 0
    object DBNav: TDBNavigator
      Left = 9
      Top = 2
      Width = 150
      Height = 25
      DataSource = dsEntidades
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 0
    end
    object btnInserir: TBitBtn
      Left = 165
      Top = 2
      Width = 75
      Height = 25
      Action = actIncluir
      Caption = 'Inserir'
      TabOrder = 1
    end
    object btnAlterar: TBitBtn
      Left = 246
      Top = 2
      Width = 75
      Height = 25
      Action = actAlterar
      Caption = 'Alterar'
      TabOrder = 2
    end
    object btnExcluir: TBitBtn
      Left = 327
      Top = 2
      Width = 75
      Height = 25
      Action = actExcluir
      Caption = 'Excluir'
      TabOrder = 3
    end
    object btnFiltrar: TBitBtn
      Left = 534
      Top = 2
      Width = 75
      Height = 25
      Action = actFiltrar
      Caption = 'Localizar'
      TabOrder = 4
    end
    object btnRelatorios: TBitBtn
      Left = 615
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Relatorios'
      TabOrder = 5
    end
    object btnFechar: TBitBtn
      Left = 762
      Top = 2
      Width = 75
      Height = 25
      Action = actFechar
      Caption = 'Fechar'
      TabOrder = 6
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 841
    Height = 491
    ActivePage = tabFisica
    Align = alClient
    TabOrder = 1
    object tabDados: TTabSheet
      Caption = 'Dados Principais'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 833
        Height = 463
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 48
          Height = 13
          Caption = 'CNPJ/CPF'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 195
          Top = 3
          Width = 105
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual/RG'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 3
          Top = 42
          Width = 153
          Height = 13
          Caption = 'Raz'#227'o Social ou Nome Completo'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 3
          Top = 82
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 3
          Top = 120
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 195
          Top = 120
          Width = 33
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 387
          Top = 120
          Width = 18
          Height = 13
          Caption = 'Fax'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 3
          Top = 158
          Width = 19
          Height = 13
          Caption = 'CEP'
          FocusControl = edtCEP
        end
        object Label9: TLabel
          Left = 3
          Top = 197
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = edtEnd
        end
        object Label10: TLabel
          Left = 511
          Top = 197
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = edtBai
        end
        object Label11: TLabel
          Left = 3
          Top = 236
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = edtCid
        end
        object Label12: TLabel
          Left = 403
          Top = 236
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = edtEst
        end
        object Label13: TLabel
          Left = 3
          Top = 279
          Width = 83
          Height = 13
          Caption = 'CEP de Cobran'#231'a'
          FocusControl = edtCEPCOB
        end
        object Label14: TLabel
          Left = 3
          Top = 322
          Width = 119
          Height = 13
          Caption = 'Endere'#231'o para Cobran'#231'a'
          FocusControl = edtEndCOB
        end
        object Label15: TLabel
          Left = 511
          Top = 322
          Width = 92
          Height = 13
          Caption = 'Bairro de Cobran'#231'a'
          FocusControl = edtBaiCOB
        end
        object Label16: TLabel
          Left = 3
          Top = 365
          Width = 97
          Height = 13
          Caption = 'Cidade de Cobran'#231'a'
          FocusControl = edtCidCOB
        end
        object Label17: TLabel
          Left = 403
          Top = 365
          Width = 77
          Height = 13
          Caption = 'UF de Cobran'#231'a'
          FocusControl = edtEstCOB
        end
        object Label18: TLabel
          Left = 3
          Top = 408
          Width = 28
          Height = 13
          Caption = 'E-mail'
          FocusControl = DBEdit18
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 19
          Width = 186
          Height = 21
          DataField = 'CODIGO'
          DataSource = dsEntidades
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 195
          Top = 19
          Width = 251
          Height = 21
          DataField = 'INSC_RG'
          DataSource = dsEntidades
          TabOrder = 1
        end
        object edtTipCadastro: TDBRadioGroup
          Left = 403
          Top = 85
          Width = 398
          Height = 37
          Caption = 'Tipo de Cadastro'
          Columns = 4
          DataField = 'TIPCAD'
          DataSource = dsEntidades
          Items.Strings = (
            'Cliente'
            'Fornecedor'
            'Ambos'
            'Inativo')
          TabOrder = 2
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object edtTipPessoa: TDBRadioGroup
          Left = 452
          Top = 3
          Width = 269
          Height = 37
          Caption = 'Pessoa'
          Columns = 3
          DataField = 'PESSOA'
          DataSource = dsEntidades
          Items.Strings = (
            'Jur'#237'dica'
            'F'#237'sica'
            'Outros')
          TabOrder = 3
          Values.Strings = (
            'J'
            'F'
            'O')
        end
        object DBEdit3: TDBEdit
          Left = 3
          Top = 58
          Width = 654
          Height = 21
          DataField = 'RAZSOC'
          DataSource = dsEntidades
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 3
          Top = 98
          Width = 394
          Height = 21
          DataField = 'NOMEFAN'
          DataSource = dsEntidades
          TabOrder = 5
        end
        object DBEdit5: TDBEdit
          Left = 3
          Top = 136
          Width = 186
          Height = 21
          DataField = 'FONE'
          DataSource = dsEntidades
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 195
          Top = 136
          Width = 186
          Height = 21
          DataField = 'CELULAR'
          DataSource = dsEntidades
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 387
          Top = 136
          Width = 186
          Height = 21
          DataField = 'FAX'
          DataSource = dsEntidades
          TabOrder = 8
        end
        object edtCEP: TDBEdit
          Left = 3
          Top = 174
          Width = 121
          Height = 21
          DataField = 'CORCEP'
          DataSource = dsEntidades
          TabOrder = 9
        end
        object edtEnd: TDBEdit
          Left = 3
          Top = 213
          Width = 502
          Height = 21
          DataField = 'COREND'
          DataSource = dsEntidades
          TabOrder = 10
        end
        object edtBai: TDBEdit
          Left = 511
          Top = 213
          Width = 264
          Height = 21
          DataField = 'CORBAI'
          DataSource = dsEntidades
          TabOrder = 11
        end
        object edtCid: TDBEdit
          Left = 3
          Top = 252
          Width = 394
          Height = 21
          DataField = 'CORCID'
          DataSource = dsEntidades
          TabOrder = 12
        end
        object edtEst: TDBEdit
          Left = 403
          Top = 252
          Width = 30
          Height = 21
          DataField = 'CORUF'
          DataSource = dsEntidades
          TabOrder = 13
        end
        object edtCEPCOB: TDBEdit
          Left = 3
          Top = 295
          Width = 121
          Height = 21
          DataField = 'COBCEP'
          DataSource = dsEntidades
          TabOrder = 14
        end
        object edtEndCOB: TDBEdit
          Left = 3
          Top = 338
          Width = 502
          Height = 21
          DataField = 'COBEND'
          DataSource = dsEntidades
          TabOrder = 15
        end
        object edtBaiCOB: TDBEdit
          Left = 511
          Top = 338
          Width = 264
          Height = 21
          DataField = 'COBBAI'
          DataSource = dsEntidades
          TabOrder = 16
        end
        object edtCidCOB: TDBEdit
          Left = 3
          Top = 381
          Width = 394
          Height = 21
          DataField = 'COBCID'
          DataSource = dsEntidades
          TabOrder = 17
        end
        object edtEstCOB: TDBEdit
          Left = 403
          Top = 381
          Width = 30
          Height = 21
          DataField = 'COBUF'
          DataSource = dsEntidades
          TabOrder = 18
        end
        object DBEdit18: TDBEdit
          Left = 3
          Top = 424
          Width = 784
          Height = 21
          DataField = 'EMAIL'
          DataSource = dsEntidades
          TabOrder = 19
        end
        object btnBuscaCEP: TButton
          Left = 128
          Top = 171
          Width = 75
          Height = 25
          Caption = 'Buscar CEP'
          TabOrder = 20
          OnClick = btnBuscaCEPClick
        end
        object btnBuscaCEPCOB: TButton
          Left = 128
          Top = 292
          Width = 75
          Height = 25
          Caption = 'Buscar CEP'
          TabOrder = 21
          OnClick = btnBuscaCEPCOBClick
        end
      end
    end
    object tabFisica: TTabSheet
      Caption = 'Pessoa F'#237'sica'
      ImageIndex = 1
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 833
        Height = 463
        Align = alClient
        TabOrder = 0
        object Label19: TLabel
          Left = 8
          Top = 8
          Width = 44
          Height = 13
          Caption = 'Profiss'#227'o'
          FocusControl = DBEdit8
        end
        object Label20: TLabel
          Left = 409
          Top = 8
          Width = 112
          Height = 13
          Caption = 'Telefone onde trabalha'
          FocusControl = DBEdit9
        end
        object Label21: TLabel
          Left = 8
          Top = 49
          Width = 111
          Height = 13
          Caption = 'Empresa onde trabalha'
          FocusControl = DBEdit10
        end
        object Label22: TLabel
          Left = 472
          Top = 49
          Width = 26
          Height = 13
          Caption = 'Setor'
          FocusControl = DBEdit11
        end
        object Label23: TLabel
          Left = 8
          Top = 90
          Width = 66
          Height = 13
          Caption = 'Nacionalidade'
          FocusControl = DBEdit12
        end
        object Label24: TLabel
          Left = 213
          Top = 90
          Width = 81
          Height = 13
          Caption = 'Data Nascimento'
          FocusControl = DBEdit13
        end
        object Label25: TLabel
          Left = 8
          Top = 130
          Width = 14
          Height = 13
          Caption = 'Pai'
          FocusControl = DBEdit14
        end
        object Label26: TLabel
          Left = 8
          Top = 170
          Width = 20
          Height = 13
          Caption = 'M'#227'e'
          FocusControl = DBEdit15
        end
        object Label27: TLabel
          Left = 455
          Top = 217
          Width = 107
          Height = 13
          Caption = 'Regime de Casamento'
          FocusControl = DBEdit16
        end
        object Label28: TLabel
          Left = 8
          Top = 256
          Width = 40
          Height = 13
          Caption = 'Conjuge'
          FocusControl = DBEdit17
        end
        object Label29: TLabel
          Left = 8
          Top = 304
          Width = 48
          Height = 13
          Caption = 'CNPJ/CPF'
          FocusControl = DBEdit19
        end
        object Label30: TLabel
          Left = 151
          Top = 304
          Width = 72
          Height = 13
          Caption = 'RG do Conjuge'
          FocusControl = DBEdit20
        end
        object Label31: TLabel
          Left = 299
          Top = 304
          Width = 102
          Height = 13
          Caption = 'Profiss'#227'o do Conjuge'
          FocusControl = DBEdit21
        end
        object Label32: TLabel
          Left = 504
          Top = 256
          Width = 95
          Height = 13
          Caption = 'Data de Casamento'
          FocusControl = DBEdit22
        end
        object DBEdit8: TDBEdit
          Left = 8
          Top = 24
          Width = 394
          Height = 21
          DataField = 'PROFISSAO'
          DataSource = dsEntidades
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 409
          Top = 24
          Width = 186
          Height = 21
          DataField = 'EMPR_FON'
          DataSource = dsEntidades
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 8
          Top = 65
          Width = 459
          Height = 21
          DataField = 'EMPRESA'
          DataSource = dsEntidades
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 472
          Top = 65
          Width = 329
          Height = 21
          DataField = 'SETOR'
          DataSource = dsEntidades
          TabOrder = 3
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 106
          Width = 199
          Height = 21
          DataField = 'NACIONAL'
          DataSource = dsEntidades
          TabOrder = 4
        end
        object DBEdit13: TDBEdit
          Left = 213
          Top = 106
          Width = 236
          Height = 21
          DataField = 'DTNASC'
          DataSource = dsEntidades
          MaxLength = 10
          TabOrder = 5
        end
        object edtEstCivil: TDBRadioGroup
          Left = 8
          Top = 213
          Width = 441
          Height = 43
          Caption = 'Estado Civil'
          Columns = 6
          DataField = 'ESTCIV'
          DataSource = dsEntidades
          Items.Strings = (
            'Casado'
            'Solteiro'
            'Desquitado'
            'Divorciado'
            'Viuvo'
            'Outro')
          TabOrder = 6
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object DBEdit14: TDBEdit
          Left = 8
          Top = 146
          Width = 459
          Height = 21
          DataField = 'PAI'
          DataSource = dsEntidades
          TabOrder = 7
        end
        object DBEdit15: TDBEdit
          Left = 8
          Top = 186
          Width = 459
          Height = 21
          DataField = 'MAE'
          DataSource = dsEntidades
          TabOrder = 8
        end
        object DBEdit16: TDBEdit
          Left = 455
          Top = 233
          Width = 264
          Height = 21
          DataField = 'REGCAS'
          DataSource = dsEntidades
          TabOrder = 9
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 456
          Top = 89
          Width = 329
          Height = 38
          Caption = 'Sexo'
          Columns = 3
          DataField = 'SEXO'
          DataSource = dsEntidades
          Items.Strings = (
            'Masculino'
            'Feminino'
            'Outros')
          TabOrder = 10
          Values.Strings = (
            'M'
            'F'
            'O')
        end
        object DBEdit17: TDBEdit
          Left = 8
          Top = 272
          Width = 490
          Height = 21
          DataField = 'CONJUGE'
          DataSource = dsEntidades
          TabOrder = 11
        end
        object DBEdit19: TDBEdit
          Left = 8
          Top = 320
          Width = 137
          Height = 21
          DataField = 'CPFCJG'
          DataSource = dsEntidades
          TabOrder = 12
        end
        object DBEdit20: TDBEdit
          Left = 151
          Top = 320
          Width = 143
          Height = 21
          DataField = 'RGCJG'
          DataSource = dsEntidades
          TabOrder = 13
        end
        object DBEdit21: TDBEdit
          Left = 299
          Top = 320
          Width = 394
          Height = 21
          DataField = 'PROFCJG'
          DataSource = dsEntidades
          TabOrder = 14
        end
        object DBEdit22: TDBEdit
          Left = 504
          Top = 272
          Width = 236
          Height = 21
          DataField = 'DTCAS'
          DataSource = dsEntidades
          MaxLength = 10
          TabOrder = 15
        end
      end
    end
    object tabJuridica: TTabSheet
      Caption = 'Pessoa Jur'#237'dica'
      ImageIndex = 2
      object Label33: TLabel
        Left = 8
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Contato'
        FocusControl = DBEdit23
      end
      object DBEdit23: TDBEdit
        Left = 8
        Top = 32
        Width = 281
        Height = 21
        DataField = 'CONTATO'
        DataSource = dsEntidades
        TabOrder = 0
      end
    end
    object tabComplementares: TTabSheet
      Caption = 'Dados Complementares'
      ImageIndex = 3
      object DBCheckBox1: TDBCheckBox
        Left = 32
        Top = 32
        Width = 153
        Height = 17
        Caption = 'Consumidor Final'
        DataField = 'CONSUM'
        DataSource = dsEntidades
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 32
        Top = 55
        Width = 161
        Height = 17
        Caption = 'Contribuinte do ICMS'
        DataField = 'CTR_ICMS'
        DataSource = dsEntidades
        DragCursor = crDefault
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 32
        Top = 78
        Width = 161
        Height = 17
        Caption = 'Aparecer nos Relat'#243'rios'
        DataField = 'LISTA'
        DataSource = dsEntidades
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 32
        Top = 101
        Width = 169
        Height = 17
        Caption = 'Bloqueado para Venda'
        DataField = 'C_BLOC'
        DataSource = dsEntidades
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  object dsEntidades: TDataSource
    AutoEdit = False
    DataSet = DataModule1.tbEntidades
    Left = 552
    Top = 400
  end
  object ActionList1: TActionList
    Images = ProgMov16
    Left = 488
    Top = 232
    object actIncluir: TAction
      Category = 'Controles'
      Caption = 'Inserir'
      ImageIndex = 5
      OnExecute = actIncluirExecute
    end
    object actAlterar: TAction
      Category = 'Controles'
      Caption = 'Alterar'
      ImageIndex = 50
      OnExecute = actAlterarExecute
    end
    object actExcluir: TAction
      Category = 'Controles'
      Caption = 'Excluir'
      ImageIndex = 3
      OnExecute = actExcluirExecute
    end
    object actFiltrar: TAction
      Category = 'Controles'
      Caption = 'Localizar'
      ImageIndex = 73
      OnExecute = actFiltrarExecute
    end
    object actFechar: TAction
      Category = 'Controles'
      Caption = 'Fechar'
      ImageIndex = 4
      OnExecute = actFecharExecute
    end
  end
  object ProgMov16: TImageList
    BkColor = clWhite
    Left = 552
    Top = 225
    Bitmap = {
      494C01015D006000540010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008001000001002000000000000080
      010000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCF86BBBBBBBEB2B2B2D5ADAD
      ADE5ACACACE7A9A9A9F0A8A8A8F1A8A8A8F1A8A8A8F1A9A9A9F0ABABABEAACAC
      ACE6B2B1AFD7B8B8B8C5C8C8C898FBFBFB0A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FEFEFE01FDFDFD03FCFC
      FC06FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DF4F2EF1DAA84
      33FFBA9241FFEBE4D548FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A78231FFB790
      3FFFC89E4EFFE4C896A3FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5802FFDB58E3DFFC69C
      4CFFE9C985FEFFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD8C44E2B38C3BFFC39A4AFFE3C1
      7BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D4D4
      D48FB4B4B4FFB4B4B4FFB8B8B8EFC5B795AAB08A39FFC19848FFD8B166FFFCF8
      F019FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FCFCFC08B9B9B9FFB9B9
      B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFBAB4A9FFD0A556FFF5E8D052FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BEBEBEFFBEBEBEFFCFCF
      CFFFE8E8E8FFEAEAEAFFEBEBEBFFBFBFBFFFBEBEBEFFD4CCBEC3FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBEBEB52C3C3C3FFCDCDCDFFEDED
      EDFFF4F4F4FFF7F7F7FFFAFAFAFFF7F7F7FFC3C3C3FFC3C3C3FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3D3D3C8C9C9C9FFEDEDEDFFF1F1
      F1FFF4F4F4FFF7F7F7FFFAFAFAFFFDFDFDFFD2D2D2FFC9C9C9FFFDFDFD06FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D5D5D3CCCCCCFFF1F1F1FFF1F1
      F1FFF4F4F4FFF7F7F7FFFAFAFAFFFEFEFEFFD9D9D9FFCCCCCCFFF7F7FA11FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E978D0D0D0FFE2E2E2FFFEFE
      FEFFF9F9F9FFFAFAFAFFFEFEFEFF111198FF111198FF111198FF111198FF1111
      98FF111198FF111198FFFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00DDDDDDFFD2D2D2FFF1F1
      F1FFF9F9F9FFFDFDFDFFFBFBFBFF7A7ACEFF6565CDFF6B6BD1EA6E6ED6BF6E6E
      D6BF6E6ED6BF6F6FD7BFFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F5F5F540E1E1E1FFD5D5
      D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFE8E8E8FFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FCFCFC14E3E3
      E3F7EBEBEBFFE8E8E8FFEDEDEDFFE5E5E5B5FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FBFBFB0BF5F5F51AF2F2
      F224EEEEEE2EEEEEEE2EE7E7E743E7E7E743E7E7E743E8E8E83EEEEEEE2EEEEE
      EE2DF5F5F51BF9F9F910FDFDFD03FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECEC33DBDBDB63C7C7C7A2BEBE
      BEBFBCBCBCC5B8B8B8D2B8B8B8D1B8B8B8D1B8B8B8D1B8B8B8D1B8B8B8D1BFBF
      BFBDC1C1C1B5D4D4D472E3E3E34EFCFCFC08DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE7AFAFAFDE7BA3B9EFA1AC
      B3E0B9B9B9C4C0C0C0B0CDCDCD8AF9F9F910DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE65699C1FC6B9DBAF9AFAFAFDEB1B1B1D8B2B2
      B2D7B9B9B9C4C0C0C0B0CDCDCD8AF9F9F910CFCFCF86BBBBBBBEB2B2B2D5ADAD
      ADE5ACACACE7A9A9A9F0A8A8A8F1A8A8A8F1A8A8A8F1A9A9A9F0ABABABEAACAC
      ACE6B2B1AFD7B8B8B8C5C8C8C898FBFBFB0AFFFFFF00FFFFFF00C3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFD4D4D4BEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EBEBEA1A9B927B9C957C3FE3987A36EE0E91D8F39EB3BE6D0093E4FF129A
      E5ED60B9E9A871C0EC96FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AED7EF5EFFFFFF00B5DCF1530090E3FF0090E3FFFFFFFF00FFFFFF00B3DA
      EF59FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC06FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DF4F2EF1DAA84
      33FFBA9241FFEBE4D548FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFD6D6D6BCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB049482
      5BC29F7B29FF9F7B29FF9F7B29FF9F7B29FF009AE9FF009AE9FF009AE9FF009A
      E9FF009AE9FF5EC0F1B5FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000095
      E5FF0095E5FF28A5E9D7179EE7E80095E5FF0095E5FFBAE2F7450095E5FF0095
      E5FF29A6E9D6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A78231FFB790
      3FFFC89E4EFFE4C896A3FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9C9FFC9C9
      C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
      C9FFC9C9C9FFDADADABCFFFFFF00FFFFFF00FFFFFF00FCFCFC03977B38EB9F7B
      29FF9F7B29FF9F7B29FF977C32FF00A1EDFF00A1EDFF07A4EEFF88F599FF7AE9
      AFFF00A1EDFF00A1EDFF00A1EDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF000099
      E8FF0099E8FF0099E8FF0099E8FF0099E8FF0099E8FF0099E8FF0099E8FF0099
      E8FFA1DBF777FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5802FFDB58E3DFFC69C
      4CFFE9C985FEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D0D0FFDADA
      D4FF27278BFF29298DFF29298DFF29298DFF50509CFFD0D0D0FFD0D0D0FFA2A2
      BCFFD1D1D0FFDEDEDEBCFFFFFF00FFFFFF00FFFFFF009A8E74A49F7B29FF9F7B
      29FFA07C2AFFA27E2DFFA37F2EFF13A3DAFF00A8F1FF91AD5FFF88FC85FF88FC
      85FF34C5D2FF00A8F1FF63C9F69CFFFFFF00FFFFFF00E3F4FC1CEBF7FD1464C3
      F29B009DEBFF009DEBFF009DEBFF009DEBFF009DEBFF009DEBFF009DEBFF009D
      EBFFF3FAFE0CE6F5FD19FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD8C44E2B38C3BFFC39A4AFFE3C1
      7BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D5D5FFA9A9
      C3FF0A0A80FF0A0A80FF0A0A80FF0A0A80FF02027DFFE5E5DBFF393994FF0000
      7AFFD9D9D6FFE2E2E2BCFFFFFF00FFFFFF00F6F6F60A9F7B29FFA07C2AFFA481
      30FFA88435FFAA8738FFA7893FFF00AFF6FF00AFF6FF7B8F67FF93CC64FF8CE7
      76FF15BBE4FF00AFF6FF12B4F6EDFFFFFF00FFFFFF0000A1EDFF00A1EDFF00A1
      EDFF00A1EDFF00A1EDFFC4EBFB62FFFFFF00FCFEFE044CBFF3E700A1EDFF00A1
      EDFF00A1EDFF00A1EDFF2FB2F0D0FFFFFF00FFFFFF00FFFFFF00FFFFFF00D4D4
      D48FB4B4B4FFB4B4B4FFB8B8B8EFC5B795AAB08A39FFC19848FFD8B166FFFCF8
      F019FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9D9D9FFB0B0
      CBFF111195FF111195FF111195FF111195FF080892FF23239AFF111195FF0202
      8FFFDDDDDAFFE6E6E6BCFFFFFF00FFFFFF00BFBEB952A17D2CFFA78434FFAC89
      3BFFB08D40FFB29144FF91E477FF30C2F9FF09B8FAFF00B6FAFF43A4AEFF21AC
      D1FF00B6FAFF22BEF8FF36C3F9F8FFFFFF00ECF8FD1300A6F0FF00A6F0FF00A6
      F0FF00A6F0FFC2EAFB57FFFFFF00FFFFFF00FFFFFF00FFFFFF0006A8F0FF00A6
      F0FF00A6F0FF00A6F0FF09A8F0F6FFFFFF00FFFFFF00FCFCFC08B9B9B9FFB9B9
      B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFBAB4A9FFD0A556FFF5E8D052FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDDFFB4B4
      D2FF1414A9FF1414A9FF1414A9FF1414A9FF0C0CA6FFC5C5DAFF0D0DA6FF0606
      A4FFE1E1DEFFE9E9E9BCFFFFFF00FFFFFF009E947D9BA78434FFAE8B3DFFB391
      44FFB8964BFFA1CA69FF88FC85FF88FC85FF00BDFEFF00BDFEFF00BDFEFF00BD
      FEFF00BDFEFF16B4E1FFFAFAF906FFFFFF00FFFFFF00FFFFFF0011AFF2EE00AA
      F2FF00AAF2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006ACDF7A000AA
      F2FF00AAF2FF7FD3F880FFFFFF00FFFFFF00FFFFFF00BEBEBEFFBEBEBEFFCFCF
      CFFFE8E8E8FFEAEAEAFFEBEBEBFFBFBFBFFFBEBEBEFFD4CCBEC3FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1E1E1FFCFCF
      DDFF0F0FB7FF1212B9FF1212B9FF1212B9FF1B1BC3FFE9E9E1FFF1F1E2FF1D1D
      CBFFE6E6E1FFECECECBCFFFFFF00FFFFFF009E947C9EAD8A3CFFB49145FFBA98
      4EFFBF9E55FF88FC85FF88FC85FF88FC85FF5DDFC8FF8AED83FF02BEFEFF33B9
      DCFF979B6BFF879760FFFAFAF906FFFFFF00FFFFFF0099DEFB6600AEF5FF00AE
      F5FF00AEF5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003BC0F7C400AE
      F5FF00AEF5FF02AEF5FDF6FCFE09FFFFFF00EBEBEB52C3C3C3FFCDCDCDFFEDED
      EDFFF4F4F4FFF7F7F7FFFAFAFAFFF7F7F7FFC3C3C3FFC3C3C3FF34B164FF90D5
      AB8AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E3FFE3E3
      E3FFEEEEE4FFEFEFE4FFEFEFE4FFEFEFE4FFEDEDE4FFE3E3E3FFE3E3E3FFE7E7
      E4FFE3E3E3FFEEEEEEBCFFFFFF00FFFFFF00BAB7B25CB18F42FFB9974CFFC09E
      56FFC7A55EFF9DE27AFF88FC85FF88FC85FF88FC85FF88FC85FFBDA257FFB896
      4BFFB08D40FF8DEA79FFFEFEFE01FFFFFF00DBF4FD2400B2F7FF00B2F7FF00B2
      F7FF00B2F7FF33C1F8CCFFFFFF00FFFFFF00FFFFFF00F9FDFE0600B2F7FF00B2
      F7FF00B2F7FF00B2F7FF12B7F7FFFFFFFF00D3D3D3C8C9C9C9FFEDEDEDFFF1F1
      F1FFF4F4F4FFF7F7F7FFFAFAFAFFFDFDFDFFD2D2D2FFC9C9C9FF2EBA6EFF6FCF
      9BAFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFF0F0F0BCFFFFFF00FFFFFF00F3F3F30EB59246FFBD9B51FFC5A3
      5CFFCDAB66FF88FC85FF88FC85FF8AFA84FFB2D278FF94EC7FFFC4A25BFFBC9A
      50FFB49145FF8DB886BAFFFFFF00FFFFFF00FFFFFF0047C8F9FF32C2F9FF16BC
      FAFF00B6FAFF00B6FAFF05B7FAFA7CD9FC834ECCFBB100B6FAFF00B6FAFF00B6
      FAFF37C4F9FF2EC2F9FF7ED9FB92FFFFFF00D5D5D5D3CCCCCCFFF1F1F1FFF1F1
      F1FFF4F4F4FFF7F7F7FFFAFAFAFFFEFEFEFFD9D9D9FFCCCCCCFF28C378FF6BD5
      A2AFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFF3F3F3BCFFFFFF00FFFFFF00FFFFFF009F906FBCBF9E55FFC9A7
      60FF88FC85FF88FC85FF88FC85FF88FC85FF8EF683FFA5DC7AFFC8A65FFFBE9C
      53FF8EEE7DFFEEEEEE14FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0038C9
      FCC700BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BA
      FCFFF1FBFE0EFFFFFF00FFFFFF00FFFFFF00E9E9E978D0D0D0FFE2E2E2FFFEFE
      FEFFF9F9F9FFFAFAFAFFFEFEFEFF24CB81FF24CB81FF24CB81FF24CB81FF24CB
      81FF24CB81FF24CB81FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFF1F1F1FF7676
      76FF777777FFDFDFDF51FFFFFF00FFFFFF00FFFFFF00FAFAF906BA9B58F7A5D6
      74FF95EE80FFDABA78FFE3C283FF8DF884FF88FC85FF8DF582FFC7A961FF88FC
      85FFB0B8AE68FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000BD
      FFFF00BDFFFF00BDFFFF01BEFEFF00BDFFFF00BDFFFF1BC3FDFF00BDFFFF00BD
      FFFF4AD0FEBAFFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDDFFD2D2D2FFF1F1
      F1FFF9F9F9FFFDFDFDFFFBFBFBFF7CD8B1FF6CDAAAFF70DDAEEA20D188FF3DD8
      97EB75E4B4BF75E4B4BFFFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF7F7F7FF6767
      67FFCCCCCC4FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F70999BC
      78DF88FC85FFCBC176FFDCBB7AFFDBBB79FFD6B572FFA1E07BFF88FB84FFB9BE
      B75AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0059D1
      FCDC29C6FDFFDBF5FE2F66D6FDB100BEFFFF00BEFFFFFDFEFE0280DBFCB93CCA
      FCFFCBF1FE3AFFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5F540E1E1E1FFD5D5
      D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFE8E8E8FFFFFFFF001CD68EFF63E2
      B1AFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFEFEFEFFC5C5
      C54FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D7D8D7308AC086C387F983FDA3E27DFF87DE81EBA1B49F83F6F7F60AFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6F8FE1C1BC3FDFF3ECAFCFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC14E3E3
      E3F7EBEBEBFFE8E8E8FFEDEDEDFFE5E5E5B5FFFFFF00FFFFFF001ADA92FF66E6
      B6AFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FCFCFC0AE3E3E377E3E3
      E377E3E3E377E3E3E377E3E3E377E3E3E377E3E3E377E3E3E377E3E3E377E3E3
      E377E3E3E377E6E6E668FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE7AFAFAFDEB1B1B1D8B2B2
      B2D7B9B9B9C4C0C0C0B0CDCDCD8AF9F9F910DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE7AFAFAFDEB1B1B1D8A1B3
      B0E094BAB5DBC0C0C0B0CDCDCD8AF9F9F910FFFFFF00DBDBDB97C3C3C3FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFD5D5D5FFC3C3C3FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008BE7
      DC7E00D3BCFF64DDD1A6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4F8FB0EFFFFFF00FFFFFF0061F4D7AC24F3CEDFFFFFFF00A5F2E56300E5
      C2FF00DFC0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00DCDCDC97C4C4C4FFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFD7CBADFFBFAA73FFC1AF81FFECEC
      ECFFDDDDDDFFC4C4C4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000DB
      BFFF00D8BEFF00D4BDFF0BD2BEF4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0D6
      F45F008BDFFF329EE3CDFFFFFF0000FACAFF00F5C8FF00EFC7FF00EAC4FF00E4
      C1FF00DFC0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00DFDFDF97CACACAFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFB7A065FFEDEDEDFFEDEDEDFFBDBC
      D7FFE0E0E0FFCACACAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00DADADA65C1C1
      C1ABB6B6B6CBB4B4B4D1ADADADE3AEAEAEE2AEAEAEE2B0B0B0DDB5B5B5CFBCBC
      BCB9CBCBCB90FBFBFB0AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000E0
      C1FF00DCBEFF6AFDD7FF00D5BDFF00D1BCFFDBF8F524FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0059BA
      EEA60091E3FF008CE0FF1F99E0E006FACBFF37EDC3FF4FDAB5FF5EFFD4FF5EFF
      D4FF00DFC0FFEDFCFA12FFFFFF00FFFFFF00FFFFFF00E2E2E297CFCFCFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFDCD4BDFFB7A061FFEFEFEFFFE0E0E8FF4140
      ABFFE3E3E3FFCFCFCFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE01FCFCFC08FBFBFB0BFAFAFA0CFEFEFE01FEFEFE02FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0074F5DF8B28ECCCD700E5
      C2FF56FBD0FF5BF8CEFF5EFED4FF21DDC6FF00D2BCFF6FE5D990FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBF2FD24CAECFB35009D
      EAFF31B5EBFF71E1FCFF048EE0FF008EDBFF2CF1C6FF48C8A6FF5DFED3FF5EFF
      D4FF05DFC2FF93EFE36CFFFFFF00FFFFFF00FFFFFF00E4E4E497D4D4D4FFF0F0
      F0FFF0F0F0FFE5DFCFFFCEC09AFFBBA773FFF0F0F0FFF0F0F0FF29279CFFF0F0
      F0FFE5E5E5FFD4D4D4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A17D
      2AFFA17D2AFFA17D2AFFA17C29FFA17C29FFA17C29FFA17C29FFA17D2AFFA17D
      2AFFA17D2BFFA17D2BFFF8F5EF13FFFFFF006BF8DF9400F1C7FF00EDC5FF35EE
      C4FF369B81FF5CFBD1FF5CFBD1FF5EFFD4FF59EED5FF00D4BDFF13D4C0ECFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9F8FE1600AEF5FF00A9F2FF24B1
      EBFF6CD8F3FF67CFE8FF71E1FCFF0A92E2FF028ADDFF5EFFD4FF32927AFF5CFA
      D0FF36E9CDFF3AE1CCC5FFFFFF00FFFFFF00FFFFFF00E7E7E797D8D8D8FFF1F1
      F1FFF1F1F1FFC5B386FFF1F1F1FFF1F1F1FFF1F1F1FF211E96FFE9E9EEFFF1F1
      F1FFE8E8E8FFD8D8D8FFFFFFFF00FFFFFF00C8C8C8B7CBCBCBB3C7C8CBB1AB85
      30FFAC8734FFAC8734FFAC8734FFAC8734FFAC8734FFAC8734FFAC8734FFAC87
      34FFAC8734FFAC8734FFAC8734FFFFFFFF0041F9D6CA00F6C9FF00F1C6FF5EFF
      D4FF5EFFD4FF4ACDABFF44BD9EFF39A388FF5EFFD4FF69FCD7FF00D5BDFF00D1
      BCFFE7FAF818FFFFFF00FFFFFF00FFFFFF00F4FBFE0B17BAF9FF00AEF4FF71E1
      FCFF3C7F91FF306A7AFF4591A4FF71E1FCFF1397E3FF0088DDFF3EB093FF50DE
      B8FF57F4D4FF00D9BEFFFFFFFF00FFFFFF00FFFFFF00EAEAEA97DCDCDCFFF2F2
      F2FFCBBB8FFFAD9248FFF2F2F2FFF2F2F2FF3F3CA3FFD1D1E8FFF2F2F2FFF2F2
      F2FFEAEAEAFFDCDCDCFFFFFFFF00FFFFFF00BDBDBDFF5E5E5EFFC0C2C7FFB58C
      37FFB68E3DFFB68E3DFFB68E3DFFB68E3DFFB68E3DFFB68E3DFFB68E3DFFB68E
      3DFFB68E3DFFB68E3DFFB68E3DFFE7DBC151FFFFFF00ABFCED5B0FF6CBFF00F2
      C7FF53F9CFFF5EFFD4FF53E5BFFF3AA489FF2E8670FF5EFFD4FF5EFED4FF18DB
      C4FF00D2BCFFAFF0E950FFFFFF00FFFFFF00FFFFFF00FAFDFE051EBCF9FF03AC
      F2FF71E1FCFF71E1FCFF4A9AAFFF5DBED5FF71E1FCFF1E9DE5FF0087DDFF40B4
      97FF6BFDD8FF00D9BEFFFFFFFF00FFFFFF00FFFFFF00ECECEC97DFDFDFFFF1EF
      EAFFBBA672FFF3F3F3FFF0F0F1FF1E1A93FF9C9CD5FFF3F3F3FFF3F3F3FFF3F3
      F3FFEBEBEBFFDFDFDFFFFFFFFF00FFFFFF00C5C5C5FFCECECEFFC5C8CCFFBF95
      40FFBF9846FFBF9846FFBF9846FFBF9846FFBF9846FFBF9846FFBF9846FFBF98
      46FFBF9846FFBF9846FFBF9745FFE4D2B06DFFFFFF00FFFFFF00F4FEFC0B30F7
      D1FF00F4C8FF2EEEC3FF5EFFD4FF5EFFD4FF4DD4B1FF4CD2AFFF5EFFD4FF32EB
      C4FF04D7BFFB00D3BCFF1ED6C3E1FFFFFF00FFFFFF00FFFFFF00FFFFFF0025BF
      F9FF00ADF3FF71E1FCFF6DDBF5FF357384FF4896AAFF71E1FCFF0F95E3FF058E
      DBFF5BFBD4FF00D9BEFFFFFFFF00FFFFFF00FFFFFF00EDEDED97E3E3E3FFF4F4
      F4FFF0EFEBFFF4F4F4FFCFCEE3FF3938AEFF9596DAFFF4F4F4FFF4F4F4FFF4F4
      F4FFEDEDEDFFE3E3E3FFFFFFFF00FFFFFF00D5D5D5FFAEAEAEFFD6D9DEFFCA9D
      49FFCB9F4FFFCB9F4FFFCB9F4FFFCB9F4FFFCB9F4FFFCB9F4FFFCB9F4FFFCB9F
      4FFFCB9F4FFFCB9F4FFFC89D4CFFFEFEFD02FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004AF8D7DC00F5C9FF09EBC0FF5EFFD4FF5EFFD4FF5EFFD4FF56FBD0FF00E0
      C0FF1FE0C6E000D8BEFF00D5BDFFCDF5F132FFFFFF00FFFFFF00FFFFFF00FFFF
      FF002DC1F9FD00AEF5FF70E0FBFF71E1FCFF285A68FF4FC8F0FF0599E4FF008E
      E1FF0088DDFF00D7BFFFD1F7F32EFFFFFF00FFFFFF00EFEFEF97E6E6E6FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFECECECFFE6E6E6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3A6
      55FFD3A656FFD3A656FFD3A656FFD3A656FFD3A656FFD3A656FFD3A656FFD3A6
      56FFD3A656FFD2A353FFE1BF7DDDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0098FBE87109F6CAFF00F1C6FF57FBD0FF5EFFD4FF00E7C2FF3DEA
      D0C200E1C1FF00DDC0FF3DE2CDC2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0036C3F9F800B0F6FF6DDEFBFF5AD1F5FF009FECFF009BE7FF0094
      E5FF008EE1FF2ADEC8D59DEEE562FFFFFF00FFFFFF00F1F1F197E8E8E8FF9AC3
      E2FF9AC3E2FF9AC3E2FF9AC3E2FF9AC3E2FF9AC3E2FF9AC3E2FF9AC3E2FF9AC3
      E2FFC5D8E7FFE8E8E8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FC04FEFEFD03FEFEFD03FEFEFD03FEFEFD03FEFEFD03FEFEFD03FEFEFD03FEFE
      FD03FEFEFD03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ECFEFB142CF7D0FF00F4C8FF00EAC0FF37F0D1C800E9
      C4FF48EDD3B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0040C7F9ED00B1F7FF00ABF3FF0CAEEDF300A0ECFF00E3
      C2FF00DDC0FF00D8BEFF1DD8C3E2FFFFFF00FFFFFF00F2F2F297EBEBEBFF168A
      DDFF168ADDFF168ADDFF168ADDFF168ADDFF168ADDFF168ADDFF168ADDFF168A
      DDFF59A9E3FFEAEAEAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043F8D5E800F5C8FF00F2C7FF00EE
      C6FFA5F7EA5AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0049C9FADF1DB9F7E200ABF3FF00C4DCFFA7F5
      E95882EEE07D00D8BEFF25D9C5DAFFFFFF00FFFFFF00F3F3F397ECECECFF47AF
      F0FF46AFF0FF46AFF0FF46AFF0FF46AFF0FF46AFF0FF46AFF0FF46AFF0FF7F7F
      7FFF757575FF969696B4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009EFBEA6E05F6CAFF00F3
      C8FFC4FBF13BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0054CDFBCC05B3F7FF97EBEF68FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F397EDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6969
      69FF898989B4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2FEF81F78FA
      E288FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5F58DEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF7D7D
      7DB4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD05F8F8F813F2F2F223EEEE
      EE2DEBEBEB37EBEBEB38E3E3E34CE3E3E34CE3E3E34CE5E5E547EBEBEB37EBEB
      EB36F1F1F125F6F6F619FBFBFB0BFFFFFF00FDFDFD05F8F8F813F2F2F223EEEE
      EE2DEBEBEB37EBEBEB38E3E3E34CE3E3E34CE3E3E34CE5E5E547EBEBEB37EBEB
      EB36F1F1F125F6F6F619FBFBFB0BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00ECECEC33DBDBDB63D1D1D17FC8C8
      C899C5C5C5A2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB1C8C8
      C899CCCCCC8ED4D4D476E3E3E34EFBFBFB0BECECEC33DBDBDB63D1D1D17FC8C8
      C899C5C5C5A2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB1C8C8
      C899CCCCCC8ED4D4D476E3E3E34EFBFBFB0BFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE7AFAFAFDEB1B1B1D8B2B2
      B2D7B9B9B9C4C0C0C0B0CDCDCD8AF9F9F910FFFFFF00FFFFFF00FFFFFF000087
      DDFF2296DFDFFDFEFE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8D4EF5E0087
      DDFFD0E8F830FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000087
      DDFF2296DFDFFDFEFE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8D4EF5E0087
      DDFFD0E8F830FFFFFF00FFFFFF00FFFFFF00E8E8E840BCBCBCBAB0B0B0DDAAAA
      AAEDA8A8A8F1A5A5A5FAA5A5A5FCA5A5A5FCA5A5A5FCA5A5A5FBA8A8A8F1A9A9
      A9EFAFAFAFDEB9B9B9C3D8D8D86BFFFFFF00FFFFFF00FFFFFF00FFFFFF008BC8
      EC7E0089DEFF64B2E4A6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299A
      E2D6008ADFFF008CE0FF36A5E7C9F8FBFE07B6DEF649008EE1FF008DE0FF008B
      DFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299A
      E2D6008ADFFF008CE0FF36A5E7C9F8FBFE07B6DEF649008EE1FF72BDE9FF71BC
      E9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A2D2B489FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000093
      E4FF008FE2FF008BDFFF0B8CDEF4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080C5
      EF7F008FE2FF0092E3FF0093E4FF0094E5FF0094E5FF0094E5FF0092E4FF0090
      E2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080C5
      EF7F008FE2FF0092E3FF0093E4FF0094E5FF59B7EAFFF5F5F5FFF5F5F5FF1D9C
      E5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002FB466FF31B567FF30B467FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000099
      E8FF0094E5FF79E0FBFF008CE0FF0088DDFFDBEEFA24FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8EE
      FA270094E5FF0097E7FF0099E8FF009AE9FF009AE9FF0099E8FF0098E7FF0095
      E6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8EE
      FA270094E5FF0097E7FF0099E8FF009AE9FFF5F5F5FFF5F5F5FFF5F5F5FF0095
      E6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFF0
      DF392DBA6EFF2DBB6EFF2DBB6EFF2DBB6EFF2DBA6EFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0074CFF78B28B1F0D7009F
      ECFF68DAF9FF71E1FCFF71E1FCFF219FE6FF0089DEFF6FBBEB90FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECF7
      FD130099E8FF009CEAFF009FEBFF00A0ECFF00A0ECFF009FECFF009DEBFF009A
      E9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECF7
      FD130099E8FF009CEAFF009EEBFF00A0ECFFF5F5F5FFF5F5F5FFF5F5F5FF009A
      E9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005CCF96C22AC1
      76FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006BD2FA9400ADF4FF00A9F2FF3FC0
      EFFF62C7DFFF67CFE9FF57B1C8FF71E1FCFF5EC5F2FF008ADFFF138FDFECFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0010A0
      E9EF009EEBFF00A1EDFF00A4EFFF00A5F0FF00A6F0FF00A5EFFF00A2EEFF009F
      ECFFCBEBFA34FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0010A0
      E9EF009EEBFF00A1EDFF00A4EFFF00A5F0FFF5F5F5FFF5F5F5FFF5F5F5FF0AA3
      ECFFCBEBFA34FFFFFF00FFFFFF00FFFFFF00FFFFFF0026C77BFF25C77CFF25C7
      7CFF25C77CFF23C67BFF6BDFA6FF22C57AFF25C77CFF25C77CFF25C77CFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0041C9FBCA00B3F8FF00ADF4FF71E1
      FCFF6EDCF6FF4693A7FF2B6170FF3C8091FF71E1FCFF78DEFAFF008CE0FF0087
      DDFFE7F3FB18FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000E9EE9F1009E
      EBFF00A2EEFF00A6F0FF00A9F2FF00ABF3FF00ABF3FF00AAF2FF00A7F1FF00A4
      EEFF009FECFFC4E8FA3BFFFFFF00FFFFFF00FFFFFF00FFFFFF000E9EE9F1009E
      EBFF00A2EEFF00A6F0FF00A9F2FF00ABF3FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FF0FA5ECFFC4E7FA3BFFFFFF00FFFFFF003CD38EFF22CC82FF22CC82FF22CC
      82FF4CD898FFDFF7ED27FFFFFF005FDDA3F81ECA7FFF22CC82FF22CC82FF23CC
      82FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABE7FD5B0FB8F9FF00AF
      F6FF64D7F8FF71E1FCFF6FDEF8FF22515EFF336F7FFF70E0FBFF71E1FCFF1899
      E4FF0089DEFFAFD9F450FFFFFF00FFFFFF00FFFFFF000B9AE7F4009BE9FF00A1
      EDFF00A6F0FF00AAF3FF00AEF5FF00B1F6FF00B1F7FF00AFF6FF00ACF3FF00A7
      F1FF00A2EEFF009DEAFFBBE3F844FFFFFF00FFFFFF000B9AE7F4009BE9FF00A1
      EDFF00A6F0FF00AAF3FF00AEF5FF00B1F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FF12A4EBFFBBE3F844FFFFFF00FFFFFF0048DA9AFF1BCE84FF6DE6
      ADFFFFFFFF00FFFFFF00FFFFFF00FFFFFF005EE0A6EC1ACE84FF1FD087FF1FD0
      87FF1FD087FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4FCFE0B30C2
      F9FF00B1F7FF37BDEFFF71E1FCFF71E1FCFF387889FF4692A5FF61C3DBFF3CBC
      EDFF048FE1FB008ADFFF1E95E1E1FFFFFF00B6DFF74927AAECFF27AEEEFF0FA9
      EFFF00A8F1FF00ADF5FF00B2F7FF00B6FAFF00B6FAFF00B4F8FF00AFF6FF00AA
      F2FF22B2F1FF26AFEFFF20A7EBE7FFFFFF00B6DFF74927AAECFF27AEEEFF0FA9
      EFFF00A8F1FF00ADF5FF00B2F7FF00B6FAFFF5F5F5FFF5F5F5FFE9F1F5FFA3DC
      F4FF7ED0F3FF3BB6F0FF20A7EBE7FFFFFF00FFFFFF00FFFFFF0059DFA7DCFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005EE2AAE017D288FF1ED4
      8BFF1ED48BFF1ED48BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0049CAFADC00B3F8FF0BACEEFF71E1FCFF71E1FCFF1B434EFF67DAF8FF0099
      E8FF1FA1E8E00090E2FF008BE0FFCDE7F832FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFEFE0240C2F6EC00B4F9FF00BAFCFF00BBFDFF0FBAFAFFAEE6FC57FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFEFE0240C2F6EC00B4F9FF00BAFCFFF5F5F5FF3DC6F9FFAEE6FC57FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0064E4B0D114D5
      8BFF1CD78FFF1CD78FFF1CD78FFFFCFEFD03FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0098E1FC7109B6F8FF00AEF5FF69DBF9FF71E1FCFF00A2EDFF3DB5
      EFC2009AE9FF0096E6FF3DABE9C2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0016BAF9FF00B8FBFF00BAFCFF75D7FB9FFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0016BAF9FF00B8FBFFF4F4F5FF75D7FB9FFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006CE7
      B6C012D78EFF1BD992FF47E2A4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ECF9FE142BC0F9FF00B1F7FF00A7EEFF37BAF4C800A4
      EFFF48BAF1B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0075D4F9A300B4F8FF12B9F9FFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0075D4F9A300B4F8FF47C7F8FFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0075E9BCAC60E8AFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043C8FAE800B2F8FF00AEF5FF00AA
      F2FFA5DFF95AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000EB3F6FF75D3F9A7FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000EB3F6FF75D3F9A7FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009EE3FC6E05B5F8FF00AF
      F6FFC4EBFC3BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0082D5F884FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0082D5F884FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2F6FE1F78D7
      FB88FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD03F8F8F812F2F2
      F222EEEEEE2FEBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB36F1F1
      F125F7F7F716FCFCFC08FFFFFF00FFFFFF00FDFDFD05F8F8F813F2F2F223EEEE
      EE2DEBEBEB37EBEBEB38E3E3E34CE3E3E34CE3E3E34CE5E5E547EBEBEB37EBEB
      EB36F1F1F125F6F6F619FBFBFB0BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD05F8F8F813F2F2F223EEEE
      EE2DEBEBEB37EBEBEB38E3E3E34CE3E3E34CE3E3E34CE5E5E547EBEBEB37EBEB
      EB36F1F1F125F6F6F619FBFBFB0BFFFFFF00FFFFFF00EEEEEE2ED8D8D86BB5A5
      84DEB59044FEBA9342FFBD9545FFBF9646FFBE9645FFBC9443FFB89142FEB4A4
      82E2D3D3D37BE4E4E44AE7E1D342F7F3EA1CECECEC33DBDBDB63D1D1D17FC8C8
      C899C5C5C5A2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB1C8C8
      C899CCCCCC8ED4D4D476E3E3E34EFBFBFB0BFCFCFC08F6F6F617F1F1F125EBEB
      EB36EBEBEB37E4E4E44AE3E3E34CE3E3E34CE3E3E34CE3E3E34CE9E9E93BEBEB
      EB37F0F0F02AF3F3F31FF9F9F90FFFFFFF00ECECEC33DBDBDB63D1D1D17FC8C8
      C899C5C5C5A2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB2BFBFBFB1C8C8
      C899CCCCCC8ED4D4D476E3E3E34EFBFBFB0BFFFFFF00C3AA72B0B08938FFB68F
      3EFFBB9443FFC09848FFC49B4BFFC79D4DFFC69C4CFFC29A49FFBE9645FFB991
      40FFB38C3BFFBFA569B9BB9343FFF4E9D346FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F2F223D0D0D0CDD3D3D4F5D5D5
      D6F8D6D6D6F9D7D7D7F9D7D7D7FBD7D7D7FCD6D6D7FCD5D5D6FAD5D5D5F9D3D3
      D3F9CCCCCCC7E2E2E251ECECEC35FDFDFD04FFFFFF00FFFFFF00FFFFFF000087
      DDFF2296DFDFFDFEFE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8D4EF5E0087
      DDFFD0E8F830FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD8839F9B38C3BFFB992
      41FFC09747FFC69D4DFFCBA151FFCEA353FFCDA252FFC99F4FFFC29B4CFFB99E
      68FFB58F3FFFB78F3FFFE7C98FCEFFFFFF00FFFFFF00FFFFFF00E9DEC846AD87
      37FDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDBDBFFDDDDDEFFE0E0
      E0FFE2E2E2FFE3E3E3FFE3E3E4FFE3E3E4FFE3E3E3FFE1E1E2FFDFDFE0FFDDDD
      DDFFDADADAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00299A
      E2D6E4EDF3FF0990E1FF36A5E7C9F8FBFE07B6DEF649008EE1FF72BDE9FF71BC
      E9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5D9BF51B58E3DFFBC94
      43FFC39A4AFFCBA050FFD1A656FFD5A95AFFD3A858FFC7AD7BFFBCBBBBFFC4B9
      A3FFBCBCBCFFCCB482FFFFFFFF00FFFFFF00FFFFFF00CAAD73B8B68F3FFFD7BF
      919FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDEFFD7D5D3FFDAD7
      D5FFDBD9D7FFDDDAD8FFDDDBD9FFDDDBD9FFE0DEDDFF484848FFE2E2E3FFE0E0
      E0FFDCDCDDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080C5
      EF7FF5F5F5FFF5F5F5FFD5E8F2FF0295E5FF59B7EAFFF5F5F5FFF5F5F5FF1D9C
      E5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3BC8BA4BD95
      44FFC49B4BFFCCA151FFD3A858FFDAAE5EFFD7AB5BFFC6C6C6FFDAC399FFD7BF
      90FFD8C295FFC6C6C6FFFFFFFF00FFFFFF00FBF8F311BE9645FFBF9747FFE9DB
      C059E5D6B860FFFFFF00FFFFFF00F9F9F91DD5D5D5FFDCDCDCFFE1E1E1FFE3E3
      E3FFE3E3E3FFE0E0E0FFDADADAFFE8E8E885FFFFFF00E0E0E0FFB7AB9DFFB7AB
      9DFFB7AC9EFFB8AC9EFFB8AC9FFFB8AC9FFFB8AC9EFFA1CFE8FFBCE2F3FF8AD1
      EEFFDFDFDFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8EE
      FA27BDDFF1FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF0095
      E6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F3
      EA1EC59E51FFE3C07BFFFFD796FFFFD796FFFFD796FFCECECEFFE0CDA7FFE4D6
      B7DDFDFDFD92D1D1D1FFFFFFFF00FFFFFF00FFFFFF00C69D4DFFC99F4FFFC79D
      4DFFCCA65EF9FFFFFF00CACACAFCD8D8D8CFD9D9D9FFE0E0E0FFE6E6E6FFE9E9
      E9FFE8E8E8FFE5E5E5FFDFDFDFFFE6E6E69FFFFFFF00E2E2E2FFE5E5E5FFE8E8
      E8FFEAEAEAFFEBEBEBFFECECECFFECECECFFEBEBEBFF96CEEEFF69C6F3FF58C0
      F1FF93CDE4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECF7
      FD1369C0EDFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF009A
      E9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5ECDA70C0DCF3FFC0DCF3FFC0DCF3FFD1DCE5FDD8D8D8E7F3F3
      F382D7D7D7ECECECEC8AFFFFFF00FFFFFF00E3CFA77ECEA353FFD2A657FFCFA4
      54FFC99E4EFFF4EDE02CFFFFFF00D8D8D8F2DBDBDBFF0FA2EBFFE4E8E9FF00A1
      EDFFEBEBEBFF00A5EFFFE1E1E1FFE7E7E79FFFFFFF00E3E3E4FF957737FF885C
      20FF885C20FFB2A56CFFEFEFEFFFEFEFEFFFEEEEEEFFD1E5EEFF2AB3E9FF32B5
      EAFF3CB8ECFFF0F9FD12FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0010A0
      E9EFB5DEF2FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF0AA3
      ECFFCBEBFA34FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B0D3EFFFCDE2F5FFB5D5F0FFFFFFFF00F7F7F736EEEE
      EE9DF8F8F830FFFFFF00FFFFFF00FFFFFF00CA9F4FFFD3A757FFDAAD5EFFD4A8
      59FFCBA151FFF9F5ED1CFFFFFF00F5F5F537DADADAFFE2E2E2FFE7E7E7FFEBEB
      EBFFEAEAEAFFE6E6E6FFE0E0E0FFE7E7E79FFFFFFF00E5E5E5FFBBB27CFFA98E
      4FFFAB9154FFBDB480FFF0F0F0FFF0F0F0FFEFEFEFFFEDEDEEFF98D4F1FF32B5
      EAFF16ADE6FF1DAFE7FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000E9EE9F1BDE1
      F2FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FF0FA5ECFFC4E7FA3BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D7E8F7FDD7E8F7FFD7E8F7FFF4F8FC3DFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C99E4EFFD0A555FFD5A95AFFD1A6
      56FFCAA050FFFFFFFF00FFFFFF00F5F5F537D7D7D7FFDEDEDEFFE3E3E3FFE6E6
      E6FFE6E6E6FFE2E2E2FFDDDDDDFFE6E6E69FFFFFFF00E5E5E6FFC9C096FFA376
      26FFA6792AFFCAC299FFF2F2F2FFF2F2F2FFF0F0F0FFEEEEEEFFEBEBECFF6EC7
      F3FF21B0E8FFC7D8E0FF2B2BA0E7FFFFFF00FFFFFF000B9AE7F4C7E4F2FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FF12A4EBFFBBE3F844FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4F0F96BC2DCF3FFC2DCF3FFC2DCF3FFC2DCF3FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9A056FDCA9F4FFFCCA152FFCAA0
      50FFD5B477DAFFFFFF00FFFFFF00FFFFFF00F4F4F43EF6F6F63FF7F7F73FF7F7
      F73FF7F7F73FF7F7F73FF5F5F53FFFFFFF00FFFFFF00E6E6E6FFD3CDABFFD0C8
      A3FFD2CBA9FFD6D0B1FFE2DEDAFFD3CDC5FFD2CCC4FFD0CAC2FFDAD6D1FFE9E9
      E9FFA3A3BEFF12129AFF6A6ACEABFFFFFF00B6DFF74927AAECFF5FC2F1FF8ED3
      F2FFC6E6F4FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFE9F1F5FFA3DC
      F4FF7ED0F3FF3BB6F0FF20A7EBE7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ACCFEDFFADD1EFFFADD1EFFFADD1EFFFADD1EFFFABAEB766FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCC18FB5CDA760FAEBDA
      BC6CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E6E6FFEAEAEAFFEDED
      EDFFEFEFF0FFF2F2F2FFF3F3F3FFF3F3F3FFF1F1F1FFEFEFEFFFECECECFFE9E9
      E9FFCCCCDFFFD1D1EF39FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFEFE0240C2F6ECF4F4F5FFF5F5F5FFF5F5F5FF3DC6F9FFAEE6FC57FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F6F70C99C4EBFF99C4EBFF99C4EBFF99C4EBFF98C3E9FF2A3349FEFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A2863CFF67967FFFAB85
      34FFAB8534FFAB8534FFAB8534FFAB8534FFAB8534FFAB8534FFAB8534FFAB85
      34FFAB8534FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0047C7F8FFF5F5F5FFF4F4F5FF75D7FB9FFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCC2CC5140577BFF84B8E6FF547095FF2F3B53FF2B364DFF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFB36EFE88A98FFFD0A6
      58FFD0A658FFD0A658FFD0A658FFD0A658FFD0A658FFD0A658FFD0A658FFD0A6
      58FFDAB771F6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0075D4F9A3F4F4F5FF47C7F8FFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01304262FF2A3349FF2C3851FF2C3851FF2C3851FF363F55F5FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0044C2F5FF75D3F9A7FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E7EA20353D51FF2D3B55FF2D3B55FF4F5A6EE1FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0082D5F884FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD05F8F8F813F2F2F223EEEE
      EE2DEBEBEB37EBEBEB38E3E3E34CE3E3E34CE3E3E34CE5E5E547EBEBEB37EBEB
      EB36F1F1F125F6F6F619FBFBFB0BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01F9F9F910F2F2
      F222ECECEC33EBEBEB37E4E4E44AE3E3E34CE3E3E34CE9E9E93DEBEBEB37F0F0
      F028F6F6F619FBFBFB09FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00ECECEC33DBDBDB63C7C7C7A8BEBE
      BEC3BCBCBCCAB8B8B8D5B8B8B8D5B8B8B8D5B8B8B8D5B8B8B8D5B9B9B9D4BEBE
      BEC3C1C1C1BAD3D3D379E3E3E34EFBFBFB0BCACACA92B6B6B6CAAEAEAEE1A8A8
      A8F1A8A8A8F3A5A5A5FBA5A5A5FCA5A5A5FCA5A5A5FCA5A5A5FBA7A7A7F6A8AC
      B2EDAEB0B5DDB4B4B4D2C4C4C4A4FCFCFC06FFFFFF00F9F9F910DDDDDD5DD1D1
      D180D3D3D3E4D7D7D7FDC1C1C1FFADADADFFA4A4A4FFAEAEAEFEB8B8B8F6C4C4
      C4B1D4D4D477E5E5E547EEE9DF30F6F1E720DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE7AFAFAFDEB1B1B1D8B2B2
      B2D7B9B9B9C4C0C0C0B0BBB3A1BEF6F4F21BFFFFFF00FFFFFF00C3C3C3FFB391
      48FFB18A3AFFB18A3AFF1D9BD6FF5398ABFF1A99D5FF679695FF6ABDE4FF158D
      C8FFC3C3C3FFD3D3D3B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD04FDFDFD05FDFDFD05FDFDFD05FDFDFD05FDFCFC05AA82
      30FFBA9141FFEFE8DB3CFFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB75ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFF9B9B9BFCE1D9C54BB58E3DFFD3AB62ECFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC04BEBDB854948154CA987A36EE967B3EE49C927B9CEBEBEA1AFFFF
      FF00FFFFFF00CDBB9488B89140FFDFC28DACFFFFFF00FFFFFF00C4C4C4FFD8D8
      D8FFDFDFDFFFE3E3E3FF20B6EBFF74B8DFFF2FA6E3FF0EA8EBFF0B8CC9FF1CAD
      E3FF8DB4CAFFD4D4D4B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A68130FFB690
      3EFFC79C4CFFE7C893ABFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFF9C9992FFB18B3AFFCFA657FFFEFCFA08FFFFFF00FFFFFF00FFFFFF00D0D0
      CE399E7A28FE9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF8FD267FF8ABA
      82C3DAD6C940B58E3DFFD6AF64FFFFFFFF00FFFFFF00FFFFFF00CACACAFFCBB6
      9EFFBB905EFFBE9564FFCAAC88FFB58347FFB48247FF9CBAC5FF07AFECFFA1BD
      CDFFCACACAFFD8D8D8B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A37F2EFFB58E3CFFC69B
      4BFFEFD392FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFD0CE
      CDFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFFB3B2B1FFB4B4B4FFB7B7
      B7FFAE8A3EFFC89E4EFFF9F1E331FFFFFF00FFFFFF00FFFFFF00C4C3C04A9F7B
      29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FFAFA58FFFB4B4B4FFACC2
      ABFFB18B3BFFCDA354FFFDFAF60FFFFFFF00FFFFFF00FFFFFF00D0D0D0FFDEDE
      DEFFE5E5E5FFEAEAEAFFECECECFFE9E9E9FFE4E4E4FFDCDCDCFFD0D0D0FFD0D0
      D0FFD0D0D0FFDCDCDCB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A68436F1B38C3AFFC29A4AFFE7C8
      84FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBFBC
      B9FFC4C2BFFFCDCCCBFFC0BFBEFFB0AFAFFFBDBDBDFFBCBCBCFFCBCBCAFFC1C1
      C0FFBDBDBDFFF2EAD957FFFFFF00FFFFFF00FFFFFF00F3F3F30E9F7B29FF9F7B
      29FF9F7B29FFA17D2BFFA27E2EFFA37F2EFFBDBDBDFFBAB6ACFFB5E5B4FFB4CB
      B4FFBDBDBDFF9AB38BB0FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D5D5FFBF96
      49FFB89040FFB89040FFB89040FFB89040FFB89040FFB89040FFD4D2D0FFD5D5
      D5FFD5D5D5FFE0E0E0B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
      D691B4B4B4FFB4B4B4FFB4B4B4FCC4B490A9B18937FFC09848FFD7B064FFFEFC
      FA08FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECEBEB67ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFB1B1B1FFC5C5C5FFCDCDCDFFD6D6D6FFE0E0
      E0FFBDBDBDFFCCCCCCDDFFFFFF00FFFFFF00FFFFFF00988D70A99F7B29FFA27E
      2DFFA68333FFA98637FFAB8839FFAFB27BFFC5C5C5FFBBE1A5FFC4C18EFFBAF1
      AFFFBEC7BAFFAED9ACFFF5F5F40CFFFFFF00FFFFFF00FFFFFF00D9D9D9FFD9D9
      D9FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFB5AF
      A5FFD9D9D9FFE3E3E3B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00B8B8B8FFB9B9
      B9FFB7B7B7FFB6B6B6FFB8B8B8FFB9B9B9FFB8B7B6FFCD9F4CFFF5E9D449FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFB8B8B8FFCCCCCCFFCCCCCCFFD6D6D6FFE0E0
      E0FFBCBCBCFFD2D2D2FFFFFFFF00FFFFFF00FEFEFE019F7B29FFA48130FFAA86
      37FFAE8B3DFFB18F42FFA3B75BFFAFE0AEFFC7C0B2FFCBBC8EFFCDB78AFFCEB9
      8DFFC0B294FFCAC3B5FFBEBCB854FFFFFF00FFFFFF00FFFFFF00DDDDDDFFDDDD
      DDFFC7D3E0FF0C8BE8FFDADCDEFFB2ABA0FFAFA99DFFAFA99DFFAFA99DFFBFBA
      B2FFDDDDDDFFE6E6E6B7FFFFFF00FFFFFF00FFFFFF00BDBDBDFFBDBDBDFFCDCD
      CDFFE9E9E9FFEAEAEAFFEFEFEFFFB9B9B9FFBDBDBDFFD1CBBEC3FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFE4E3
      E3FFC0BEBBFFB1AEABFFB1AEABFFB1AEABFFD1D1D1FFCAC9C7FFDFDEDDFFE2E2
      E1FFD0D0D0FFE9E9E999FFFFFF00FFFFFF00FAFAFA05A48030FFAB8739FFB08E
      41FFB69348FFBA984DFF88FC85FF91F68EFFD1D1D1FFB9F8B8FFE1D4B6FFD8C7
      A1FFD1D1D1FFB59E69FF9C927A9DFFFFFF00FFFFFF00FFFFFF00E1E1E1FFE1E1
      E1FF92C6ECFF0596F1FF8FC3EBFFD3D1CDFFD2D0CCFFD2D0CCFFE1E1E1FFE1E1
      E1FFE1E1E1FFE9E9E9B7FFFFFF00FFFFFF00EFEFEF4DC2C2C2FFC9C9C9FFECEC
      ECFFF4F4F4FFF7F7F7FFFAFAFAFFFAFAFAFFC0C0C0FFC2C2C2FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBAB7
      B5FFBAB7B5FFBFBCBAFFBCBAB9FFB4B2B1FFC5C4C4FFD6D6D6FFD5D5D5FFD5D5
      D5FFE4E4E3FFFFFFFF00FFFFFF00FFFFFF00FAFAF906A98637FFB08E41FFB795
      49FFBD9B51FFB8AE5FFF88FC85FF88FC85FFC8E7C8FFD5D5D5FFD5D5D5FFD5D5
      D5FFDDD9CFFFA88535FF98A7889FFFFFFF00FFFFFF00FFFFFF00E4E4E4FFE4E4
      E4FF67BEF2FF02A0FAFFACCDEBFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFEBEBEBB7FFFFFF00FFFFFF00D5D5D5D0C9C9C9FFF0F0F0FFF1F1
      F1FFF3F3F3FFF7F7F7FFFAFAFAFFFDFDFDFFCECECEFFC8C8C8FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E4E37FEAEA
      EAFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFC6C6C6FFCECE
      CEFFB7B6B5FFFFFFFF00FFFFFF00FFFFFF00FEFEFE01AD8A3CFFB59347FFBD9B
      51FFC3A25AFFCAA862FF88FC85FF88FC85FF88FC85FF89FB86FFB3D290FFBD9D
      57FFB49246FFAC893BFFB6BBB35FFFFFFF00FFFFFF00FFFFFF00E7E7E7FFE8E8
      E8FFE8E8E8FFCDDCEBFFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE7E7E7FFEDEDEDB7FFFFFF00FFFFFF00D7D7D7DCCBCBCBFFF4F4F4FFEFEF
      EFFFF3F3F3FFF7F7F7FFF9F9F9FFFEFEFEFFD7D7D7FFCACACAFFFEFEFE06FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FEECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF009E8F6EB8B9974CFFC19F
      57FFCAA861FFB8C772FF88FC85FF88FC85FFD5B571FF88FC85FFBDB666FFC09E
      55FFB8954AFFA6A850FFF3F3F30EFFFFFF00FFFFFF00FFFFFF00EAEAEAFF1486
      DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486
      DAFFD7E1E9FFEFEFEFB7FFFFFF00FFFFFF00ECECEC78CFCFCFFFE2E2E2FFFFFF
      FFFFF8F8F8FFF9F9F9FFFEFEFEFFFEFEFEFFCCCCCCFFDBDBDBFFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFDCDBD9FFB8B5B3FFB0ADAAFFB0ADAAFFB0ADAAFFB0ADAAFFB6B4B2FFCACA
      C9FF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE14BB994FFFC4A2
      5AFFBFBB6CFF88FC85FF88FC85FF88FC85FF8DF784FFC4C274FFAECD72FFC2A1
      59FFB4A353FF8BBA85BEFFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECECFF33A2
      EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF7C80
      84FF7F8080FFDDDDDD56FFFFFF00FFFFFF00FFFFFF00DFDFDFFFD1D1D1FFF5F5
      F5FFF9F9F9FFFCFCFCFFFCFCFCFFD5D5D5FFCFCFCFFFDEDEDEEBFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CAC9C8FFBFBC
      BAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBC
      BAFFBEBCB9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6B4AD64BAB2
      62FF96EB7EFFC7C376FFDFBE7EFFDFC886FF88FB84FF88FC85FFC6B268FF96E6
      7AFF87F082F8F9F9F907FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6868
      68FFC7C7C757FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F734E3E3E3FFD3D3
      D3FFD2D2D2FFD1D1D1FFD2D2D2FFD1D1D1FFECECECFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E1DFBACFCD
      CAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCD
      CAFFDCDAD9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBC
      B85795EB7EFF8DF783FFDAB977FFDDBC7BFFD9B876FFCAB970FF8AF984FF87D4
      82E0F6F7F60AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFC1C1
      C157FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE05E4E4
      E4FFEFEFEFFFEAEAEAFFF1F1F1FFE2E2E2BDFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFA
      FA26EDEDECD1E7E6E6FFE3E1E0FFE1DFDEFFE2E0DFFFE5E4E3FFE9E8E7FCF2F2
      F17DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F6F60AA3B4A08185E081EB95EF81FF9FE17DFD88C086C4D6D7D631FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD03F8F8F812F2F2
      F222EEEEEE2FEBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB36F1F1
      F125F7F7F716FCFCFC08FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00F9F9F90FF0F0F029E8E8
      E83FDFDFDF58DFDFDF59D5D5D574D5D5D575D5D5D575D8D8D86BDFDFDF59E2E2
      E251EAEAEA3AF2F2F222FBFBFB0AFFFFFF00FFFFFF00EEEEEE2ED8D8D86BB5A5
      84DEB59044FEBA9342FFBD9545FFBF9646FFBA9347FF473A6BFFB89142FEB4A4
      82E2D3D3D37B6666A2CFF4F4F80EFFFFFF00DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE749498FFCB1B1B1D8B2B2
      B2D7B9B9B9C4C0C0C0B05D5D9BE2F8F8F910DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE749498FFCB1B1B1D8B2B2
      B2D7B9B9B9C4C0C0C0B05D5D9BE2F8F8F910FFFFFF00E1E1E153CCCCCC8ECBCB
      CBFCCBCBCBFDCBCBCBFECBCBCBFECBCBCBFECBCBCBFECBCBCBFECBCBCBFECBCB
      CBFDCBCBCBFBCCCCCC9EECECEC33FFFFFF00FFFFFF00C3AA72B0B08938FFB68F
      3EFFBB9443FFC09848FFC49B4BFFC79D4DFF0B0B81FF0B0B81FF26207AFFB991
      40FF312874FF0B0B81FF0B0B81FFFFFFFF00FFFFFF00FFFFFF00FFFFFF008BC8
      EC7E0089DEFF64B2E4A6FFFFFF00FFFFFF00121284F80B0B81FF121285F8FFFF
      FF00FFFFFF000B0B82FF0B0B81FF2E2E93DAFFFFFF00FFFFFF00FFFFFF008BE7
      DC7E00D3BCFF64DDD1A6FFFFFF00FFFFFF00121284F80B0B81FF121285F8FFFF
      FF00FFFFFF000B0B82FF0B0B81FF2E2E93DAFFFFFF00FFFFFF00C8C8C8FFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFEBEBEB8FFFFFFF00FFFFFF00FFFFFF00AD8839F9B38C3BFFB992
      41FFC09747FFC69D4DFFCBA151FFCEA353FFAC8C6BFF0D0D8AFF0E0E8EFF1110
      8EFF0F0F8EFF0E0E8BFFB5B4DA5EFFFFFF00FFFFFF00FFFFFF00FFFFFF000093
      E4FF008FE2FF008BDFFF0B8CDEF4FFFFFF009898D0820C0C87FF0D0D8AFF1414
      8FF80E0E8CFF0D0D8BFF0C0C87FFC0C0E24FFFFFFF00FFFFFF00FFFFFF0000DB
      BFFF00D8BEFF00D4BDFF0BD2BEF4FFFFFF009898D0820C0C87FF0D0D8AFF1414
      8FF80E0E8CFF0D0D8BFF0C0C87FFC0C0E24FFFFFFF00FFFFFF00C8C8C8FFE0E0
      E0FFD1CFCBFFC1BCB5FFC1BCB5FFC1BCB5FFC1BCB5FFC1BCB5FFC1BCB5FFCECC
      C8FFE0E0E0FFEDEDED8FFFFFFF00FFFFFF00FFFFFF00E5D9BF51B58E3DFFBC94
      43FFC39A4AFFCBA050FFD1A656FFD5A95AFFD3A858FFAE8D6DFF111198FF1212
      9AFF121299FF897068FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000099
      E8FF0094E5FF79E0FBFF008CE0FF0088DDFFDBEDF924989AD583101094FF1111
      96FF111196FF101094FFC0C0E550FFFFFF00FFFFFF00FFFFFF00FFFFFF0000E0
      C1FF00DCBEFF6AFDD7FF00D5BDFF00D1BCFFDBF7F524989AD583101094FF1111
      96FF111196FF101094FFC0C0E550FFFFFF00FFFFFF00FFFFFF00C9C9C9FFE3E3
      E3FFE3E3E3FFADABA8FFACAAA7FFE3E3E3FFE3E3E3FFAFA89DFFAEA89CFFC4C0
      BAFFE3E3E3FFEFEFEF8FFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3BC8BA4BD95
      44FFC49B4BFFCCA151FFD3A858FFDAAE5EFFD7AB5BFF3D338CFF1313A2FF1414
      A4FF1414A3FF3B39AAD8FFFFFF00FFFFFF00FFFFFF0074CFF78B28B1F0D7009F
      ECFF68DAF9FF71E1FCFF71E1FCFF219FE6FF0089DEFF70B5E89012129CFF1313
      9FFF13139FFF19199FF8FFFFFF00FFFFFF00FFFFFF0074F5DF8B28ECCCD700E5
      C2FF56FBD0FF5BF8CEFF5EFED4FF21DDC6FF00D2BCFF70DAD79012129CFF1313
      9FFF13139FFF19199FF8FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9C9FFE5E5
      E5FFE5E5E5FF74716BFF74716BFFE5E5E5FFCBC8C2FFC2BDB5FFC2BDB5FFD1CE
      CAFFE5E5E5FFF0F0F08FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F3
      EA1EC59E51FFE3C07BFFFFD796FFFFD796FF473E99FF1414A3FF1616ABFF8E83
      B2C81616ACFF1414A5FF3636ABD8FFFFFF006BD2FA9400ADF4FF00A9F2FF3FC0
      EFFF62C7DFFF67CFE9FF57B1C8FF71E1FCFF5EC5F2FF13139EFF1414A4FF1515
      A9FF1515A9FF1414A5FF1919A0F8FFFFFF006BF8DF9400F1C7FF00EDC5FF35EE
      C4FF369B81FF5CFBD1FF5CFBD1FF5EFFD4FF59EED5FF13139EFF1414A4FF1515
      A9FF1515A9FF1414A5FF1919A0F8FFFFFF00FFFFFF00FFFFFF00C9C9C9FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFF1F1F18FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5ECDA70C0DCF3FFC0DCF3FF3B3DB5FF1515A7FFB6B6E85EFFFF
      FF00CECEF03E1616A9FF3131B0F6FFFFFF0041C9FBCA00B3F8FF00ADF4FF71E1
      FCFF6EDCF6FF4693A7FF2B6170FF3C8091FF12129AFF1414A3FF1616ABFF1B78
      DAFF8098E09B1616ACFF1414A4FF2424A3EE41F9D6CA00F6C9FF00F1C6FF5EFF
      D4FF5EFFD4FF4ACDABFF44BD9EFF39A388FF12129AFF1414A3FF1616ABFF1BAA
      C3FF80A5DB9B1616ACFF1414A4FF2424A3EEFFFFFF00FFFFFF00CACACAFFE9E9
      E9FFE3E3E1FFDCDBD8FFDCDBD8FFDCDBD8FFDCDBD8FFDCDBD8FFDCDBD8FFE2E1
      E0FFE9E9E9FFF2F2F28FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B0D3EFFFCDE2F5FFB5D5F0FFF3F4FB11FFFFFF00FFFF
      FF00FFFFFF00F5F5FB0CFFFFFF00FFFFFF00FFFFFF00ABE7FD5B0FB8F9FF00AF
      F6FF64D7F8FF71E1FCFF6FDEF8FF22515EFF3B699CFF1414A5FF69B5EEFF1899
      E4FF0089DEFF4F7CD8D11515A6FFDFDFF326FFFFFF00ABFCED5B0FF6CBFF00F2
      C7FF53F9CFFF5EFFD4FF53E5BFFF3AA489FF367990FF1414A5FF5CC9D3FF18DB
      C4FF00D2BCFF4F95CDD11515A6FFDFDFF326FFFFFF00FFFFFF00CBCBCBFFEBEB
      EBFFEBEBEBFF878580FF87847FFFEBEBEBFFEBEBEBFFC8C4BDFFC8C4BDFFD6D4
      D0FFEBEBEBFFF3F3F38FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D7E8F7FDD7E8F7FFD7E8F7FFF4F8FC3DFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4FCFE0B30C2
      F9FF00B1F7FF37BDEFFF71E1FCFF71E1FCFF387889FF4692A5FF61C3DBFF3CBC
      EDFF048FE1FB008ADFFF1E93E0E1FFFFFF00FFFFFF00FFFFFF00F4FEFC0B30F7
      D1FF00F4C8FF2EEEC3FF5EFFD4FF5EFFD4FF4DD4B1FF4CD2AFFF5EFFD4FF32EB
      C4FF04D7BFFB00D3BCFF1ED2C3E1FFFFFF00FFFFFF00FFFFFF00D0D0D0FFECEC
      ECFFECECECFF74716BFF74716BFFECECECFFBDB8AFFFADA69AFFADA69AFFC7C3
      BCFFECECECFFF3F3F38FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4F0F96BC2DCF3FFC2DCF3FFC2DCF3FFC2DCF3FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0049CAFADC00B3F8FF0BACEEFF71E1FCFF71E1FCFF1B434EFF67DAF8FF0099
      E8FF1FA1E8E00090E2FF008BE0FFCDE7F832FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004AF8D7DC00F5C9FF09EBC0FF5EFFD4FF5EFFD4FF5EFFD4FF56FBD0FF00E0
      C0FF1FE0C6E000D8BEFF00D5BDFFCDF5F132FFFFFF00FFFFFF00D5D5D5FFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFF4F4F48FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ACCFEDFFADD1EFFFADD1EFFFADD1EFFFADD1EFFFABAEB766FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0098E1FC7109B6F8FF00AEF5FF69DBF9FF71E1FCFF00A2EDFF3DB5
      EFC2009AE9FF0096E6FF3DABE9C2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0098FBE87109F6CAFF00F1C6FF57FBD0FF5EFFD4FF00E7C2FF3DEA
      D0C200E1C1FF00DDC0FF3DE2CDC2FFFFFF00FFFFFF00FFFFFF00D9D9D9FFEDED
      EDFF1486D9FF1486D9FF1486D9FF1486D9FF1486D9FF1486D9FF1486D9FF1486
      D9FFCBDDEAFFF4F4F48FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F6F70C99C4EBFF99C4EBFF99C4EBFF99C4EBFF98C3E9FF2A3349FEFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ECF9FE142BC0F9FF00B1F7FF00A7EEFF37BAF4C800A4
      EFFF48BAF1B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ECFEFB142CF7D0FF00F4C8FF00EAC0FF37F0D1C800E9
      C4FF48EDD3B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEE2F236DDDDDDFFEDED
      EDFF45ADEEFF45ADEEFF45ADEEFF45ADEEFF45ADEEFF45ADEEFF45ADEEFF7F80
      80FF757575FFEBEBEB33FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCC2CC5140577BFF84B8E6FF547095FF2F3B53FF2B364DFF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043C8FAE800B2F8FF00AEF5FF00AA
      F2FFA5DFF95AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0043F8D5E800F5C8FF00F2C7FF00EE
      C6FFA5F7EA5AFFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F6FB1178AED6FFD9E2
      E8FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6666
      66FFC0C0C0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01304262FF2A3349FF2C3851FF2C3851FF2C3851FF363F55F5FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009EE3FC6E05B5F8FF00AF
      F6FFC4EBFC3BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009EFBEA6E05F6CAFF00F3
      C8FFC4FBF13BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1E1E1FFBDD6
      E7FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBEBE
      BEFFE1E1E1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E7EA20353D51FF2D3B55FF2D3B55FF4F5A6EE1FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2F6FE1F78D7
      FB88FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2FEF81F78FA
      E288FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF97AFD3
      ECDEC9DEECA3EFEFEF9FEFEFEF9FEFEFEF9FEFEFEF9FEFEFEF9FEFEFEF9FEFEF
      EF9FF2F2F275FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE05ECECEC7FECEC
      EC7FECECEC7FECECEC7FECECEC7FECECEC7FECECEC7FECECEC7FECECEC7FECEC
      EC7FECECEC7FEEEEEE6FFFFFFF00FFFFFF00FFFFFF00FEFEFE01F9F9F910F2F2
      F222ECECEC33EBEBEB37E4E4E44AE3E3E34CE3E3E34CE9E9E93DEBEBEB37F0F0
      F028F6F6F619FBFBFB09FFFFFF00FFFFFF00FDFDFD05F8F8F813F2F2F223EEEE
      EE2DEBEBEB37EBEBEB38E3E3E34CE3E3E34CE3E3E34CE5E5E547EBEBEB37EBEB
      EB36F1F1F125F6F6F619FBFBFB0BFFFFFF00FAFAFA0CF3F3F31FEDEDED31EBEB
      EB38E3E3E34CE3E3E34CE3E3E34CDDDDDD5DE2E2E251E3E3E34CE3E3E34CE4E4
      E44AEBEBEB37F1F1F127F6F6F617FDFDFD04FFFFFF00EEEEEE77DCDDDCFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFFFFFFF00FFFFFF00FFFFFF00F9F9F910DDDDDD5DD1D1
      D180D3D3D3E4D7D7D7FDC1C1C1FFADADADFFA4A4A4FF4B4B92FEB8B8B8F6C4C4
      C4B1D4D4D477E4E4E5477D7DB796FFFFFF00ECECEC33DBDBDB63C7C7C7A8BEBE
      BEC3BCBCBCCAB8B8B8D5B8B8B8D5B8B8B8D5B8B8B8D5B8B8B8D5B9B9B9D4BEBE
      BEC3C1C1C1BAD3D3D379E3E3E34EFBFBFB0BF1F1F127E4E4E449DBDBDB64D3D3
      D379D1D1D17FCECECE89C8C8C899C8C8C899C8C8C899C8C8C899D1D1D180D1D1
      D17FD9D9D96ADFDFDF58E9E9E93CF9F9F90FFFFFFF00F0F0F077DFDFDFFF41E1
      A3FF1ADB94FF89CEB0FFC5C1BBFFC5C1BBFFC5C1BBFFC5C1BBFFC5C1BBFFC6C2
      BCFFDFDFDFFFDFDFDFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB75ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFF0F0F81FF0B0B81FF101083FFCDCD
      CDFF9B9B9BFC0B0B82FF0B0B81FF2E2E93DAFFFFFF00FFFFFF00C3C3C3FFC3C3
      C3FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5
      C5FFC3C3C3FFD3D3D3B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BFBFDD46FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F177E1E1E1FFE1E1
      E1FFA7E2CBFF1ADB94FF1ADB94FF28DB99FF72DDB6FFDEDEDDFFDEDEDDFFDFDE
      DDFFE1E1E1FFE1E1E1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFF7171A9FF0C0C87FF0D0D8AFF1313
      8EFF0E0E8CFF0D0D8BFF0C0C87FFC0C0E24FFFFFFF00FFFFFF00C4C4C4FFC4C4
      C4FFBCBAB7FF75A1C9FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBEBD
      BAFFC4C4C4FFD4D4D4B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D8D8EB280B0B81FF0B0B81FF0B0B81FF4F4FA4B7FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F177E4E4E4FFE4E4
      E4FFBBBBB8FF9F9F9AFF9DCCB9FF94E5C5FF3EE0A2FF81DEBBFFE2E2E2FFE3E3
      E2FFE4E4E4FFE4E4E4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFD0CE
      CDFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFF7A78B2FF101094FF1111
      96FF111196FF101094FFC0C0E550FFFFFF00FFFFFF00FFFFFF00CACACAFFCACA
      CAFF59A4E1FF0F96EAFF97B8D6FFB4AFA7FFB3AEA5FFB3AEA5FFB3AEA5FFBBB7
      B2FFCACACAFFD8D8D8B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00363697D20B0B81FF0B0B81FF0B0B81FF0B0B81FF0B0B81FF0B0B81FFD4D6
      E82DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F2F277E6E6E6FFE6E6
      E6FFBDBCBAFFA19F9CFFCAC9C8FFE6E6E6FFBFBAB1FF55DAA4FF90C3A8FFC0BB
      B3FFE6E6E6FFE6E6E6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBFBC
      B9FFC4C2BFFFCDCCCBFFC0BFBEFFB0AFAFFFA9A8A8FFB3B2B1FF12129CFF1313
      9FFF13139FFF19199FF8FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D0D0FFD0D0
      D0FF80B5E0FF10A7F2FFBDC8D4FFADA69AFFABA497FFABA497FFD0D0D0FFD0D0
      D0FFD0D0D0FFDCDCDCB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFD030B0B
      83FF0B0B83FF0B0B83FF0B0B83FF0B0B83FF29C176FF29C176FF29C176FF29C1
      76FF29C176FF29C176FF29C176FF2FC27AF7FFFFFF00F3F3F377E8E8E8FFE8E8
      E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF7CE5BCFFCCE6
      DCFFD6E6E1FFE8E8E8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00ECEBEB67ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FF13139EFF1414A4FF1515
      A9FF1515A9FF1414A5FF1919A0F8FFFFFF00FFFFFF00FFFFFF00D5D5D5FFD5D5
      D5FFACC7DEFF12B4FBFFCBD1D6FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFE0E0E0B7FFFFFF00FFFFFF00FFFFFF00F7F7FB080D0D88FF0D0D
      88FF0D0D88FF0D0D88FF0D0D88FF0D0D88FF1ED891FF1BD890FF1BD890FF1BD8
      90FF1BD890FF1BD890FF1BD890FF3DDE9FF3FFFFFF00F4F4F477E9E9E9FFE7E7
      E7FFE0DFDDFFE0DFDDFFE0DFDDFFE0DFDDFFD5DADCFFE0DFDDFFCAD6DCFF67E0
      B2FF42DDA4FFE9E9E9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFF12129AFF1414A3FF1616ABFFA7A7
      CEFF7373B6FF1616ACFF1414A4FF2424A3EEFFFFFF00FFFFFF00D9D9D9FFD9D9
      D9FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFB5AF
      A5FFD9D9D9FFE3E3E3B7FFFFFF00FFFFFF00FFFFFF000F0F8EFF0F0F8EFF0F0F
      8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F
      8EFF0F0F8EFF0F0F8EFF7F87C28AFFFFFF00FFFFFF00F5F5F577EBEBEBFFEBEB
      EBFFD5D5D4FFC5C4C2FFDCDCDBFFEBEBEBFF0096E6FF0099E8FFC5C1BAFFC7C3
      BCFF89E7C2FFEBEBEBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFE4E3
      E3FFC0BEBBFFB1AEABFFB1AEABFFB1AEABFF8C8AAFFF1414A5FF9593B8FFC0BF
      BDFF9A9A9AFFA4A4D9831515A6FFDFDFF326FFFFFF00FFFFFF00DDDDDDFFDDDD
      DDFFC7D3E0FF0C8BE8FFDADCDEFFB2ABA0FFAFA99DFFAFA99DFFAFA99DFFBFBA
      B2FFDDDDDDFFE6E6E6B7FFFFFF00FFFFFF004848ADC3101094FF101094FF1010
      94FF101094FF101094FF101094FF101094FF101094FF101094FF101094FF1010
      94FF101094FF101094FF101094FFFFFFFF00FFFFFF00F5F5F577ECECECFFECEC
      ECFFC1C0BDFFA4A29EFFCECDCCFF5EB9E9FF00A8F1FF00AEF5FF0CA4ECFFE0DF
      DDFFECECECFFECECECFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBAB7
      B5FFBAB7B5FFBFBCBAFFBCBAB9FFB4B2B1FFB0AEADFFB6B4B2FFBAB7B5FFBAB7
      B5FFBAB7B5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1E1E1FFE1E1
      E1FF92C6ECFF0596F1FF8FC3EBFFD3D1CDFFD2D0CCFFD2D0CCFFE1E1E1FFE1E1
      E1FFE1E1E1FFE9E9E9B7FFFFFF00FFFFFF00121299FF121299FF121299FF1212
      99FF121299FF121299FF121299FF121299FF121299FF121299FF121299FF1212
      99FF121299FF121299FF121299FFA0A0D666FFFFFF00F6F6F677EDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFDAE8EDFF6ACFF5FFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E4E37FEAEA
      EAFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFFB7B6B5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E4FFE4E4
      E4FF67BEF2FF02A0FAFFACCDEBFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFEBEBEBB7FFFFFF00FFFFFF001515A1FF13139FFF13139FFF1313
      9FFF13139FFF13139FFF13139FFF13139FFF13139FFF13139FFF13139FFF1313
      9FFF13139FFF13139FFF13139FFF5F5FBEACFFFFFF00F6F6F677EDEDEDFF78B3
      E0FF78B3E0FF78B3E0FF78B3E0FF78B3E0FF78B3E0FF78B3E0FF78B3E0FF78B3
      E0FFACCDE6FFEDEDEDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FEECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E7FFE8E8
      E8FFE8E8E8FFCDDCEBFFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE7E7E7FFEDEDEDB7FFFFFF00FFFFFF002929B1FF1414A5FF1414A5FF1414
      A5FF1414A5FF1414A5FF1414A5FF1414A5FF1414A5FF1414A5FF1414A5FF1414
      A5FF1414A5FF1414A5FF1414A5FF7373C999FFFFFF00F6F6F677EDEDEDFF178B
      DEFF178BDEFF178BDEFF178BDEFF178BDEFF178BDEFF178BDEFF178BDEFF178B
      DEFF4DA4E2FFEDEDEDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFDCDBD9FFB8B5B3FFB0ADAAFFB0ADAAFFB0ADAAFFB0ADAAFFB6B4B2FFCACA
      C9FF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEAFF1486
      DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486
      DAFFD7E1E9FFEFEFEFB7FFFFFF00FFFFFF002E2EB7FA1616AAFF1616AAFF1616
      AAFF1616AAFF1616AAFF1616AAFF8B8BDCA54343C4FF1616AAFF1616AAFF1616
      AAFF1616AAFF1616AAFF2E2EB8FFE7E7F61AFFFFFF00F6F6F677EDEDEDFF64BD
      F1FF64BDF1FF64BDF1FF64BDF1FF64BDF1FF64BDF1FF64BDF1FF64BDF1FF7E7E
      7EFF747474FFA1A1A1A0FFFFFF00FFFFFF00FFFFFF00FFFFFF00CAC9C8FFBFBC
      BAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBC
      BAFFBEBCB9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECECFF33A2
      EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF7C80
      84FF7F8080FFDDDDDD56FFFFFF00FFFFFF00F4F4FB0C5C5CD5FF1818B0FF1818
      B0FF1818B0FF3C3CC3FFABABE570FFFFFF00FFFFFF006767DAF81818B0FF1818
      B0FF1818B0FF3333BFFF4747C1CFFFFFFF00FFFFFF00F6F6F677EDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6767
      67FF969696A0FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E1DFBACFCD
      CAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCD
      CAFFDCDAD9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6868
      68FFC7C7C757FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B6BD0A75252
      CEE68989DB93FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1D1F1386464
      D3CF4E4ECADBC1C1EB46FFFFFF00FFFFFF00FFFFFF00F8F8F85FF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF8D8D
      8DA0FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFA
      FA26EDEDECD1E7E6E6FFE3E1E0FFE1DFDEFFE2E0DFFFE5E4E3FFE9E8E7FCF2F2
      F17DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFC1C1
      C157FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FDFDFD05F8F8F811F4F4F41EF1F1
      F126EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EDED
      ED31F1F1F125F6F6F617FBFBFB0BFFFFFF00FDFDFD05F8F8F813F2F2F223EEEE
      EE2DEBEBEB37EBEBEB38E3E3E34CE3E3E34CE3E3E34CE5E5E547EBEBEB37EBEB
      EB36F1F1F125F6F6F619FBFBFB0BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE65699C1FC6B9DBAF9AFAFAFDE73739CF31111
      85FE0E0E84FE6D6D9EE7CDCDCD8AF9F9F910E8E8E93D88B2C9D349A2D2FF49A2
      D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2
      D2FF49A2D2FF4DA2D0FDDBDCDD5FF9F9F910ECECEC33DBDBDB63C7C7C7A8BEBE
      BEC3BCBCBCCAB8B8B8D5B8B8B8D5B8B8B8D5B8B8B8D5B8B8B8D5B9B9B9D4BEBE
      BEC3C1C1C1BAD3D3D379E3E3E34EFBFBFB0BFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AED7EF5EFFFFFF00B5DCF1530090E3FF0090E3FF33369ADA0D0D8AFF0E16
      92FF1C2A9CFF0E0E8BFF1A1A8FF1FFFFFF00EDF6FA1849A2D2FFA5C0CEFFA9BF
      CCFFA6BDC9FFAFC5D1FFAAC0CCFF9AB1BDFF4DA3D2FF4CA3D2FF4AA2D2FF49A2
      D2FF49A2D2FF49A2D2FF4BA3D2FCFFFFFF00FFFFFF00FFFFFF00C3C3C3FFC3C3
      C3FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5
      C5FFC3C3C3FFD3D3D3B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4DFF7B7B7BAAFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000095
      E5FF0095E5FF28A5E9D7179EE7E80095E5FF0280D7FF0F0F8FFF101092FF1018
      99FF1B29A2FF101094FF0F0F91FFA8A8D65BD2E8F33F49A2D2FFA4A5A6FF898C
      8DFF7A7C7EFFAEAFB0FF8F9192FF4B4F51FF56A8D5FF55A8D4FF53A7D4FF50A5
      D3FF4CA3D2FF49A2D2FF49A2D2FFFFFFFF00FFFFFF00FFFFFF00C4C4C4FFC4C4
      C4FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBEBD
      BAFFC4C4C4FFD4D4D4B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EEEEF711FFFFFF00FFFFFF00B1B1B278BABABBFFD0D0D1FF4A4A4AFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000099
      E8FF0099E8FF0099E8FF0099E8FF0099E8FF0A40B0FF111196FF12129AFF1121
      A5FF495BBDFF12129CFF121298FF3434A4D8D2E8F33F4CA3D2FFC2C3C4FFB5B6
      B7FFACAEAFFFC9CACAFFB8B9BAFF8D8F91FF60ACD7FF5FACD7FF5DABD6FF59A9
      D5FF55A8D4FF50A5D3FF4BA2D2FFFFFFFF00FFFFFF00FFFFFF00CACACAFFCACA
      CAFF678799FF4FA5D3FFBDC7CCFFB8B3A9FFB7B1A7FFB7B1A7FFB7B1A7FFBEBA
      B3FFCACACAFFD8D8D8B7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007474
      BE911F1FA4F1FFFFFF00989899FFD6D6D5FFDEDEDEFFE8E8E8FFDEDEDEFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3F4FC1CEBF7FD1464C3
      F29B009DEBFF009DEBFF009DEBFF009DEBFF175BC4FF12129CFF1313A2FF2A3B
      B4FF7283D0FF1414A4FF13139FFF5252B8C6D3E8F43F54A7D4FF5AAAD5FF5FAC
      D7FF63AED7FF66AFD8FF68B0D9FF69B1D9FF69B1D9FF68B0D9FF65AFD8FF62AD
      D7FF5EABD6FF58A9D5FF52A6D4FFFFFFFF00FFFFFF00FFFFFF00D0D0D0FFD0D0
      D0FF77B7DCFF64A3CAFFBFCBD1FFD0CECCFFCFCECCFFCFCECCFFD0D0D0FFD0D0
      D0FFD0D0D0FFDCDCDCB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00050584FFEBEBDDFFDFDFDFFFE9E9E9FFF0F0F0FFF4F4F4E2FEFEFE10FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000A1EDFF00A1EDFF00A1
      EDFF00A1EDFF00A1EDFFC4EBFB62FFFFFF00FAFBFD071313A1FF1515A8FF2E3D
      B9FF7380D2FF1616ACFF1414A5FFE1E1F323D5E9F43F5BAAD6FF61ADD7FF66B0
      D8FF6BB2D9FF6EB3DAFF70B4DBFF71B5DBFF71B5DBFF70B4DAFF6DB3DAFF6AB1
      D9FF65AFD8FF60ACD7FF5AAAD5FFFFFFFF00FFFFFF00FFFFFF00D5D5D5FFD5D5
      D5FFCBD4D9FFCAD2D8FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFE0E0E0B7FFFFFF00FFFFFF00FFFFFF00F1F1F1249E9E9EEDDBDB
      DBFF000096FF6565BFFFF2F2F1FFF9F9F980FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007AD5FF85FFFFFF00FFFFFF00FFFFFF00ECF8FD1300A6F0FF00A6F0FF00A6
      F0FF00A6F0FFC2EAFB57FFFFFF00FFFFFF00FFFFFF00A7A7E06E1919AEFF1919
      B4FF1A1AB7FF1818B1FF2F6BD4F6FFFFFF00D6EAF43F62ADD7FF68B0D9FF6DB3
      DAFF72B5DBFF60A3CBFF78B8DCFF3C80ADFF79B8DDFF77B7DCFF75B6DCFF71B5
      DBFF6CB2DAFF67B0D8FF60ADD7FFFFFFFF00FFFFFF00FFFFFF00D9D9D9FFD9D9
      D9FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFB5AF
      A5FFD9D9D9FFE3E3E3B7FFFFFF00FFFFFF00FFFFFF00D4D4D5FFE1E1E1FFEBEB
      EBFF9898DBFFBBBBEB54FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000A8F1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0011AFF2EE00AA
      F2FF00AAF2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006CC6F4A0197A
      E0FF1E7AE1FF81CDF580FFFFFF00FFFFFF00D7EAF53F67B0D9FF6EB3DAFF74B6
      DBFF79B8DDFF5496BFFF2C72A1FF145D8FFF226999FF7FBBDEFF7CBADDFF78B8
      DCFF72B5DBFF6CB2DAFF66AFD8FFFFFFFF00FFFFFF00FFFFFF00DDDDDDFFDDDD
      DDFFA3C7DAFF9EC5DAFFDBDDDDFFDCDBDAFFDBDAD9FFDBDAD9FFDBDAD9FFDCDC
      DBFFDDDDDDFFE6E6E6B7FFFFFF00FFFFFF00FFFFFF00EBEBEBFFF2F2F2FFFBFB
      FC55FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000A8F1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF0099DEFB6600AEF5FF00AE
      F5FF00AEF5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003BC0F7C400AE
      F5FF00AEF5FF02AEF5FDF6FCFE09FFFFFF00D9EBF53F6CB2DAFF73B5DBFF79B8
      DDFF7FBBDEFF5C9BC3FF1F6698FF206899FF1F6798FF85BEDFFF82BCDFFF7DBA
      DEFF78B8DCFF72B5DBFF6AB1D9FFFFFFFF00FFFFFF00FFFFFF00E1E1E1FFE1E1
      E1FF6BB1D9FF6AADD4FFCCD8DFFFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
      E1FFE1E1E1FFE9E9E9B7FFFFFF00FFFFFF00FFFFFF00FDFDFD77FFFFFF00FFFF
      FF00EDD8AE8BEBD7AF87E7D2A696D8BC82CDCBAA61FFDEC99B9CE3D3AD7AE4D1
      AA7A00ABFEFFFFFFFF00FFFFFF00FFFFFF00DBF4FD2400B2F7FF00B2F7FF00B2
      F7FF00B2F7FF33C1F8CCFFFFFF00FFFFFF00FFFFFF00F9FDFE0600B2F7FF00B2
      F7FF00B2F7FF00B2F7FF12B7F7FFFFFFFF00DAEBF53F70B4DBFF77B7DCFF7EBA
      DEFF83BDDFFF63A0C7FF2A71A1FF2C73A3FF2B71A2FF8BC0E1FF87BFE0FF82BC
      DFFF7CBADDFF76B7DCFF6EB3DAFFFFFFFF00FFFFFF00FFFFFF00E4E4E4FFE4E4
      E4FF9BC7E2FF91BDDAFFDBE1E4FFC3BFB7FFC1BCB4FFC1BCB4FFE4E4E4FFE4E4
      E4FFE4E4E4FFEBEBEBB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8AC5DFFD0A655FFC9A050FFC19A48FFBA9443FFB38E3BFFAC8635FFA580
      2FFF00ACFCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF0047C8F9FF32C2F9FF16BC
      FAFF00B6FAFF00B6FAFF05B7FAFA7CD9FC834ECCFBB100B6FAFF00B6FAFF00B6
      FAFF37C4F9FF2EC2F9FF7ED9FB92FFFFFF00DAEBF53F73B5DBFF7AB9DDFF81BC
      DEFF87BFE0FF69A5CBFF357BAAFF387DADFF367CABFF8FC3E2FF8BC1E1FF86BE
      DFFF7FBBDEFF79B8DCFF71B4DBFFFFFFFF00FFFFFF00FFFFFF00E7E7E7FFE8E8
      E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE7E7E7FFEDEDEDB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8AC5DFFD1A656FFCCA252FFC29A49FFB99241FFB48F3CFFAC8736FFA67F
      2DFF7BCDFBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0038C9
      FCC700BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BA
      FCFFF1FBFE0EFFFFFF00FFFFFF00FFFFFF00DCECF63D75B7DCFF7CBADDFF83BD
      DFFF89C0E0FF6EA9CEFF4084B3FF4488B6FF4185B4FF92C4E2FF8DC2E1FF88BF
      E0FF81BCDFFF7AB9DDFF7DBADEFFFFFFFF00FFFFFF00FFFFFF00EAEAEAFF1486
      DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486
      DAFFD7E1E9FFEFEFEFB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFCFB05DBC9
      A177AC8837F9A68130FFA98332FFAA8434FFAA8434FFAA8332FFAE822EFFAF7F
      2BFF9FE9E665FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000BD
      FFFF00BDFFFF00BDFFFF01BEFEFF00BDFFFF00BDFFFF1BC3FDFF00BDFFFF00BD
      FFFF4AD0FEBAFFFFFF00FFFFFF00FFFFFF00FFFFFF008AC0E0FF7EBBDEFF83BD
      DFFF8AC0E1FF71ABD0FF488BB9FF4F92BFFF4A8EBCFF93C4E3FF8EC2E2FF88BF
      E0FF82BCDFFF98C7E4FFB9DAEC80FFFFFF00FFFFFF00FFFFFF00ECECECFF33A2
      EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF7C80
      84FF7F8080FFDDDDDD56FFFFFF00FFFFFF00FFFFFF00E7D8B766CCAF71D0C39F
      52FFC19948FFC19747FFC19747FFC59746FF7CAC78FF82AC75FFC69744FFC696
      43FFC89845FFC39E52FFD0B071C6FFFFFF00FFFFFF00FFFFFF00FFFFFF0059D1
      FCDC29C6FDFFDBF5FE2F66D6FDB100BEFFFF00BEFFFFFDFEFE0280DBFCB93CCA
      FCFFCBF1FE3AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6868
      68FFC7C7C757FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F4E6CC57E9CF9AB9EAD09DB5F3E3C564FDFAF412FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6F8FE1C1BC3FDFF3ECAFCFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFC1C1
      C157FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB0AF6F6
      F619F1F1F126EEEEEF2EEEEEEF2EEEEEEF2EEEEEEF2EEEEEEF2EEEEFF02DF5F5
      F61BFAFAFA0DFEFEFE01FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEF2EDBDDE061B4A4
      83DEB68D39FFBB913AFFBD9340FFBF9441FFC29A46FF9A5801FF9B5904FF9B5A
      03FF9A5908FEE7E9EB41FFFFFF00FFFFFF00DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE65699C1FC6B9DBAF9AFAFAFDE59AD79FCB2B2
      B2D7B9B9B9C4C0C0C0B0CDCDCD8AF9F9F910DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE65699C1FC6B9DBAF9AFAFAFDEABA297E69C6E
      2FFD9D6C2BFBB0A28FD5CDCDCD8AF9F9F910FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01FEFEFE01FEFEFE01FEFEFE01FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1A366B9B08836FFB68F
      3EFFBC9442FFC09848FFC39B4BFFC8A050FF9F5D0AFFA76512FFC99341FFBB7F
      28FFA66511FFA05F0BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AED7EF5EFFFFFF00B5DCF1530090E3FF0293DCFF2EBB6FFF2EBB6FFF3CBE
      78EFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AED7EF5EFFFFFF00B5DCF1530090E3FF0090E3FFBB9D73A5A3630FFFA969
      12FFAC6D17FFA2620EFFAB7732D8FFFFFF00D2D2D27CB9B9B9C3B0B0B0DDACAC
      ACE8AAAAAAEEA9A9A9F0A7A7A7F6A7A7A7F6A7A7A7F6A7A7A7F4A9A9A9EFAAAA
      AAEDAEAEAEE1B4B4B4D1C2C2C2A9F4F4F41DFFFFFF00AB8534FFB38C3BFFBA92
      40FFC09847FFC79D4DFFCCA151FFC08C3AFFB06B16FFB56F19FFD6A25EFFCB90
      44FFB26D17FFAB6712FFE9D7C142FFFFFF00FFFFFF00FFFFFF00FFFFFF000095
      E5FF0095E5FF28A5E9D7179EE7E80FA8BBFF28C47AFF28C47AFF30C77EFF28C4
      7AFF2EC67EF6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000095
      E5FF0095E5FF28A5E9D7179EE7E80095E5FF0493E0FFAB6813FFB06B16FFC78B
      39FFDAB27AFFAE6A15FFA86612FFECDECE34FFFFFF0058B7E9B30097E7FF0097
      E7FF0097E7FF0097E7FF0097E7FF0097E7FF0097E7FF0097E7FF0097E7FF0097
      E7FF0097E7FF0097E7FFD0E8F539FFFFFF00FFFFFF00E8DDC54AB48D3BFFBC94
      44FFC39A4AFFCBA050FFD1A656FFBB7E29FFBA731CFFC17820FFD7A162FFCF92
      48FFBD751EFFB56E19FFD4AD7B92FFFFFF00FFFFFF00FFFFFF00FFFFFF000099
      E8FF0099E8FF0099E8FF009AE6FF23CD84FF22CD83FF2CBFB8FF0099E8FF39D4
      90FF22CD83FF26CD85FAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000099
      E8FF0099E8FF0099E8FF0099E8FF0099E8FF4F8489FFB67019FFBC741DFFCD8C
      3EFFDEB17CFFB9731BFFB26D17FFC29255B7FFFFFF000FAFF2FF0FAFF2FF0FAF
      F2FF0FAFF2FF0FAFF2FF0FAFF2FF0FAFF2FF0FAFF2FF0FAFF2FF0FAFF2FF0FAF
      F2FF0FAFF2FF0FAFF2FF71CEF59FFFFFFF00FFFFFF00FFFFFF00D2BA87AABB93
      41FFC39B4BFFCBA152FFD1A554FFD09949FFC37920FFCD8026FFCA7A1BFFC97A
      1CFFC87C24FFBB731CFFEEDBC346FFFFFF00FFFFFF00E3F4FC1CEBF7FD1464C3
      F29B009DEBFF009DEBFF009DEBFF0CAAD9FF0BAAD8FF009DEBFF009DEBFF009D
      EBFF3ADA98FE1ED48BFF1FD48BFDFFFFFF00FFFFFF00E3F4FC1CEBF7FD1464C3
      F29B009DEBFF009DEBFF009DEBFF009DEBFF4A90A0FFC0771FFFC87C24FFCD83
      2DFFD49750FFC47A22FFBB741DFFD2A772A7FFFFFF00D7D7D7FFDBDBDBFFDFDF
      DFFFE1E1E1FFE3E3E3FFE4E4E4FFE4E4E4FFDED8D1FFE2E2E2FFD4C7B8FFDDDD
      DDFFD3CBC2FFD5D5D5FFE2E2E29FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF9
      F40FC49D51FFE2C17DFFFFD994FFFFDA92FFD28730FFD6872CFFD78526FFD684
      27FFD08228FFD19040FFFFFFFF00FFFFFF00FFFFFF0000A1EDFF00A1EDFF00A1
      EDFF00A1EDFF00A1EDFFC4EBFB62FFFFFF00FCFEFE044CBFF3E700A1EDFF00A1
      EDFF00A1EDFF3ADEA0FF1BD891FF5FE4B0C6FFFFFF0000A1EDFF00A1EDFF00A1
      EDFF00A1EDFF00A1EDFFC4EBFB62FFFFFF00FDFDFD04C97E26FFD2842AFFD289
      34FFD9A160FFCE8127FFC37921FFFBF7F20FFFFFFF00DADADAFFDEDEDEFFE1E1
      E1FF9F5600FFC6A67FFFB17B3CFFDED4C9FFDED4CAFF9F5600FFBC9362FF9F56
      00FF9F5600FFD8D8D8FFE3E3E39FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7ECD86CBDDDF9FFC0DCF3FFBDE1FFFFECA656FFE89438FFE090
      36FFE4A85FF9FFFFFF00FFFFFF00FFFFFF00ECF8FD1300A6F0FF00A6F0FF00A6
      F0FF00A6F0FFC2EAFB57FFFFFF00FFFFFF00FFFFFF00FFFFFF0006A8F0FF00A6
      F0FF00A6F0FF00A6F0FF3FD5BEF6FFFFFF00ECF8FD1300A6F0FF00A6F0FF00A6
      F0FF00A6F0FFC2EAFB57FFFFFF00FFFFFF00FFFFFF00F4E3CD42DC8E36FFE490
      34FFE08D32FFD4862CFF6CA2A3F6FFFFFF00FFFFFF00DCDCDCFFE0E0E0FFDCD4
      CCFF8D9B93FF9F5600FFCBAE8CFFC7A47CFFA35F0EFFC09869FFE5E5E5FFA767
      1BFF9F5600FFD9D9D9FFE4E4E49FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00AED1EFFFCEE2F5FFB0D1EEFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0011AFF2EE00AA
      F2FF00AAF2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006ACDF7A000AA
      F2FF00AAF2FF7FD3F880FFFFFF00FFFFFF00FFFFFF00FFFFFF0011AFF2EE00AA
      F2FF00AAF2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0071CCF0A046A3
      B9FF4EA2B3FF85D3F280FFFFFF00FFFFFF00FFFFFF00DDDDDDFFE1E1E1FF60A5
      C7FFA3D1EDFFB7874DFFDAC9B6FFAE732DFFB17B3AFFA4600FFFE4E1DFFFAB6F
      28FFAE7736FFDADADAFFE5E5E59FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DBEAF7FFD7E8F7FFD7E8F7FFF6FAFD31FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099DEFB6600AEF5FF00AE
      F5FF00AEF5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003BC0F7C400AE
      F5FF00AEF5FF02AEF5FDF6FCFE09FFFFFF00FFFFFF0099DEFB6600AEF5FF00AE
      F5FF00AEF5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003BC0F7C400AE
      F5FF00AEF5FF02AEF5FDF6FCFE09FFFFFF00FFFFFF00DDDDDDFFE1E1E1FFE5E5
      E5FFE8E8E8FFEAEAEAFFECECECFFEDEDEDFFEBEBEBFFE9E9E9FFE6E6E6FFE3E3
      E3FFDFDFDFFFDBDBDBFFE5E4E49FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E8F3FC68C2DBF3FFC2DBF3FFC2DBF3FFC3DDF5FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBF4FD2400B2F7FF00B2F7FF00B2
      F7FF00B2F7FF33C1F8CCFFFFFF00FFFFFF00FFFFFF00F9FDFE0600B2F7FF00B2
      F7FF00B2F7FF00B2F7FF12B7F7FFFFFFFF00DBF4FD2400B2F7FF00B2F7FF00B2
      F7FF00B2F7FF33C1F8CCFFFFFF00FFFFFF00FFFFFF00F9FDFE0600B2F7FF00B2
      F7FF00B2F7FF00B2F7FF12B7F7FFFFFFFF00FFFFFF00B28B3BFFB08A39FFB08A
      39FFB08A39FFB08A39FFB08A39FFB08A39FFB08A39FFB08A39FFB08A39FFB08A
      39FFB08A39FFB08A39FFD0B98A9FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B4D8F6FFADD1EFFFADD1EFFFADD1EFFFB1D6F4FFAAACB463FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0047C8F9FF32C2F9FF16BC
      FAFF00B6FAFF00B6FAFF05B7FAFA7CD9FC834ECCFBB100B6FAFF00B6FAFF00B6
      FAFF37C4F9FF2EC2F9FF7ED9FB92FFFFFF00FFFFFF0047C8F9FF32C2F9FF16BC
      FAFF00B6FAFF00B6FAFF05B7FAFA7CD9FC834ECCFBB100B6FAFF00B6FAFF00B6
      FAFF37C4F9FF2EC2F9FF7ED9FB92FFFFFF00FFFFFF00E0CBA381CDA259FFCDA2
      59FFCDA259FFCDA259FFCDA259FFCDA259FFCDA259FFCDA259FFCDA259FFCDA2
      59FFCDA259FFCEA25AFFF7F3EA1DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A3D1F8FF99C3EBFF99C3EBFF9AC5ECFFA5D4FBFF262E42FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0038C9
      FCC700BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BA
      FCFFF1FBFE0EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0038C9
      FCC700BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BAFCFF00BA
      FCFFF1FBFE0EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C6D04E374B6FFF89C1F0FF506B91FF262F45FF263045FF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000BD
      FFFF00BDFFFF00BDFFFF01BEFEFF00BDFFFF00BDFFFF1BC3FDFF00BDFFFF00BD
      FFFF4AD0FEBAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000BD
      FFFF00BDFFFF00BDFFFF01BEFEFF00BDFFFF00BDFFFF1BC3FDFF00BDFFFF00BD
      FFFF4AD0FEBAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002F4263FF252B3EFF2B3851FF2B3851FF2B3851FF2D384EFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0059D1
      FCDC29C6FDFFDBF5FE2F66D6FDB100BEFFFF00BEFFFFFDFEFE0280DBFCB93CCA
      FCFFCBF1FE3AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0059D1
      FCDC29C6FDFFDBF5FE2F66D6FDB100BEFFFF00BEFFFFFDFEFE0280DBFCB93CCA
      FCFFCBF1FE3AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1F2F411363D4EFF2A3853FF2A3753FF444F65F0FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6F8FE1C1BC3FDFF3ECAFCFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6F8FE1C1BC3FDFF3ECAFCFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD05F8F8F811F4F4F41EF1F1
      F126EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EDED
      ED31F1F1F125F6F6F617FBFBFB0BFFFFFF00FDFDFD05F8F8F811F4F4F41EF1F1
      F126EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EDED
      ED31F1F1F125F6F6F617FBFBFB0BFFFFFF00FDFDFD05F8F8F811F4F4F41EF1F1
      F126EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EDED
      ED31F1F1F125F6F6F617FBFBFB0BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E93D88B2C9D349A2D2FF49A2
      D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF38AE
      78FF3EA996FF4DA2D0FDDBDCDD5FF9F9F910E8E8E93D88B2C9D349A2D2FF49A2
      D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF40A8
      A4FF48A2D1FF4DA2D0FDDBDCDD5FF9F9F910E8E8E93D88B2C9D349A2D2FF49A2
      D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF336CB6FF0E11
      87FF0D0E85FF315FADFDDBDCDD5FF9F9F910FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E1E4EE1E132F7BECAFBAD450FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDF6FA1849A2D2FFA5C0CEFFA9BF
      CCFFA6BDC9FFAFC5D1FFAAC0CCFF9AB1BDFF4DA3D2FF4CA3D2FF49A3CEFF30B7
      6BFF30B76BFF49A2D2FF4BA3D2FCFFFFFF00EDF6FA1849A2D2FFA5C0CEFFA9BF
      CCFFA6BDC9FFAFC5D1FFAAC0CCFF9AB1BDFF4DA3D2FF4CA3D2FF49A2D0FF35B1
      63FF35B066FF49A2D2FF4BA3D2FCFFFFFF00EDF6FA1849A2D2FFA5C0CEFFA9BF
      CCFFA6BDC9FFAFC5D1FFAAC0CCFF9AB1BDFF4DA3D2FF152292FF0D0D8AFF0E16
      92FF1C2A9CFF0E0E8BFF12178EFCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009EABCC62022679FF022477FF022376FF03297DFF022578FFC9CF
      E136FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2E8F33F49A2D2FFA4A5A6FF898C
      8DFF7A7C7EFFAEAFB0FF8F9192FF4B4F51FF56A8D5FF55A8D4FF52A7D1FF2BBF
      74FF2BBF74FF49A2D2FF49A2D2FFFFFFFF00D2E8F33F49A2D2FFA4A5A6FF898C
      8DFF7A7C7EFFAEAFB0FF8F9192FF4B4F51FF56A8D5FF55A8D4FF30B86DFF2FB8
      6BFF2FB86BFF3BAE9AFF49A2D2FFFFFFFF00D2E8F33F49A2D2FFA4A5A6FF898C
      8DFF7A7C7EFFAEAFB0FF8F9192FF4B4F51FF4B90C9FF0F0F8FFF101092FF1018
      99FF1B29A2FF101094FF0F0F91FFA8A8D65BFFFFFF00FFFFFF00FFFFFF005673
      ACAB042D82FF042C80FF042A7FFF03297DFF03287CFF042E83FF03297DFF0225
      78FF032273FCDFE2EC20FFFFFF00FFFFFF00D2E8F33F4CA3D2FFC2C3C4FFB5B6
      B7FFACAEAFFFC9CACAFFB8B9BAFF8D8F91FF2DC488FF2DC488FF2CC487FF26C7
      7CFF26C77CFF2BC387FF2AC387FF89E0B88AD2E8F33F4CA3D2FFC2C3C4FFB5B6
      B7FFACAEAFFFC9CACAFFB8B9BAFF8D8F91FF60ACD7FF3EB99CFF2AC176FF2AC1
      76FF2AC176FF2AC176FF49A4CDFFFFFFFF00D2E8F33F4CA3D2FFC2C3C4FFB5B6
      B7FFACAEAFFFC9CACAFFB8B9BAFF8D8F91FF2C48AAFF111196FF12129AFF1121
      A5FF495BBDFF12129CFF121298FF3434A4D8FFFFFF00FFFFFF0006358BFF0633
      89FF063288FF053186FF052F85FF052E83FF042D82FF063388FF042E83FF0329
      7EFF022578FF012073FFFFFFFF00FFFFFF00D3E8F43F54A7D4FF5AAAD5FF5FAC
      D7FF63AED7FF66AFD8FF68B0D9FF69B1D9FF22CD84FF22CD84FF22CD84FF22CD
      84FF22CD84FF22CD84FF22CD84FF26CE86FFD3E8F43F54A7D4FF5AAAD5FF5FAC
      D7FF63AED7FF66AFD8FF68B0D9FF69B1D9FF69B1D9FF47BCABFF2EC58BFF25C9
      7EFF25C97EFF37BD9CFF3DB7AAFFFFFFFF00D3E8F43F54A7D4FF5AAAD5FF5FAC
      D7FF63AED7FF66AFD8FF68B0D9FF69B1D9FF4463BCFF12129CFF1313A2FF2A3B
      B4FF7283D0FF1414A4FF13139FFF5252B8C6FFFFFF00FFFFFF00083991FF0738
      8FFF07378EFF07368CFF06348BFF063389FF063288FF07378EFF063388FF042E
      83FF032A7EFF022578FFFFFFFF00FFFFFF00D5E9F43F5BAAD6FF61ADD7FF66B0
      D8FF6BB2D9FF6EB3DAFF70B4DBFF71B5DBFF60BBC9FF5FBAC9FF5BBAC6FF1FD3
      8AFF1FD38AFF52B5C6FF4DB2C5FFF6FDFA0BD5E9F43F5BAAD6FF61ADD7FF66B0
      D8FF6BB2D9FF6EB3DAFF70B4DBFF71B5DBFF71B5DBFF70B4DAFF37C79DFF21CF
      85FF21CF85FF4CB7BDFF5AAAD5FFFFFFFF00D5E9F43F5BAAD6FF61ADD7FF66B0
      D8FF6BB2D9FF6EB3DAFF70B4DBFF71B5DBFF6FB1D9FF1313A1FF1515A8FF2E3D
      B9FF7380D2FF1616ACFF1414A5FFE1E1F323FFFFFF00FFFFFF00093E97FF083D
      95FF083C93FF083A92FF073990FF07388FFF07378EFF083C93FF07378EFF0633
      88FF042E83FF032A7EFFFFFFFF00FFFFFF00D6EAF43F62ADD7FF68B0D9FF6DB3
      DAFF72B5DBFF60A3CBFF78B8DCFF3C80ADFF79B8DDFF77B7DCFF72B7D9FF1CD7
      8FFF1CD78FFF67B0D8FF60ADD7FFFFFFFF00D6EAF43F62ADD7FF68B0D9FF6DB3
      DAFF72B5DBFF60A3CBFF78B8DCFF3C80ADFF79B8DDFF77B7DCFF36CCA2FF1ED4
      8BFF1ED48BFF4FBBC0FF60ADD7FFFFFFFF00D6EAF43F62ADD7FF68B0D9FF6DB3
      DAFF72B5DBFF60A3CBFF78B8DCFF3C80ADFF79B8DDFF5D81CEFF1919AEFF1919
      B4FF1A1AB7FF1818B1FF4C69CAFFFFFFFF00FFFFFF00FFFFFF000A439CFF0A42
      9BFF094199FF3964A7FFB6C2D0FF2E59A1FF083C94FF094099FF3F67A7FF0B3A
      8FFF063388FF042E83FFFFFFFF00FFFFFF00D7EAF53F67B0D9FF6EB3DAFF74B6
      DBFF79B8DDFF5496BFFF2C72A1FF145D8FFF226999FF7FBBDEFF79BADBFF1ADA
      92FF1FDB95FF6CB2DAFF66AFD8FFFFFFFF00D7EAF53F67B0D9FF6EB3DAFF74B6
      DBFF79B8DDFF5496BFFF2C72A1FF145D8FFF226999FF7FBBDEFF37CFA6FF1CD7
      90FF1CD790FF53BEC2FF66AFD8FFFFFFFF00D7EAF53F67B0D9FF6EB3DAFF74B6
      DBFF79B8DDFF5496BFFF2C72A1FF145D8FFF226999FF7FBBDEFF7BB9DDFF5D81
      D3FF5D80D5FF6BAFD9FF66AFD8FFFFFFFF00FFFFFF00FFFFFF000B48A2FF587E
      B6FFB9C5D2FFBCC9D5FFC0CCD8FFC4D0DCFF11479DFF7494C3FFC5D1DCFFC0CC
      D8FF8098BDFF063389FFFFFFFF00FFFFFF00D9EBF53F6CB2DAFF73B5DBFF79B8
      DDFF7FBBDEFF5C9BC3FF1F6698FF206899FF1F6798FF85BEDFFF82BCDFFF6FBF
      D2FF75B9DAFF72B5DBFF6AB1D9FFFFFFFF00D9EBF53F6CB2DAFF73B5DBFF79B8
      DDFF7FBBDEFF5C9BC3FF1F6698FF206899FF1F6798FF85BEDFFF5BD2BAFF4DE1
      A6FF4CE1A6FF60BCCCFF6AB1D9FFFFFFFF00D9EBF53F6CB2DAFF73B5DBFF79B8
      DDFF7FBBDEFF5C9BC3FF1F6698FF206899FF1F6798FF85BEDFFF82BCDFFF7DBA
      DEFF78B8DCFF72B5DBFF6AB1D9FFFFFFFF00FFFFFF00D2DAE39EBDCAD6FFC1CD
      D9FFC5D0DCFFC9D4DFFFCDD7E2FFCAD5E1FFA0A8AEFFBEC5CDFFD3DCE7FFCED8
      E3FFC9D3DFFFC3CFDBFFE6EBF148FFFFFF00DAEBF53F70B4DAFF77B7DCFF7EBA
      DEFF83BDDFFF63A0C7FF2A71A1FF2C73A3FF2B71A2FF8BC0E1FF87BFE0FF82BC
      DFFF7CBADDFF76B7DCFF6EB3DAFFFFFFFF00DAEBF53F70B4DAFF77B7DCFF7EBA
      DEFF83BDDFFF63A0C7FF2A71A1FF2C73A3FF2B71A2FF8BC0E1FF87BFE0FF82BC
      DFFF7CBADDFF76B7DCFF6EB3DAFFFFFFFF00DAEBF53F70B4DAFF77B7DCFF7EBA
      DEFF83BDDFFF63A0C7FF2A71A1FF2C73A3FF2B71A2FF8BC0E1FF87BFE0FF82BC
      DFFF7CBADDFF76B7DCFF6EB3DAFFFFFFFF00C4D0DBF3C6D1DDFFCAD5E0FFCED8
      E3FFD2DCE6FFAAC9DFFF5E8CB2FF6784A5FF5CAAD6FF67B0D8FF6BB2D9FFC8DB
      E9FFD6DFEAFFD1DBE5FFCCD6E1FFDAE1E8A7DAEBF53F73B5DBFF7AB9DDFF81BC
      DEFF87BFE0FF69A5CBFF357BAAFF387DADFF367CABFF8FC3E2FF8BC1E1FF86BE
      DFFF7FBBDEFF79B8DCFF71B4DBFFFFFFFF00DAEBF53F73B5DBFF7AB9DDFF81BC
      DEFF87BFE0FF69A5CBFF357BAAFF387DADFF367CABFF8FC3E2FF8BC1E1FF86BE
      DFFF7FBBDEFF79B8DCFF71B4DBFFFFFFFF00DAEBF53F73B5DBFF7AB9DDFF81BC
      DEFF87BFE0FF69A5CBFF357BAAFF387DADFF367CABFF8FC3E2FF8BC1E1FF86BE
      DFFF7FBBDEFF79B8DCFF71B4DBFFFFFFFF00FFFFFF00DBE3EBCAD6E0EAFF979C
      A1FF848788FF65AED6FF52A6D4FF529DCAFF6FB3DAFF4C8FB9FF2A709FFF79B8
      DDFF6DB2DAFFD2DDE9FFDEE6EED2FFFFFF00DCECF63D75B7DCFF7CBADDFF83BD
      DFFF89C0E0FF6EA9CEFF4084B3FF4488B6FF4185B4FF92C4E2FF8DC2E1FF88BF
      E0FF81BCDFFF7AB9DDFF7DBADEFFFFFFFF00DCECF63D75B7DCFF7CBADDFF83BD
      DFFF89C0E0FF6EA9CEFF4084B3FF4488B6FF4185B4FF92C4E2FF8DC2E1FF88BF
      E0FF81BCDFFF7AB9DDFF7DBADEFFFFFFFF00DCECF63D75B7DCFF7CBADDFF83BD
      DFFF89C0E0FF6EA9CEFF4084B3FF4488B6FF4185B4FF92C4E2FF8DC2E1FF88BF
      E0FF81BCDFFF7AB9DDFF7DBADEFFFFFFFF00FFFFFF00FFFFFF00C3DCEC6365AF
      D8FF6FB4DAFF71B4DBFF69B1D9FF62A6CFFF7BB9DDFF609DC5FF357BAAFF87BF
      E0FF75B6DCFFF5F7FA13FFFFFF00FFFFFF00FFFFFF008AC0E0FF7EBBDEFF83BD
      DFFF8AC0E1FF71ABD0FF488BB9FF4F92BFFF4A8EBCFF93C4E3FF8EC2E2FF88BF
      E0FF82BCDFFF98C7E4FFB9DAEC80FFFFFF00FFFFFF008AC0E0FF7EBBDEFF83BD
      DFFF8AC0E1FF71ABD0FF488BB9FF4F92BFFF4A8EBCFF93C4E3FF8EC2E2FF88BF
      E0FF82BCDFFF98C7E4FFB9DAEC80FFFFFF00FFFFFF008AC0E0FF7EBBDEFF83BD
      DFFF8AC0E1FF71ABD0FF488BB9FF4F92BFFF4A8EBCFF93C4E3FF8EC2E2FF88BF
      E0FF82BCDFFF98C7E4FFB9DAEC80FFFFFF00FFFFFF00FFFFFF00CAE3F15776B7
      DCFF2C72A1FF3176A4FF7CB9DDFF71AED5FF93B8D5F5BAD6E88FAFCEE38FC7E0
      EF8FD6E9F457FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFE6F25580BB
      DEFF4789B6FF4D8EBAFF86BEE0FF95C7E3C6FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD05F7F7F715F1F1
      F125EBEBEB36EBEBEB37E3E3E34CE3E3E34CE3E3E34CE8E8E83FEBEBEB37EFEF
      EF2CF4F4F41EFAFAFA0CFFFFFF00FFFFFF00FFFFFF00FBFBFB0BF5F5F51CEFEF
      EF2CEBEBEB37E7E7E743E3E3E34CE3E3E34CE6E6E646EBEBEB37EEEEEE2FF3F3
      F31FFAFAFA0DFFFFFF00FFFFFF00FFFFFF00FDFDFD05F8F8F811F4F4F41EF1F1
      F126EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EDED
      ED31F1F1F125F6F6F617FBFBFB0BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECEC33D9D9D96BCDCD
      CDF4CCCCCCF7CCCCCCFACBCBCBFBCBCBCBFBCBCBCBFBCBCBCBFBCCCCCCF9CCCC
      CCF7CDCDCDF1D8D8D878FCFCFC07FFFFFF00FDFDFD03D8D8D87FC7C7C7C7C2C2
      C2D9C0C0C0E2BEBEBEE8BEBEBEE8BEBEBEE8BEBEBEE8BFBFBFE4C2C2C2DAC7C7
      C7C9D3D3D393FCFCFC08FFFFFF00FFFFFF00E8E8E93D88B2C9D349A2D2FF49A2
      D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF3AAC87FF49A2
      D2FF49A2D2FF4DA2D0FDDBDCDD5FF9F9F910FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8C8C8FFD9D6
      D3FFD1C3B6FFD1C3B6FFC8B7A7FFCEC1B6FFCDC0B4FFCEC1B6FFCEC1B6FFCEC1
      B6FFCEC2B6FFEBEBEB8FFFFFFF00FFFFFF00FFFFFF00DDDDDDFFD8D3CEFFD6CF
      C8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CF
      C8FFDDDDDDFFFFFFFF00FFFFFF00FFFFFF00EDF6FA1849A2D2FFA5C0CEFFA9BF
      CCFFA6BDC9FFAFC5D1FFAAC0CCFF9AB1BDFF4BA5CDFF2EBB6FFF2EBB6FFF2FB9
      75FF49A2D2FF49A2D2FF4BA3D2FCFFFFFF00E9E9E93ED5D4D475D0C8C597CCC1
      BFA8C8BCB9B6C7BCB9B6C0B4B1CDC0B4B1CDC0B4B1CDC1B6B2C8C7BCB9B6C8BC
      BAB5D0C6C49AD3CFCE82DDDDDD5EFBFBFB0AFFFFFF00FFFFFF00C8C8C8FFD6D0
      C9FFEDE6DDFFEDE6DDFFCCBCADFFAEA99BFFCBC8C1FFE0E0E0FFE0E0E0FFE0E0
      E0FFCDC1B5FFEDEDED8FFFFFFF00FFFFFF00FFFFFF00DFDFDFFFD6C7B8FFEDE6
      DDFFEDE6DDFFCEC2B7FFDFDFDFFFDCDAD8FFB3B3B3FFDFDFDFFFDFDFDFFFDDDB
      DAFFDFDFDFFFFFFFFF00FFFFFF00FFFFFF00D2E8F33F49A2D2FFA4A5A6FF898C
      8DFF7A7C7EFFAEAFB0FF8F9192FF37785CFF28C47AFF28C47AFF30C77EFF28C4
      7AFF29C37DFF49A2D2FF49A2D2FFFFFFFF00FFFFFF0044C1E7BE57E0FFFF00BF
      FFFF00C0FFFF05C2FFFF08C3FFFF09C4FFFF09C4FFFF07C3FFFF02C1FFFF00BF
      FFFF00BDFFFFB0D3D8FFF5F9FA11FFFFFF00FFFFFF00FFFFFF00C9C9C9FFD8D2
      CBFFD5C6B6FFD5C6B6FFC4B19FFFD0C4B9FFCFC2B7FFD2C6BBFFD3C7BCFFD3C7
      BCFFC8B8A8FFEFEFEF8FFFFFFF00FFFFFF00FFFFFF00E2E2E2FFCCBBABFFDACF
      C3FFDACFC3FFC9B9AAFFD6CDC5FFD3C9C0FF9E9891FF97B9C9FFD2E8EFFFD4CA
      C1FFE2E2E2FFFFFFFF00FFFFFF00FFFFFF00D2E8F33F4CA3D2FFC2C3C4FFB5B6
      B7FFACAEAFFFC9CACAFFB7BBBBFF23CD84FF22CD83FF52C7B1FF5CABD6FF3AD4
      90FF22CD83FF23CC85FF4BA2D2FFFFFFFF00FFFFFF0000BEFFFF00AFECFF7DE7
      FFFF09C3FFFF10C6FFFF12C8FFFF13C9FFFF13C9FFFF12C7FFFF0EC5FFFF00BF
      FFFF9EC8CBFF00C0FFFF80E3FF7FFFFFFF00FFFFFF00FFFFFF00C9C9C9FFDAD3
      CDFFECE6DFFFECE6DFFFCDBEAFFFE6E6E6FFE3E2E0FFD9D8D4FFD3D1CCFFD3D1
      CCFFD0C4B8FFF0F0F08FFFFFFF00FFFFFF00FFFFFF00E4E4E4FFD6C7B8FFEDE6
      DDFFEDE6DDFFD0C5BAFFE4E4E4FFE0DEDCFFE4E4E4FFA5D6F0FF61C4F1FF4ABA
      E8FFE4E4E4FFFFFFFF00FFFFFF00FFFFFF00D3E8F43F54A7D4FF5AAAD5FF5FAC
      D7FF63AED7FF66AFD8FF68B0D9FF60B9CBFF5DB9CAFF67B0D9FF65AFD8FF62AD
      D7FF3ADA98FF1ED48BFF1ED38BFFFFFFFF00FFFFFF0000BEFFFF03BEFFFF00B6
      F1FFA4F1FFFF17CBFFFF1BCDFFFF20D1FFFF1FD2FFFF1BCCFFFF01C5FFFF7BBB
      C5FF07C2FFFF00BDFFFF81E3FF7EFFFFFF00FFFFFF00FFFFFF00C9C9C9FFDBD5
      CFFFEDE6DDFFEDE6DDFFCDBEAFFFE7E7E7FFE5E3E2FFCAC8C0FFBEBBB0FFBEBB
      B0FFD1C4B9FFF1F1F18FFFFFFF00FFFFFF00FFFFFF00E6E6E6FFC4B09DFFCBBA
      A9FFCBBAA9FFC3B09DFFCABAABFFC9B8A8FFCABAABFF3EB9EDFF58C1F1FF4BBD
      EFFF80CAE7FFFFFFFF00FFFFFF00FFFFFF00D5E9F43F5BAAD6FF61ADD7FF66B0
      D8FF6BB2D9FF6EB3DAFF70B4DBFF71B5DBFF71B5DBFF70B4DAFF6DB3DAFF6AB1
      D9FF65AFD8FF3CDEA0FF1BD891FF5FE4B0C6FFFFFF0000BDFFFF08C0FFFF11C5
      FFFF08C3F7FFC8F8FFFF20B2EAFF00FFFFFF00E6F5FF18D2FFFF58B0BFFF16CB
      FFFF0DC3FFFF04C0FFFF81E3FF7EFFFFFF00FFFFFF00FFFFFF00CACACAFFDDD6
      D0FFCEBFB0FFCEBFB0FFC3AF9CFFCDBFB1FFCCBDAFFFCDBFB1FFCDBFB1FFCDBF
      B1FFC8B7A6FFF2F2F28FFFFFFF00FFFFFF00FFFFFF00E8E8E8FFD6C7B8FFEDE6
      DDFFEDE6DDFFD2C7BCFFE8E8E8FFE4E2E0FFE8E8E8FFDEE5E9FF34B6EBFF25B1
      E8FF34B6EBFFE3F5FB1EFFFFFF00FFFFFF00D6EAF43F62ADD7FF68B0D9FF6DB3
      DAFF72B5DBFF60A3CBFF78B8DCFF3C80ADFF79B8DDFF77B7DCFF75B6DCFF71B5
      DBFF6CB2DAFF67B0D8FF53D5B5FFFFFFFF00FFFFFF0000BDFFFF0BC2FFFF14C9
      FFFF1DCDFFFF0AA1DAFF0DFFFFFF0DFDFFFF0DFDFFFF07FFFFFF24C6F9FF18CA
      FFFF11C7FFFF07C1FFFF81E3FF7EFFFFFF00FFFFFF00FFFFFF00CBCBCBFFDED7
      D1FFEDE6DDFFEDE6DDFFCEBFAFFFAEA99BFFD1CEC7FFEBEBEBFFEBEBEBFFEBEB
      EBFFD2C6BAFFF3F3F38FFFFFFF00FFFFFF00FFFFFF00EAEAEAFFD0C0AFFFE2D7
      CCFFE2D7CCFFCEC0B3FFE0DBD6FFDDD5CFFFE0DBD6FFE0DBD6FFB3D8EAFF31B5
      EAFF10ABE5FFBDCAD2FFFFFFFF00FFFFFF00D7EAF53F67B0D9FF6EB3DAFF74B6
      DBFF79B8DDFF5496BFFF2C72A1FF145D8FFF226999FF7FBBDEFF7CB9DDFF78B8
      DCFF72B5DBFF6CB2DAFF66AFD8FFFFFFFF00FFFFFF0002BEFFFF0DC3FFFF16CB
      FFFF0CC2E8FF20FEFFFF20FEFFFF20FEFFFF20FEFFFF20FEFFFF21FFFFFF12B6
      EFFF11C8FFFF09C1FFFF81E3FF7EFFFFFF00FFFFFF00FFFFFF00D0D0D0FFDED8
      D2FFE8DFD5FFE8DFD5FFCDBCACFFE7E5E3FFE5E1DDFFE1DEDAFFDEDAD6FFDEDA
      D6FFD1C4B8FFF3F3F38FFFFFFF00FFFFFF00FFFFFF00EBEBEBFFD6C8BAFFECE7
      E0FFECE7E0FFD3C8BDFFEAEAEAFFE6E4E2FFEAEAEAFFEAEAEAFFEAEAEAFF8CCE
      F1FFA2A2C5FF12129BFFACACE15CFFFFFF00D9EBF53F6CB2DAFF73B5DBFF79B8
      DDFF7FBBDEFF5C9BC3FF1F6698FF206899FF1F6798FF85BEDFFF82BCDFFF7DBA
      DEFF78B8DCFF72B5DBFF6AB1D9FFFFFFFF00FFFFFF0019C7FFFF0DC4FFFF26EB
      F8FF34FDFFFF34FDFFFF34FDFFFF34FDFFFF34FDFFFF34FDFFFF34FDFFFF35FE
      FFFF0CBEEEFF06C1FFFF80E3FF7FFFFFFF00FFFFFF00FFFFFF00D5D5D5FFDFD9
      D2FFECE6DDFFECE6DDFFCEBFB0FFECECECFFE9E8E7FFE5E4E2FFE1E0DDFFE1E0
      DDFFD3C7BBFFF4F4F48FFFFFFF00FFFFFF00FFFFFF00ECECECFFD6C7B8FFEDE6
      DDFFEDE6DDFFD4C9BEFFECECECFFE7E5E3FFECECECFFECECECFFECECECFFE9E7
      E6FF1818A6FFE1E1F523FFFFFF00FFFFFF00DAEBF53F70B4DAFF77B7DCFF7EBA
      DEFF83BDDFFF63A0C7FF2A71A1FF2C73A3FF2B71A2FF8BC0E1FF87BFE0FF82BC
      DFFF7CBADDFF76B7DCFF6EB3DAFFFFFFFF00FFFFFF00C6F1FF3B74FFFFFF6FFB
      FFFF6FFBFFFF6FFBFFFF6FFBFFFF6FFBFFFF6FFBFFFF6FFBFFFF6FFBFFFF6FFB
      FFFF6FFCFFFF65F4FBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D9D9D9FFEDED
      EDFFEDEDEDFFE0D9CAFFE6E2D9FFE5E1D7FFE0D9CAFFECEBEBFFE0D9CAFFEDED
      EDFFEDEDEDFFF4F4F48FFFFFFF00FFFFFF00FFFFFF00EDEDEDFFD5C8BAFFECE6
      DFFFECE6DFFFD4C9BEFFECECECFFE7E5E3FFECECECFFECECECFFECECECFFE9E7
      E6FFEDEDEDFFFFFFFF00FFFFFF00FFFFFF00DAEBF53F73B5DBFF7AB9DDFF81BC
      DEFF87BFE0FF69A5CBFF357BAAFF387DADFF367CABFF8FC3E2FF8BC1E1FF86BE
      DFFF7FBBDEFF79B8DCFF71B4DBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEE2F236DDDDDDFFEDED
      EDFFEDEDEDFFCEA85CFFD9C293FFD8BE8AFFCEA85DFFE9E4DBFFCEA85CFF8080
      80FF747474FFEEEEEE2AFFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDEDEDFFEDED
      EDFFDED6C4FFEAE8E4FFE0DACBFFDED6C4FFEDEDEDFFDED6C4FFEBEBE9FFEDED
      EDFFEDEDEDFFFFFFFF00FFFFFF00FFFFFF00DCECF63D75B7DCFF7CBADDFF83BD
      DFFF89C0E0FF6EA9CEFF4084B3FF4488B6FF4185B4FF92C4E2FF8DC2E1FF88BF
      E0FF81BCDFFF7AB9DDFF7DBADEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F6FB1178AED6FFD9E2
      E8FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6565
      65FFC7C7C7FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDEDEDFFEDED
      EDFFCCA75BFFE3D8C2FFCFAD67FFCDA75CFFEDEDEDFFCCA75BFF8C8A87FF7D7D
      7DFF979797CFFFFFFF00FFFFFF00FFFFFF00FFFFFF008AC0E0FF7EBBDEFF83BD
      DFFF8AC0E1FF71ABD0FF488BB9FF4F92BFFF4A8EBCFF93C4E3FF8EC2E2FF88BF
      E0FF82BCDFFF98C7E4FFB9DAEC80FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1E1E1FFBDD6
      E7FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFC7C7
      C7FFE1E1E1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6D6D6DFF7A7A
      7ACFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF97AFD3
      ECDEC9DEECA3EFEFEF9FEFEFEF9FEFEFEF9FEFEFEF9FEFEFEF9FEFEFEF9FEFEF
      EF9FF2F2F275FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEEFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF6C6C6CCFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB0AF6F6
      F619F1F1F126EEEEEF2EEEEEEF2EEEEEEF2EEEEEEF2EEEEEEF2EEEEEEE2DF5F5
      F51CFAFAFA0DFEFEFE01FFFFFF00FFFFFF00FDFDFD04F7F7F716EFEFEF2BE8E8
      E83FE7E7E743DEDEDE5CDDDDDD5DDDDDDD5DDDDDDD5DDDDDDD5DE3E3E34DE7E7
      E743EEEEEE2EF3F3F31FFAFAFA0CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB0BF5F5F51AF2F2
      F224EEEEEE2EEEEEEF2EE6E7E843E6E7E843E6E7E843E8E8E93EEEEEEE2EEEEE
      EE2DF5F5F51BF9F9F910FDFDFD03FFFFFF00FFFFFF00EEEEEF2EDBDDE061B4A4
      83DEB68D39FFBB913AFFBD9340FFBF9441FFBE9541FFBD923DFFB98E37FFB4A3
      81E3D5D6DA73E3E3E44BFFFFFF00FFFFFF00F1F1F126A48643F09C7B2EF99B7A
      2CFB9B792BFC9A792BFD9A792BFD9A792BFD9A792BFD9A792BFD9A7929FD9B79
      2BFC9B7A2DFA9C7C2FF8C6BEAA98FCFCFC08D9D9D969C3C1C1ABB9B4B2C8B4AF
      ADD5B1ABA9DFB0ABA8E0ABA6A3EEABA6A3EEABA6A3EEADA7A5EAB1ABA9DFB1AB
      A9DFB7B3B0CCC4BEBBB6CACACA93F8F8F813ECECEC33DBDCDC63D4D6D975B2A2
      81E2B68D39FFBB913AFFBD9340FFBF9441FFC4953DFFC99333FF98A351FFA1AF
      91E214E1C2F757D3C2D2E3E3E34EFCFCFC08FFFFFF00C1A366B9B08836FFB68F
      3EFFBC9442FFC09848FFC39B4BFFC79D4DFFC69C4CFFC19A4AFFBE9644FFB990
      41FFB38B38FFC8AD73ABFFFFFF00FFFFFF00FFFFFF00966F17FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C7623FFFFFFFF00FFFFFF0080C2DAD24B9FD6FF00BF
      FFFF01C0FFFF01C0FFFF01C0FFFF01C0FFFF01C0FFFF01C0FFFF01C0FFFF00BF
      FFFF62CEEBFF2ACCFFFFFFFFFF00FFFFFF00FFFFFF00C1A365B9B08836FFB68F
      3EFFBC9442FFC09848FFC39B4BFFC79D4CFF4C98AAFF0083E5FF3EF1B5FF34F3
      C8FF5EFFD3FF00DDC2FFFFFFFF00FFFFFF00FFFFFF00AB8534FFB38C3BFFBA92
      40FFC09847FFC79D4DFFCCA151FFCEA352FFCDA252FFC99F4FFFC39A4AFFBD95
      43FFB68F3EFFAE8938FFFFFFFF00FFFFFF00FFFFFF00997117FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9F7823FFFFFFFF00FFFFFF009CD5E9FF03C0FFFF0DA1
      E7FF30D7FFFF12C6FFFF12C6FFFF12C6FFFF12C6FFFF12C6FFFF05C6FFFF569D
      CDFF0BC8FFFF00BFFFFFFFFFFF00FFFFFF00FFFFFF00AB8534FFB38C3BFFBA92
      40FFC09847FFC79D4DFFCEA14FFF00ACFDFF009EECFF64C6DCFF0C8EE1FF62FF
      D6FF359C82FF00E1C9FFFFFFFF00FFFFFF00FFFFFF00E8DDC54AB48D3BFFBC94
      44FFC39A4AFFCBA050FFD1A656FFD5A95AFFD3A858FFCEA353FFC79D4DFFBE97
      47FFB79140FFB08938FFFFFFFF00FFFFFF00FFFFFF00A3781CFFCFEBF9FFCEE9
      F7FFCEE9F7FFCEE9F7FFCEE9F7FFCEE9F7FFCEE9F7FFCEE9F7FFCEE9F7FFCEE9
      F7FFCEE9F7FFD0F0FFFFA47D27FFFFFFFF00FFFFFF009DD6EBFF07C2FFFF11C7
      FFFF11CDFFFF83D1E9FF1DCEFFFF22D0FFFF21D0FFFF48E1FFFF16A5E1FF19CC
      FFFF13C8FFFF00C1FFFFFFFFFF00FFFFFF00FFFFFF00E8DDC54AB48D3BFFBC94
      44FFC39A4AFFCBA050FFD1A655FF51BDD9FF48C9F5FF5BBBD2FF64C9E1FF1999
      E5FF1E675DFF33EBCCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D2BA87AABB93
      41FFC39B4BFFCBA152FFD1A554FFD7AA59FFD4A856FFD0A355FFC89E4EFFBF97
      46FFBD984AFFFDFCFB05FFFFFF00FFFFFF00FFFFFF00B88224FF129CE2FF139B
      E1FF139BE1FF139BE1FF139BE1FF139BE1FF139BE1FF139BE1FF139BE1FF139B
      E1FF139BE1FF099DECFFB0832EFFFFFFFF00FFFFFF00A0DAEEFF0AC2FFFF14C9
      FFFF1DCDFFFF26D7FFFF4D92C7FF27DAFFFF83C9E6FF2ADCFFFF28D2FFFF1FCE
      FFFF16CAFFFF00C2FFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D2BA87AABB93
      41FFC39B4BFFCBA152FFD1A554FFD8AA58FF67B8BEFF32BCF0FF61C5DCFF5BB1
      C4FF0083DAFF4BE1D6FFF7FEFD08FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF9
      F40FC49D51FFE2C17DFFFFD994FFFFD78DFFFFD890FFFFDEA2FFC29746FFCFB3
      78CFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC8627FF18A5E9FF1AA4
      E8FF1AA4E8FF1AA4E8FF1AA4E8FF1AA4E8FF1AA4E8FF1AA4E8FF1AA4E8FF1AA4
      E8FF1AA4E8FF0FA6F3FFB38732FFFFFFFF00FFFFFF00A3DCF1FF0DC4FFFF14C8
      FFFF1ACFFFFF78A8ACFFCAC6C4FFD6D0CCFFDBD8D7FFCDCAC8FF1DD3FFFF21CF
      FFFF18C9FFFF02C3FFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF9
      F40FC49D51FFE2C17DFFFFD994FFFFD78DFFFFD890FF9CCEC4FF21B6F1FF009D
      ECFF0093EBFF10B0D6EF9EF1E761FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7ECD86CBDDDF9FFC0DCF3FFBFDCF4FFBAD7F2FCFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B68B36FF50A2B5FF54A1
      B0FF54A1B0FF54A1B0FF54A1B0FF54A1B0FF54A1B0FF54A1B0FF54A1B0FF54A1
      B0FF54A1B0FF5F9FA1FFB38D3BFFFFFFFF00FFFFFF00A4DEF3FF0BC4FFFF04C9
      FFFFE4D0CAFFA9A194FFD4D4D4FFC1BCB6FFBCB8B1FFDFDFE0FFEADFDCFF2ACF
      FDFF16C9FFFF02C2FFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7ECD86CBDDDF9FFC0DCF3FFBFDCF4FFBDD7F1FCC0EBF85500AB
      F5FF32E7D0CD56E7D3A9CCF8F333FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00AED1EFFFCEE2F5FFB0D1EEFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B89040FFB89040FFB890
      40FFB89040FFB89040FFB89040FFB89040FFB89040FFB89040FFB89040FFB890
      40FFB89040FFB89040FFB89040FFFFFFFF00FFFFFF00A5E0F7FF0FACECFF82A1
      C4FFD9DADAFFB0AA9DFFD0CECBFFD9D9D7FFE0E1E2FFE2E2E2FFE4E4E4FFF0EC
      E8FF127AC5FF00C2FFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00AED1EFFFCEE2F5FFB0D1EEFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DBEAF7FFD7E8F7FFD7E8F7FFF6FAFD31FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC9444FFBC9444FFBC94
      44FFBC9444FFBC9444FFBC9444FFBC9444FFBC9444FFBC9444FFBC9444FFBC94
      44FFBC9444FFBC9444FFBC9444FFFFFFFF00FFFFFF009CE1F0FF206ABBFF1969
      BBFFE1DEDBFFC7C4BEFFBBB7B0FFE6E6E8FFE4E4E4FFE7EAECFFDFD7CFFFCDB0
      8BFF75A1D2FFC8F3F2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DBEAF7FFD7E8F7FFD7E8F7FFF6FAFD31FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E8F3FC68C2DBF3FFC2DBF3FFC2DBF3FFC3DDF5FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BF9848FFBF9848FFBF98
      48FFBF9848FFBF9848FFBF9848FFBF9848FFBF9848FFBF9848FFBF9848FFBF98
      48FFBF9848FFF7F3EA1DFFFFFF00FFFFFF00FFFFFF00FFFFFF0063C6E7E276B2
      DDFFBECCDBFFD5D4D0FFC9C6BFFFEAEDF2FFC8AF8EFFA45C01FFC77619FF757B
      86FFCAF9F9FFF7FCFD0AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E8F3FC68C2DBF3FFC2DBF3FFC2DBF3FFC3DDF5FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B4D8F6FFADD1EFFFADD1EFFFADD1EFFFB1D6F4FFAAACB463FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C49C4CFFC49C4CFFC49C
      4CFFC49C4CFFC49C4CFFC49C4CFFC49C4CFFC49C4CFFC49C4CFFC49C4CFFC49C
      4CFFC49C4CFFC49C4CFFC59B4CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00ACDF
      F261CDF6F9FFE8E9EAFFB4884EFFAD650BFFCA781AFFEDBC82FFECF3FCFF5D5A
      59FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B4D8F6FFADD1EFFFADD1EFFFADD1EFFFB1D6F4FFAAACB463FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A3D1F8FF99C3EBFF99C3EBFF9AC5ECFFA5D4FBFF262E42FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CAA050FFCAA050FFCAA0
      50FFCAA050FFCAA050FFCAA050FFCAA050FFCAA050FFCAA050FFCAA050FFCAA0
      50FFCAA050FFC79B4AFFD5B06BE6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E9EAECFFD68220FFF0D5B3FFEDF1F6FFEEEDECFFF0F0F0EFFEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A3D1F8FF99C3EBFF99C3EBFF9AC5ECFFA5D4FBFF262E42FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C6D04E374B6FFF89C1F0FF506B91FF262F45FF263045FF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFA354FFCFA354FFCFA3
      54FFCFA354FFCFA354FFCFA354FFCFA354FFCFA354FFCFA354FFCFA354FFCFA3
      54FFCA9D4BFFD7B167FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE0CEDEEF0FFF6F0EEFFD0E8EFFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C6D04E374B6FFF89C1F0FF506B91FF262F45FF263045FF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002F4263FF252B3EFF2B3851FF2B3851FF2B3851FF2D384EFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2A657FFD3A758FFD3A7
      58FFD3A758FFD3A758FFD3A758FFD3A758FFD3A758FFD3A758FFD3A758FFD4AC
      5DFFD7B16BDDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFCFC66FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002F4263FF252B3EFF2B3851FF2B3851FF2B3851FF2D384EFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1F2F411363D4EFF2A3853FF2A3753FF444F65F0FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0D595FFEED291FFEED2
      91FFEED291FFEED291FFEED291FFEED291FFEED291FFEED291FFEFD494FFE8D2
      A787FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1F2F411363D4EFF2A3853FF2A3753FF444F65F0FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD03F8F8F812F2F2
      F222EEEEEE2FEBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB36F1F1
      F125F7F7F716FCFCFC08FFFFFF00FFFFFF00FFFFFF00FDFDFD03F8F8F812F2F2
      F222EEEEEE2FEBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB36F1F1
      F125F7F7F716FCFCFC08FFFFFF00FFFFFF00CFCFCF86BBBBBBBE8990A3D98189
      9EE781889DE87C8499F17C8499F17C8499F17C8499F17C8499F17F879CEB8189
      9EE7888FA3DB9398AACCC8C8C898FBFBFB0AFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE2ED8D8D86BB5A5
      84DEB59044FEBA9342FFBD9545FFBF9646FFBE9645FFBC9443FFB89142FEA4A4
      91E2B0C1CCA1E4E4E44AFFFFFF00FFFFFF00FFFFFF00EEEEEE2ED8D8D86BB5A5
      84DEB59044FEBA9342FFBD9545FFBF9646FFB99247FF0F0E84FF0C0C87FF0C0C
      87FF0F0F86FEDFDFE24FFFFFFF00FFFFFF00FFFFFF00F2F3F611072273FD7886
      B3A77886B1A77886B1A77886B1A77886B1A77886B1A77886B1A77886B1A77886
      B1A77886B1A77B8AB6A4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3AA72B0B08938FFB68F
      3EFFBB9443FFC09848FFC49B4BFFC79D4DFFC69C4CFFC29A49FFBE9645FF1F8F
      C6FF038EDEFFC9B17CA5FFFFFF00FFFFFF00FFFFFF00C3AA72B0B08938FFB68F
      3EFFBB9443FFC09848FFC49B4BFFC79D4DFF0D0D8AFF0E0E8DFF4154B3FF4E5F
      B8FF0F0F8EFF0E0E8BFFFFFFFF00FFFFFF00FFFFFF00F0F1F60F2B4182D7AE88
      38FFAD8736FFAD8736FFAD8736FFAD8736FFAD8736FFAD8736FFAD8736FFAD87
      36FFAD8736FFAA8B4FF6FFFFFF00FFFFFF00E9E9E93DD5D5D573C9C9C995C4C4
      C4A5BFBFBFB2BFBFBFB3B7B7B7C7B7B7B7C7B7B7B7C7B9B9B9C2BFBFBFB2BFBF
      BFB1C8C8C899D0D0D082DEDEDE5CFAFAFA0DFFFFFF00AD8839F9B38C3BFFB992
      41FFC09747FFC69D4DFFCBA151FFCEA353FFCDA252FFC99F4FFFC39A4AFFA195
      5CFF989059FFAF8938FFFFFFFF00FFFFFF00FFFFFF00AD8839F9B38C3BFFB992
      41FFC09747FFC69D4DFFCBA151FF6B5671FF0F0F91FF111195FF11179BFF1117
      9CFF111197FF101093FF8E8ECA78FFFFFF00FFFFFF00F0F1F60F2B4182D7D1A7
      5BFFCFA456FFCFA456FFCFA456FFCFA456FFCFA456FFCFA456FFCFA456FFCFA4
      56FFCFA456FFC4A46EF2FFFFFF00FFFFFF00FDFDFD0359C4E5BC4DD7FFFF00BE
      FFFF02BFFFFF07C1FFFF0AC2FFFF0BC3FFFF0BC3FFFF09C2FFFF05C0FFFF00BE
      FFFF00BEFFFF8BCCDBFFAF904CE7D4B579C3FFFFFF00E5D9BF51B58E3DFFBC94
      43FFC39A4AFFCBA050FFD1A656FFD5A95AFFD3A858FFCEA353FFC79D4DFF3D9B
      B6FF089CE3FFB18A39FFFFFFFF00FFFFFF00FFFFFF00E5D9BF51B58E3DFFBC94
      43FFC39A4AFFCBA050FFD1A656FF39308AFF121298FF13139DFF3246B6FF3A4C
      B9FF13139FFF12129BFF4F4FB2BFFFFFFF00FFFFFF00F0F1F60F2B4386D7A382
      3CFF9F7C31FF9F7C31FF9F7C31FF9F7C31FF9F7C31FF9F7C31FF9F7C31FF9F7C
      31FF9F7C32FFB19A6CDCFFFFFF00FFFFFF00FFFFFF0000BEFFFF00B5EDFF66DD
      FEFF0AC3FFFF10C6FFFF13C8FFFF14C9FFFF14C9FFFF12C7FFFF0EC5FFFF08C2
      FFFF7DC6D6FF709471FFC59C4CFFFDFBF70DFFFFFF00FFFFFF00D3BC8BA4BD95
      44FFC49B4BFFCCA151FFD3A858FFDAAE5EFFD7AB5BFFD0A455FFC89E4EFFBF98
      49FF00A4EFFF33B3EBD2FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3BC8BA4BD95
      44FFC49B4BFFCCA151FFD3A858FF7E6988FF13139FFF1414A5FF5163C5FF6372
      CBFF1515A7FF1313A1FF9494D57EFFFFFF00FFFFFF00F0F2F60F2D488AD7C49B
      4BFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A
      4AFFC39A4AFFB59459F7FFFFFF00FFFFFF00FFFFFF0000BEFFFF03BFFFFF08BA
      F0FF83E4FDFF18CBFFFF1CCDFFFF1ECAFBFF1ECEFFFF1BCCFFFF77BFD4FFB8B8
      B8FFB8B8B8FFBEA066FFBCDDD881FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F3
      EA1EC59E51FFE3C07BFFFFD796FFFFD796FFFFD796FFF7D79AFF54A5ADFFD1B6
      7DC4FFFFFF0000ABF3FF76D1F889FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F3
      EA1EC59E51FFE3C07BFFFFD796FFFFD796FF2222ACFF1616ABFF1B25B4FF222D
      B7FF1717ADFF2424B0FFFFFFFF00FFFFFF00FFFFFF00F0F2F70F113483F1B1B6
      C470ACB1BE77ACB1BE77ACB1BE77ACB1BE77ACB1BE77ACB1BE77ACB1BE77ACB1
      BE77ACB1BE77BFC4D059FFFFFF00FFFFFF00FFFFFF0000BEFFFF08C1FFFF11C6
      FFFF14C3F3FF9EE9FCFF1DBBEEFF00FAFFFF00E3F5FF30CFFAFFB1C1C5FF73DB
      FAFF72DBFCFFC3C3C3FF82DEFD7FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5ECDA70C0DCF3FFC0DCF3FFC0DCF3FFA2D4F0F100B2F8FFFBFD
      FE04FFFFFF0000B2F8FF59CCF9B3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5ECDA70C0DCF3FFC0DCF3FFB7D1EEFF4545C8FF1919B6FF1A1A
      B9FF4848CAFDF7F7FC0AFFFFFF00FFFFFF00FFFFFF00F0F2F70F0C3387FD8696
      BF9F8797BD9F8295C39F7F99C89F7F99C89F7F93C49F7F91C29F8092C39F8596
      C09F8797BC9F8295C19FFFFFFF00FFFFFF00FFFFFF0001BEFFFF0BC3FFFF14C9
      FFFF1DCDFFFF11B2E1FF0DFEFFFF0DFEFFFF0DFEFFFF4AEFEFFF98D3E3FF75DC
      FAFF79DEFDFFBACCD1FF89DFFC7FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B0D3EFFFCDE2F5FFB5D5F0FFFFFFFF0063D2FCBF00B9
      FCFF00B9FCFF25C2FBFEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B0D3EFFFCDE2F5FFB5D5F0FFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F2F70F2F5399D7A17E
      2EFF9F7B29FFE1E3DE3F008CE0FF008CE0FFA1A6C1870B0B84FF242380FFA07F
      38FF9F7B29FFD2C6AF77FFFFFF00FFFFFF00FFFFFF0003BFFFFF0DC4FFFF16CA
      FFFF12CBEEFF20FEFFFF20FEFFFF20FEFFFF20FEFFFF20FEFFFFD5D5D5FF7CD1
      ECFF82D5EEFFDBDDDEFF80DEFE7FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D7E8F7FDD7E8F7FFD7E8F7FFF4F8FC3DFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D7E8F7FDD7E8F7FFD7E8F7FFF4F8FC3DFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F3F80F30589ED7A581
      31FFA37F2DFFE0E2DE3F0096E6FF0096E6FF9CA2C0870F0F8FFF222286FFA281
      39FFA37F2DFFD1C5AC77FFFFFF00FFFFFF00FFFFFF0015C6FFFF0DC4FFFF26E8
      F9FF34FDFFFF34FDFFFF34FDFFFF34FDFFFF34FDFFFF34FDFFFF35FCFEFFA5EE
      EFFF86DDECFF09C2FFFF83DFFF7DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4F0F96BC2DCF3FFC2DCF3FFC2DCF3FFC2DCF3FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4F0F96BC2DCF3FFC2DCF3FFC2DCF3FFC2DCF3FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F3F80F325CA3D7B28D
      3DFFB18B3AFFE0E3DE3F00A0ECFF00A0ECFF9DA3C28712129AFF25248EFFAD8A
      43FFB18B3AFFD4C7AF77FFFFFF00FFFFFF00FFFFFF00BEEFFE4567F9FFFF6AFC
      FFFF6AFCFFFF6AFCFFFF6AFCFFFF6AFCFFFF6AFCFFFF6AFCFFFF6AFCFFFF6AFC
      FFFF6AFCFFFF58EEFCFEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ACCFEDFFADD1EFFFADD1EFFFADD1EFFFADD1EFFFABAEB766FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ACCFEDFFADD1EFFFADD1EFFFADD1EFFFADD1EFFFABAEB766FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F3F90F325FA8D7C098
      49FFBF9646FFE1E4DF3F00AAF3FF00AAF3FF9DA4C4871414A5FF272696FFB894
      4DFFBF9646FFD6C9B177FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F6F70C99C4EBFF99C4EBFF99C4EBFF99C4EBFF98C3E9FF2A3349FEFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F6F70C99C4EBFF99C4EBFF99C4EBFF99C4EBFF98C3E9FF2A3349FEFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F4F90F3363ADD7CEA4
      55FFCDA252FFE2E5E03F00B4F9FF00B4F9FF9EA5C6871717AFFF29289EFFC39D
      57FFCDA252FFD9CBB377FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCC2CC5140577BFF84B8E6FF547095FF2F3B53FF2B364DFF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCC2CC5140577BFF84B8E6FF547095FF2F3B53FF2B364DFF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F4F90F3368B2D7D0AE
      76FDD1AC6FFFF0F1EE273EC2E9FF42C3E9FFC7CBDC695256C1FF797BBBE9CBAE
      7EF1D1AC6FFFE8DFD057FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01304262FF2A3349FF2C3851FF2C3851FF2C3851FF363F55F5FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01304262FF2A3349FF2C3851FF2C3851FF2C3851FF363F55F5FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F5FA0F376DB9D7FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E7EA20353D51FF2D3B55FF2D3B55FF4F5A6EE1FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E7EA20353D51FF2D3B55FF2D3B55FF4F5A6EE1FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC06F8F8
      F811F5F5F51CF2F2F222EEEEEE2EEEEEEE2EEEEEEE2EEEEEEE2EF5F5F51CF5F5
      F51BFAFAFA0EFDFDFD04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFBFBFB0BFCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE7AFAFAFDEB1B1B1D8AAAA
      AFDBB9B9B9C4C0C0C0B0CDCDCD8AF9F9F910FFFFFF00E6E6E645D5D5D573CBCB
      CB91C7C7C79CBDBDBDB7BFBFBDB7C1C1BEB4BFBFBEB5BCBCBCB7BFBFBFB2C6C6
      C69DCFCFCF84DADADA66F0F0F029FFFFFF00E2E2E24FD5D5D573D3D3D37BD3D3
      D37BD3D3D37BD3D3D379DCDCDC60F5F5F51CE4E4E44BD5D5D573D3D3D37BD3D3
      D37BD3D3D37BD3D3D379DCDCDC62F3F3F321D5D5D575BCBCBCBA95A9B4EC91A6
      B2F491A6B1F68FA5B0F98EA4B0FB8EA4B0FB8EA4B0FB8EA4B0FB91A6B1F691A6
      B1F694A9B4EEA8B2B8D4C6C6C69EF6F6F618FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC04BEBDB854948154CA987A36EE967B3EE4636087B70C0C87FF0D0D
      88FF0D0D88FF101089FAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A7A7CB72060684FF000085FF7272B5FFCBCBCBDBF7F7F718FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0050A5D2F58F9FA7FF92A2AAFF8695
      9EFF4EA4D3FF4AA2D2FF49A2D2FFFFFFFF0065AFD6DA8C9BA4FF92A1AAFF7F8F
      98FF4EA4D3FF4AA2D2FF49A2D2FFF6FAFB0DFFFFFF0049A2D2FF49A2D2FF49A2
      D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2D2FF49A2
      D2FF549BC2FF49A1D1FF86C0DEACFFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D0
      CE399E7A28FE9F7B29FF9F7B29FF9F7B29FF765C43FF0E0E8CFF0F0F8FFFC6D3
      EDFF0F1796FF0F0F8FFF0F0F8CFDFFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDD
      EC2C000089FF000097FF00009EFF0000A1FF9B9BD1FFE8E8E8FFE7E7E7FFD0D0
      D0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF004CA3D2FF9EB8C6FFA2BAC8FF9BB3
      C1FF61ADD7FF5CABD6FF53A6D4FFFFFFFF005BABD6E79BB5C3FFA1BAC8FF98B0
      BDFF61ADD7FF5CABD6FF54A7D4FFEEF6FA17D2E8F33F49A2D2FFA2A4A5FF888A
      8CFF797C7DFFACAEAEFF8D8F91FF4B4E51FF52A6D4FF51A6D3FF4FA5D3FF6D8F
      A1FF94A2A9FF838383FF49A2D2FFFFFFFF00FFFFFF00FFFFFF00C4C3C04A9F7B
      29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF0F0F8EFF101094FF111197FF5768
      C0FF12129AFF111197FF101093FFEFEFF810FFFFFF00FFFFFF00D5D5E6380000
      8FFF0000A0FF0101ACFF0909B4FF0D0DB8FFB6B6DAFFE5E5E5FFE7E7E7FFE8E8
      E8FFE3E3E3FFFFFFFF00FFFFFF00FFFFFF005BAAD6FF67B0D8FF6FB4DAFF73B6
      DBFF72B5DBFF6CB2DAFF62AED7FFFFFFFF0069B2D8E766AFD8FF6FB3DAFF73B6
      DBFF73B5DBFF6DB3DAFF63AED8FFF0F7FB17D2E8F33F49A2D2FFA5A7A8FF8B8D
      8EFF7B7E7FFFB0B1B2FF909293FF4B4F52FF5CABD6FF5BAAD6FF7E868BFF8383
      83FF6498B5FF818384FF53A0C9FFFFFFFF00FFFFFF00F3F3F30E9F7B29FF9F7B
      29FF9F7B29FFA17D2BFFA27E2EFFA37F2EFF161699FF12129BFF13139FFFADBC
      E5FF1318A4FF13139FFF12129AFFC5C5E53FFFFFFF00FFFFFF006F6FBAFF0000
      A0FF0404B2FF0B0BB6FF4F4FBBD8C3C3E74FD7D7E170DBDBDBFFE3E3E3FFE5E5
      E5FFE8E8E8FFC7C7C7E8FFFFFF00FFFFFF0066AFD8FF74B6DBFF69A9CFFF1860
      92FF4F90BAFF7AB9DDFF6FB3DAFFFFFFFF0073B6DBE773B5DBFF76B4D8FF1861
      92FF4588B3FF7BB9DDFF70B4DAFFF1F7FB17D2E8F33F51A5D3FF74B5D9FF7FBA
      DAFF82BBDBFF84BCDCFF86BDDCFF86BDDCFF65AED7FF898989FF858585FF8383
      83FF858585FF62A7CCFF4FA5D3FFFFFFFF00FFFFFF00988D70A99F7B29FFA27E
      2DFFA68333FFA98637FFAB8839FF9EB255FF2F37A7FF1313A1FF1515A7FFCCD6
      EFFF141CACFF1515A6FF1313A1FFFEFEFE01FFFFFF00D2D2D2A6E7E7E7FFEDED
      E7FF0000B2FFF4F4FA0EFFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9C9CCE2E2
      E2FFE8E8E7FFFBFBEFFFFFFFFF00FFFFFF006EB3DAFF7DBADDFF76B0D4FF3076
      A6FF609DC4FF84BDDFFF77B7DCFFFFFFFF007ABADDE77CBADDFF82BADCFF3076
      A6FF5796BFFF85BEDFFF78B8DCFFF1F8FB17D4E9F43F58A9D5FF5EACD6FF63AE
      D8FF67B0D9FF6AB1D9FF6DB2DAFF74AECEFF939393FF8F8F8FFF8C8C8CFF9898
      99FF62ADD6FF5DABD6FF57A8D5FFFFFFFF00FEFEFE019F7B29FFA48130FFAA86
      37FFAE8B3DFFB18F42FFA3B75BFF88FC85FFAB8A4AFF1818A8FF1717ADFF1D29
      B7FF1819B2FF1717ADFF5757B7DBFFFFFF00FFFFFF00E3E3E3FFE8E8E8FFE2E2
      E2FFD9D9D5A8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009696
      D5FF0000A6FF000094FFA3A3CD6FFFFFFF0089C0E0EA81BCDEFF7EB5D8FF488B
      B9FF6CA7CDFF89C0E0FF7DBADDFFFFFFFF0095C7E3CE80BCDEFF88BDDEFF478B
      B9FF65A1C9FF8AC0E0FF7DBADDFFFAFCFD08D5E9F43F5FACD7FF65AFD8FF6AB1
      D9FF6FB3DAFF72B5DBFF8AABBEFF9C9C9CFF999999FF969696FFA8B0B4FF6EB3
      DAFF69B1D9FF64AED8FF5DABD6FFFFFFFF00FAFAFA05A48030FFAB8739FFB08E
      41FFB69348FFBA984DFF88FC85FF88FC85FF88FC85FF7EE788FF4948C8FF2F2F
      C3FF4141CBFF6C5E8FFF9C927A9DFFFFFF00FFFFFF00E6E6E6FFE7E7E7FFE2E2
      E2FFFDFDFD07FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004444
      BBE60C0CB1FF00009AFF5656A7BDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0074B7DBC74DA3D2FF4DA3D2FF4CA3D2FF49A2D2FF49A2D2FF4DA4D3F9FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7EAF43F65AFD8FF6BB2D9FF71B5
      DBFF76B7DCFF9FABB1FFA5A5A5FFA2A2A2FF9F9F9FFFA2BAC8FF79B8DDFF75B6
      DCFF70B4DAFF6AB1D9FF63AED8FFFFFFFF00FAFAF906A98637FFB08E41FFB795
      49FFBD9B51FFB8AE5FFF88FC85FF88FC85FF88FC85FF88FC85FFBC9B51FFB694
      48FFAF8D3FFFA88535FF98A7889FFFFFFF00FFFFFF00E6E6E6FFE7E7E7FFE2E2
      E2FFFAFAFA10FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003C3C
      B8EF0B0BB1FF00009AFF5B5BAAB9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0049A2D2FF6B6E70FF808284FF909293FF59A9D5FF54A7D4FF4BA3D2FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8EAF53F90B3C7FFB4B4B4FFB2B2
      B2FFAFAFAFFFADADADFFAAAAAAFFA8A8A8FF43799FFF82BDDFFF7FBBDEFF7BB9
      DDFF76B7DCFF6FB4DAFF68B0D9FFFFFFFF00FEFEFE01AD8A3CFFB59347FFBD9B
      51FFC3A25AFFCAA862FF88FC85FF88FC85FF88FC85FF88FC85FF9BDE76FFBC9A
      50FFB49246FFAC893BFFB6BBB35FFFFFFF00FFFFFF00DFDFDFFFE8E8E8FFEFEF
      E5FFAFAFCAC6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001111
      BBFF0606ACFF000096FFB0B0D361FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0056A8D5FF62ADD7FF69B1D9FF6DB3DAFF6BB2D9FF65AFD8FF5BAAD6FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9EBF53FB9B9B9FFBFC4C7FF9DC3
      D9FFB4B4B4FFB1B1B1FFB6B6B6FF2C719FFF266D9EFF88BFE0FF85BEDFFF80BC
      DEFF7AB9DDFF74B6DBFF6DB2DAFFFFFFFF00FFFFFF009E8F6EB8B9974CFFC19F
      57FFCAA861FFB8C772FF88FC85FF88FC85FFD5B571FF88FC85FFBDB666FFC09E
      55FFB8954AFFA6A850FFF3F3F30EFFFFFF00FFFFFF00D4D4D68F2525A6FF0000
      ABFF0B0BB5FFD8D8ED36FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8DC4ED0E0E
      B6FF0000A3FF00008DFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0064AED8FF70B4DBFF5093BDFF256B9BFF63A4CBFF74B6DBFF69B0D9FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DAEBF53FAFC5D1FF79B8DDFF80BB
      DEFF97BDD4FFB6B6B6FF397AA7FF3379A8FF3177A7FF8DC2E1FF89C0E0FF84BD
      DFFF7EBBDEFF77B7DCFF70B4DAFFFFFFFF00FFFFFF00EEEEEE14BB994FFFC4A2
      5AFFBFBB6CFF88FC85FF88FC85FF88FC85FF8DF784FFC4C274FFAECD72FFC2A1
      59FFB4A353FF8BBA85BEFFFFFF00FFFFFF00FFFFFF00FFFFFF0000008AFF0000
      A1FF0303B1FF0B0BB6FF1919B0FFDCDCDD8BD7D7D7ABE3E3E3FFE2E2E2FFAFAF
      D7FF000096FF5353A0CCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006DB3DAFF7BB9DDFF5999C1FF276D9EFF72ADD1FF7FBBDEFF73B5DBFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DAEBF53F74B6DBFF7BB9DDFF82BD
      DFFF9DBDD1FFB9B9B9FF6D99B7FF3F83B2FF3D81B0FF91C3E2FF8DC1E1FF87BF
      E0FF81BCDEFF7AB9DDFF74B6DBFFFFFFFF00FFFFFF00FFFFFF00B6B4AD64BAB2
      62FF96EB7EFFC7C376FFDFBE7EFFDFC886FF88FB84FF88FC85FFC6B268FF96E6
      7AFF87F082F8F9F9F907FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEF5160000
      8FFF0000A0FF0000ACFF0000B1FFEEEEE5FFE4E4E4FFE4E4E4FFE7E7E7FFE7E7
      E7FFB9B9CAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0076B7DCFF82BCDEFF67A3C9FF3F83B2FF7DB4D6FF86BEE0FF79B8DCFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8FBFD0C91C4E2FF7CBADDFFADBE
      C9FFBEBEBEFFC2C2C2FF4589B7FF4A8DBBFF478AB9FF93C4E3FF8EC2E2FF88BF
      E0FF82BCDFFF7BB9DDFF7BB9DCF2FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBC
      B85795EB7EFF8DF783FFDAB977FFDDBC7BFFD9B876FFCAB970FF8AF984FF87D4
      82E0F6F7F60AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8
      FB08000087FF000096FF000096FFE9E9E8FFE8E8E8FFE8E8E8FFE7E7E7FFC7C7
      C7E4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DDEDF644C2DDEE9FB8D5E89FACCDE39FBED9EB9FC4DEEF9FC4DFEF81FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6E9F44DADD2E9DFB5D5
      EADFBAD6EADFABCEE5DF99C2DEDF9DC6E1DF9AC3DFDFB9D7EBDFB9D7EBDFB7D6
      EBDFB4D5EADFA3CEE7BEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F6F60AA3B4A08185E081EB95EF81FF9FE17DFD88C086C4D6D7D631FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6E8368080B2D2D0D0D0FFCACACAFFD7D7D79FFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FEFEFE01FDFDFD03FCFC
      FC07FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0DFCFCFC08FCFC
      FC07FDFDFD04FEFEFE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F41EE7E7E743DCDCDC61D6D6
      D671D1D1D17FD0D0D081C8C8C899C8C8C899C8C8C899CACACA93D1D1D17FD2D2
      D27EDADADA65E2E2E250EDEDED31FDFDFD05DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE7AFAFAFDEB1B1B1D8B2B2
      B2D7B9B9B9C4C0C0C0B0CDCDCD8AF9F9F910DADADA65C3C3C3A6B9B9B9C2B4B4
      B4D0B1B1B1D8B1B1B1D9ACACACE6ACACACE7ACACACE7AFAFAFDEB1B1B1D8A2AF
      A7E1B9B9B9C4C0C0C0B0CDCDCD8AF9F9F910D2D2D17DC3BBB8BAA6ACB1E2A2A8
      ACEDA0A6AAF2A0A6AAF29CA3A7FA9CA3A7FA9CA3A7FA9FA6A9F4A0A6AAF2A0A7
      AAF1A5ACAFE3AAB1B5D5C9C4C3A2F9F9F90FFAFAFA0DF2F2F224EBEBEB37E3E3
      E34CE0E0E056DADADA65DADADA65DADADA65DADADA65DADADA65D9D9D9679292
      92EA949494E6EDEDED31F6F6F619FEFEFE02FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC04BEBDB854948154CA987A36EE967B3EE49C927B9CEBEBEA1AFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC04BEBDB854948154CA987A36EE967B3EE49C927B9CEAEBEA1A35B1
      63FF63C186C8FFFFFF00FFFFFF00FFFFFF00FFFFFF000DABE5FF0EAAE4FF0EAA
      E4FF0EAAE4FF0EAAE4FF0EAAE4FF0EAAE4FF0EAAE4FF0EAAE4FF0EAAE4FF0EAA
      E4FF0EAAE4FF0EAAE4FF14AFE8F1FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC07FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D0
      CE399E7A28FE9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF8FD267FF8ABA
      82C3FAFAFA05FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0D0
      CE399E7A28FE9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF41B967FF31B6
      69FF31B669FFD3EFDF35FFFFFF00FFFFFF00FFFFFF0015ACE5FF15ACE5FF15AC
      E5FF15ACE5FF15ACE5FF15ACE5FF15ACE5FF15ACE5FF15ACE5FF15ACE5FF15AC
      E5FF15ACE5FF15ACE5FF15ACE5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0A0FF909090FF838383FF8D8D
      8DE9939393DDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C3C04A9F7B
      29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF88FB84FF88FC
      85FF85E081ECFCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C3C04A9F7B
      29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF9F7B29FF808D3CFF2BBE73FF2BBE
      73FF2BBE73FF2BBE73FFFFFFFF00FFFFFF00FFFFFF001EB0E8FF1EB0E8FF1EB0
      E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0E8FF1EB0
      E8FF1EB0E8FF1EB0E8FF1EB0E8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009E9E9EFFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F30E9F7B29FF9F7B
      29FF9F7B29FFA17D2BFFA27E2EFFA37F2EFFA27E2DFFA07C2BFF88FC85FF88FC
      85FF88FC85FF90B38DA8FFFFFF00FFFFFF00FFFFFF00F3F3F30E9F7B29FF9F7B
      29FF9F7B29FFA17D2BFFA27E2EFFA37F2EFFA27E2DFF26C77CFF26C77CFF26C7
      7CFF26C77CFF26C77CFF3FCD8BE1FFFFFF00FFFFFF0028B3E8FF28B3E8FF28B3
      E8FF28B3E8FF28B3E8FF28B3E8FF28B3E8FF28B3E8FF28B3E8FF28B3E8FF28B3
      E8FF28B3E8FF28B3E8FF28B3E8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009E9E9EFFFFFFFF00FCFCFC079A9A
      9ACEA3A3A3BDFFFFFF00FFFFFF00FFFFFF00FFFFFF00988D70A99F7B29FFA27E
      2DFFA68333FFA98637FFAB8839FF9EB255FF8CEB7AFF92D66CFFA09B43FF8BEB
      79FF89F17DFF8BE876FFF5F5F40CFFFFFF00FFFFFF00988D70A99F7B29FFA27E
      2DFFA68333FFA98637FFAB8839FF9EB255FF8CEB7AFF92D66CFF47B86DFF22CD
      84FF22CD84FF69E47EFFF5F5F40CFFFFFF00FFFFFF0031B4EBFF31B4EBFF31B4
      EBFF31B4EBFF31B4EBFF31B4EBFF31B4EBFF31B4EBFF31B4EBFF31B4EBFF31B4
      EBFF31B4EBFF31B4EBFF31B4EBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E0E0E078D6D6D687D2D2D2879E9E9EFFFFFFFF00FBFBFB07FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE019F7B29FFA48130FFAA86
      37FFAE8B3DFFB18F42FFA3B75BFF88FC85FFB39145FFAE9546FFAE8B3DFFA986
      36FFA3802FFF9F7B29FFBEBCB854FFFFFF00FEFEFE019F7B29FFA48130FFAA86
      37FFAE8B3DFFB18F42FFA3B75BFF88FC85FFB39145FFAE9546FF47BE75FF1FD3
      8AFF1FD38AFF779647FFBEBCB854FFFFFF00FFFFFF0040BAEBFF37B6EBFF37B6
      EBFF37B6EBFF37B6EBFF38B8EBFF38B8EBFF38B8EBFF38B8EBFF38B8EBFF38B8
      EBFF38B8EBFF38B8EBFF38B8EBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BABABAFFCCCCCCAAC9C9C99FC7C7C79BB9B9B99FB2B2B29EADAD
      ADA7AEAEAEA5FFFFFF00FFFFFF00FFFFFF00FAFAFA05A48030FFAB8739FFB08E
      41FFB69348FFBA984DFF88FC85FF88FC85FF88FC85FF88FB84FFB59347FFB08D
      40FFAA8738FFA37F2FFF9C927A9DFFFFFF00FAFAFA05A48030FFAB8739FFB08E
      41FFB69348FFBA984DFF88FC85FF88FC85FF88FC85FF88FB84FF47C47BFF1CD7
      8FFF1CD78FFF789A4CFF9C927A9DFFFFFF00FFFFFF003FB9EDFF77D7F7FF76D6
      F7FF76D6F7FF75D5F7FF91E2FAFF3BB6ECFF41B9EEFF41B9EEFF41B9EEFF41B9
      EEFF41B9EEFF41B9EEFF41B9EEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BABABAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAF906A98637FFB08E41FFB795
      49FFBD9B51FFB8AE5FFF88FC85FF88FC85FF88FC85FF88FC85FFBC9B51FFB694
      48FFAF8D3FFFA88535FF98A7889FFFFFFF00FAFAF906A98637FFB08E41FFB795
      49FFBD9B51FFB8AE5FFF88FC85FF88FC85FF88FC85FF88FC85FF5CCD86FF31DF
      99FF31DF99FF7C9E51FF98A7889FFFFFFF00FFFFFF00107ED1FF0F7DD1FF0F7D
      D1FF0F7DD1FF0F7DD1FF0B78CEFF72D3F5FF49BBEEFF4BBDEFFF4BBDEFFF4BBD
      EFFF4BBDEFFF4BBDEFFF4BBDEFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BABABAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC07D8D8
      D850E0E0E03EFFFFFF00FFFFFF00FFFFFF00FEFEFE01AD8A3CFFB59347FFBD9B
      51FFC3A25AFFCAA862FF88FC85FF88FC85FF88FC85FF88FC85FF9BDE76FFBC9A
      50FFB49246FFAC893BFFB6BBB35FFFFFFF00FEFEFE01AD8A3CFFB59347FFBD9B
      51FFC3A25AFFCAA862FF88FC85FF88FC85FF88FC85FF88FC85FF9BDE76FFBC9A
      50FFB49246FFAC893BFFB6BBB35FFFFFFF00FFFFFF00439FE3FF1389DFFF1389
      DFFF1389DFFF1389DFFF1389DFFF0C84DDFF80D6F6FF53BEF1FF54BEF1FF54BE
      F1FF54BEF1FF54BEF1FF5AC3F2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BABABAFFFFFFFF00FFFFFF00E1E1E151D9D9D957D5D5D55AFAFA
      FA0AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009E8F6EB8B9974CFFC19F
      57FFCAA861FFB8C772FF88FC85FF88FC85FFD5B571FF88FC85FFBDB666FFC09E
      55FFB8954AFFA6A850FFF3F3F30EFFFFFF00FFFFFF009E8F6EB8B9974CFFC19F
      57FFCAA861FFB8C772FF88FC85FF88FC85FFD5B571FF88FC85FFBDB666FFC09E
      55FFB8954AFFA6A850FFF3F3F30EFFFFFF00FFFFFF00F7FBFE09C8E7FD41C9E7
      FD41C9E7FD41C9E7FD41C9E7FD41C9E7FD41B5E0F96592E0FAFF91DFFAFF91DF
      FAFF91DFFAFF92E0FAFF5DC0F0F5FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BABABAFFFFFFFF00FFFFFF009E9E9EFFEEEEEE27EDEDED24ECEC
      EC27ECECEC26FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE14BB994FFFC4A2
      5AFFBFBB6CFF88FC85FF88FC85FF88FC85FF8DF784FFC4C274FFAECD72FFC2A1
      59FFB4A353FF8BBA85BEFFFFFF00FFFFFF00FFFFFF00EEEEEE14BB994FFFC4A2
      5AFFBFBB6CFF88FC85FF88FC85FF88FC85FF8DF784FFC4C274FFAECD72FFC2A1
      59FFB4A353FF8BBA85BEFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7F7FF28E8F8
      FF26E8F8FF26E8F8FF26FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BABABAFFFFFFFF00FFFFFF009E9E9EFFFFFFFF00FFFFFF00C9C9
      C96FCACACA6CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6B4AD64BAB2
      62FF96EB7EFFC7C376FFDFBE7EFFDFC886FF88FB84FF88FC85FFC6B268FF96E6
      7AFF87F082F8F9F9F907FFFFFF00FFFFFF00FFFFFF00FFFFFF00B6B4AD64BAB2
      62FF96EB7EFFC7C376FFDFBE7EFFDFC886FF88FB84FF88FC85FFC6B268FF96E6
      7AFF87F082F8F9F9F907FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD09D2D2
      D2BFCFCFCFBFBABABAFFFFFFFF00FFFFFF009E9E9EFFFFFFFF00FCFCFC07FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBC
      B85795EB7EFF8DF783FFDAB977FFDDBC7BFFD9B876FFCAB970FF8AF984FF87D4
      82E0F6F7F60AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBC
      B85795EB7EFF8DF783FFDAB977FFDDBC7BFFD9B876FFCAB970FF8AF984FF87D4
      82E0F6F7F60AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F043C3C3
      C3FFC0C0C0FFBABABAFFB3B3B3FFA9A9A9FF9E9E9EFF9A9A9AE78F8F8FE6B6B6
      B695BEBEBE84FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F6F60AA3B4A08185E081EB95EF81FF9FE17DFD88C086C4D6D7D631FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F6F60AA3B4A08185E081EB95EF81FF9FE17DFD88C086C4D6D7D631FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC07F8F8
      F811F8F8F813F3F3F320F3F3F320F3F3F320F3F3F320F3F3F320F6F6F618F8F8
      F811FCFCFC08FEFEFE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC07F8F8
      F811F8F8F813F3F3F320F3F3F320F3F3F320F3F3F320F3F3F320F6F6F618F8F8
      F811FCFCFC08FEFEFE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC06F7F7F716F0F0F028EEEE
      EE2EE6E6E644E7E7E743E7E7E743E0E0E055E5E5E548E7E7E743E7E7E743E7E7
      E742EEEEEE2EF4F4F41EF9F9F90FFFFFFF00DCDCDC5EC4C4C4D6C1C1C1EABEBE
      BEF2BFBFBFF2BEBEBEF7BDBDBDF8BDBDBDF8BDBDBDF8BDBDBDF9BFBFBFF2BEBE
      BEF3C0C0C0EAC3C3C3DFD6D6D670FDFDFD03DCDCDC5EC4C4C4D6C1C1C1EABEBE
      BEF2BFBFBFF2BEBEBEF7BDBDBDF8BDBDBDF8BDBDBDF8BDBDBDF9BFBFBFF2BEBE
      BEF3C3C5C8EAB1A180DFD6D6D770FDFDFD03FFFFFF00FFFFFF00FFFFFF00FCFC
      FC07F5F5F51DEEEEEE30E6E6E648E6E6E647E6E6E647EEEEEE31F2F2F225FAFA
      FA0FFFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F2F224E6E6E646DBDBDB63D3D3
      D37AD1D1D17FCDCDCD8AC7C7C79CC7C7C79BC7C7C79BC7C7C79CD1D1D180D1D1
      D17FD9D9D968E0E0E056EAEAEA39FAFAFA0CF1F1F186DCDCDCFFDEDEDEFFE0E0
      E0FFE4E4E4FFE5E5E5FFE6E6E6FFE2E2E2FFE3E3E3FFE8E8E7FFE7E7E7FFDFDF
      DFFFDDDDDDFFDDDDDDFFDADADAFFFFFFFF00F1F1F186DCDCDCFFDEDEDEFFE0E0
      E0FFE4E4E4FFE5E5E5FFE6E6E6FFE2E2E2FFE3E3E3FFE8E8E7FFE7E7E7FFE1E2
      E5FF9F761DFFC09646FFDBDCDDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEA
      EA39D8D8D86CCFCFCF84C7C7C79CC7C7C79BC7C7C79BCBCBCB90D4D4D478E3E3
      E34DFEFEFE03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BEBEDD43FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F099DEDEDEFFDFDFDFFF3D3D
      4BFF000006FF000000FF000000FFC5C5C6FFCBCBCDFF000000FF000000FFB7B7
      BAFFE0E0E0FFDFDFDFFFDBDBDBFFFFFFFF00F0F0F099DEDEDEFFDFDFDFFF3D3D
      4BFF000006FF000000FF000000FFC5C5C6FFCBCBCDFF000000FF000000FFB190
      45FFBC9443FFE9C784FFDCDCDCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0D3B952FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E6E6F21A0B0B81FF0B0B81FF0B0B81FF4747A0C0FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F099E0E0E0FFE2E2E2FFF6F6
      F6FF000008FFD7D7D8FFF7F7F6FFF3F3F2FF000008FFFFFFFFFFFFFFFFFF0000
      09FFECECEBFFDFDFDFFFDEDEDEFFFFFFFF00F0F0F099E0E0E0FFE2E2E2FFF6F6
      F6FF000008FFD7D7D8FFF7F7F6FFEAEAEAFFAFAFAFFFBCBCBBFFD4D5D3FFB990
      3CFFE2BB6BFFDFE1E4FFDEDEDEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A27F2DFFA27F2DFFB99D5EC3FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00292990DF0B0B81FF0B0B81FF0B0B81FF0B0B81FF0B0B81FF0B0B81FFE1E1
      F01FFFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1F199E1E1E1FFE2E2E2FFE4E4
      E4FFFFFFFEFF000006FF2E2E3BFFFBFBFAFF000011FF7B7B82FF95959BFF0000
      00FFE7E7E7FFE2E2E2FFE0E0E0FFFFFFFF00F1F1F199E1E1E1FFE2E2E2FFE4E4
      E4FFFFFFFEFF000006FF3F3F4CFFBCBCBCFF818188FFAFAFB2FFBFBFBDFFBAB9
      BAFFE3E6EBFFE2E2E2FFE0E0E0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B99B59CDA88332FFDFD0B25FFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0A
      82FF0A0A82FF0A0A82FF0A0A82FF0A0A82FF0A0A82FF0A0A82FF0A0A82FF0A0A
      82FF6C6CB498FFFFFF00FFFFFF00FFFFFF00F2F2F299E1E1E1FFE3E3E3FF6A6A
      73FFDDDDDDFFF6F6F5FF00000AFFFFFFFFFF000009FFFFFFFCFF919197FFF9F9
      F8FFE4E4E4FFE3E3E3FFE1E1E1FFFFFFFF00F2F2F299E1E1E1FFE3E3E3FF6A6A
      73FFDDDDDDFFF5F5F5FFC8C8C8FFDEDEDEFF5A5A68FFFCFCFBFFC0C0C4FFC4C4
      C4FFE7E7E7FFE3E3E3FFE1E1E1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D0D87FF0D0D
      87FF0D0D87FF0D0D87FF0D0D87FF0D0D87FF0D0D87FF0D0D87FF0D0D87FF0D0D
      87FF0D0D87FF4444A2C4FFFFFF00FFFFFF00F3F3F399E3E3E3FFE4E4E4FFC8C8
      CBFF000005FF3F3F4CFF000002FFFAFAFAFF676770FF000008FF141426FF2020
      30FFE5E5E5FFE4E4E4FFE0E0E0FFFFFFFF00F3F3F399E3E3E3FFE4E4E4FFC8C8
      CBFF000005FF3B3B49FFDCDCDAFFEBEBEBFFA1A1A6FF5F5F6BFFA0A0A7FFD5D5
      D4FFE1E1E1FFE4E4E4FFE0E0E0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C3A25ED1B28A39FFFDFDFB04FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000F0F8EFF0F0F8EFF0F0F
      8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F
      8EFF0F0F8EFF0F0F8EFF7B7BC08BFFFFFF00F3F3F399E2E2E2FFE6E6E6FFE7E7
      E7FFFAFAF9FFFFFFFFFFF6F6F5FFEDEDEDFFEBEBEBFFFFFFFDFFFFFFFEFFEAEA
      EAFFE6E6E6FFE4E4E4FFE2E2E2FFFFFFFF00F3F3F399E2E2E2FFE6E6E6FFE7E7
      E7FFFAFAF9FFFFFFFFFFDFDFDFFFD0D0D0FFF6F6F6FFFFFFFFFFF7F7F7FFD1D1
      D1FFE6E6E6FFE4E4E4FFE2E2E2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6A460D3B7903FFFD0B582A6FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E3EA8CD0F0F94FF0F0F94FF0F0F
      94FF0F0F94FF0F0F94FF0F0F94FF0F0F94FF0F0F94FF0F0F94FF0F0F94FF0F0F
      94FF0F0F94FF0F0F94FF0F0F94FFFFFFFF00D5D5E599C0C0D2FFC2C2D3FFC2C2
      D5FFC4C4D6FFC6C6D8FFC6C6D9FFC7C7DAFFC7C7DAFFC6C6D9FFC5C5D8FFC4C4
      D7FFC2C2D5FFC0C0D2FFBFBFD0FFFFFFFF00D5D5E599C0C0D2FFC2C2D3FFC2C2
      D5FFC4C4D6FFC6C6D8FFC7C7DAFFF6F6ECFFD1D1D1FFD0D0D0FFDCDCD9FFB9B9
      CFFFC2C2D5FFC0C0D2FFBFBFD0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBF9F40EBC9442FFBC9442FFE3D2B269FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121298FF121298FF121298FF1212
      98FF121298FF121298FF121298FF121298FF121298FF121298FF121298FF1212
      98FF121298FF121298FF121298FFA6A6D85F6C6CBB99060687FF00007DFFBDBD
      DFFF1B1B8FFF1F1F91FF4141A2FF0D0D8AFF0D0D8AFF0D0D8AFF0D0D8AFF0D0D
      8AFF0D0D8AFF0D0D8AFF0D0D8AFFFFFFFF006C6CBB99060687FF00007DFFBDBD
      DFFF1B1B8FFF1F1F91FF4141A2FF070787FF19198DFF40409CFF000081FF0D0D
      8AFF0D0D8AFF0D0D8AFF0D0D8AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EADDC352C19848FFC19848FFD9BF8F9BFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001414A1FF12129FFF12129FFF1212
      9FFF12129FFF12129FFF12129FFF12129FFF12129FFF12129FFF12129FFF1212
      9FFF12129FFF12129FFF12129EFF6262BFA87070C3990D0D94FFF7F7FCFF3030
      A3FF080891FF5353B2FF8F8FCDFF111196FF111196FF111196FF111196FF1111
      96FF111196FF111196FF111196FFFFFFFF007070C3990D0D94FFF7F7FCFF3030
      A3FF080891FF5353B2FF8F8FCDFF111196FF111196FF111196FF111196FF1111
      96FF111196FF111196FF111196FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F1E3C752FFFFFF00FFFFFF00FFFFFF00F6F0E426C69B4BFFC69B4BFFF7F1
      E624FFFFFF00FFFFFF00FFFFFF00FFFFFF002C2CB2FF1313A5FF1313A5FF1313
      A5FF1313A5FF1313A5FF1313A5FF0F0FA2FF1313A5FF1313A5FF1313A5FF1313
      A5FF1313A5FF1313A5FF1111A3FF7575C9957171CA991212A1FF1212A1FF1212
      A1FF06069EFF1010A0FF1212A1FF1212A1FF1212A1FF1212A1FF06069EFF0C0C
      9FFF1212A1FF1212A1FF1212A1FFFFFFFF007171CA991212A1FF1212A1FF1212
      A1FF06069EFF1010A0FF1212A1FF1212A1FF1212A1FF1212A1FF06069EFF0C0C
      9FFF1212A1FF1212A1FF1212A1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00DFC0
      85B8CAA151FFDEC391A1FFFFFF00FFFFFF00FFFFFF00D1AB68DDCAA151FFD8B5
      75CAFFFFFF00FFFFFF00FFFFFF00FFFFFF002B2BB7FF1212A7FF1616A9FF1616
      A9FF1616A9FF1616A9FF0B0BA3FF8D8DDEA44A4AC8FF1515A9FF1616A9FF1616
      A9FF1616A9FF1616A9FF2F2FB9FFF4F4FA0C7272D2991515ACFF1717ADFF4343
      B8FFEFEFEAFF9696D1FF1717ADFF1717ADFF1717ADFF0505A7FFF6F6EFFFFBFB
      F0FF1717ADFF1717ADFF1E1EB1FFFFFFFF007272D2991515ACFF1717ADFF4343
      B8FFEFEFEAFF9696D1FF1717ADFF1717ADFF1717ADFF0505A7FFF6F6EFFFFBFB
      F0FF1717ADFF1717ADFF1E1EB1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00EFDE
      BD65CEA352FFCFA554FFFFFFFF00FFFFFF00FFFFFF00CFA554FFCFA353FFE5CA
      98A1FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007272E1FF0D0DAAFF1414
      AEFF1111ACFF3D3DC3FFABABE46DFFFFFF00FFFFFF007575E3FF0C0CAAFF1313
      ADFF1212ADFF3131BEFF3030B7DDFFFFFF00E6E6F6296363DDFF3131C3FF6060
      CFFFF6F6F6FFA8A8E3FF3333C4FF3333C4FF3333C4FF2020BFFFF7F7F6FFFFFF
      F9FF3333C4FF4242CBFF1919B6FFFFFFFF00E6E6F6296363DDFF3131C3FF6060
      CFFFF6F6F6FFA8A8E3FF3333C4FF3333C4FF3333C4FF2020BFFFF7F7F6FFFFFF
      F9FF3333C4FF4242CBFF1919B6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E8C987FFD4A758FFD5A95AFFDAB26CE2D5A95AFFD4A85AFFDFBB73FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006060CCAD4E4E
      CDF18585DB96FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8D8F42F6262
      D4D84545C7E6C7C7EE3EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      FB38F0F0F0FFF6F6F696FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEEFFF4F4
      EFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      FB38F0F0F0FFF6F6F696FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEEFFF4F4
      EFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EDD5A0C2E6C27BFFDAAD5FFFE0B970FFEDCE8DFBFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01F9F9F910F2F2
      F222ECECEC33EBEBEB37E4E4E44AE3E3E34CE3E3E34CE9E9E93DEBEBEB37F0F0
      F028F6F6F619FBFBFB09FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD03F8F8F812F2F2
      F222EEEEEE2FEBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB36F1F1
      F125F7F7F716FCFCFC08FFFFFF00FFFFFF00FFFFFF00F9F9F910DDDDDD5DD1D1
      D180D3D3D3E4D7D7D7FDC1C1C1FFADADADFFA4A4A4FFAEAEAEFEB8B8B8F68AB7
      9BDDD3D4D378E5E5E547FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE03FEFEFE03FBFBFB0CFBFBFB0CFBFBFB0CFCFCFC07FEFEFE03FEFE
      FE02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE2ED8D8D86BB5A5
      84DEB59044FEBA9342FFBD9545FFBF9646FFBE9645FF22201DFFB99C59FEB4A4
      82E2D3D3D37BE4E4E44AFFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB75ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBCBEBDFF35B1
      63FF39B065FCFFFFFF00FFFFFF00FFFFFF00CCCCCC8DB4B4B4CFACACACE6A9A9
      A9EEA5A5A5F7A5A5A5F8A5A5A5F7A3A3A3FDA4A4A4FCA5A5A5F8A5A5A5F8A6A6
      A6F5A9A9A9EDAFAFAFDDBCBCBCB5EEEEEE2DC3C3C3A8AEABAAE7A7A5A5F6759D
      B1FF6291A9FF9DA3A5FFA7A4A2FFA4A4A4FFA5A3A2FFA5A19FFF779EB2FF6091
      A9FF9BA4A9FAADAAA8EEB6B6B6CBF8F8F811FFFFFF00C3AA72B0B08938FFB68F
      3EFFBB9443FFC09848FFC49B4BFFC79D4DFFC69C4CFFA5D6F0FFBAE1F3FF63C1
      E5FFB38C3BFFC9B17CA5FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFF31B86CFF2FB8
      6BFF2FB86BFF8ED8AF8AFFFFFF00FFFFFF00F2F2F22DB8B8B8FFB8B8B8FFB8B8
      B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
      B8FFB8B8B8FFB8B8B8FFB8B8B8FFFFFFFF00FFFFFF005AC6F8B67ACFF6FF149F
      D6FF008FCBFF3CA5DAFF0C8CCDFEFFFFFF0085CEF0947DD0F7FF0E9DD6FF008F
      CDFF34A4DBFF108FCEFFFFFFFF00FFFFFF00FFFFFF00AD8839F9B38C3BFFB992
      41FFC09747FFC69D4DFFCBA151FFCEA353FFCDA252FF93CCECFF69C6F4FF55BF
      F0FF5FA5A7FFAF8938FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFD0CE
      CDFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFF5FBA8BFF2AC176FF2AC1
      76FF2AC176FF2AC176FFF3FBF70EFFFFFF00F2F2F249C6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
      C6FFC8C5C8FF1AB52AFFC9C6C9FFFFFFFF00FFFFFF0059B4ECA671CBF6FF3899
      CCFF0071ADFF41A2D0FF1590DBF1FFFFFF0083C7EF8542B1E7FF369BCDFF1D8A
      C1FF0B82BAFF6DBFE7FFD9EDF729FFFFFF00FFFFFF00E5D9BF51B58E3DFFBC94
      43FFC39A4AFFCBA050FFD1A656FFD5A95AFFD3A858FFC5A662FF2FB4EAFF37B7
      EBFF40B9EDFF949058FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBFBC
      B9FFC4C2BFFFCDCCCBFFC0BFBEFFB0AFAFFFA9A8A8FF6ABB96FF3AC786FF25C9
      7EFF25C97EFF70DAA9A795E3BF7CFFFFFF00F5F5F549D1D1D1FFD1D1D1FFD1D1
      D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
      D1FFD1D1D1FFD5D0D5FFD1D1D1FFFFFFFF00FFFFFF009ADCFB71179CDDFF008B
      D2FF099CE2FF008EE0FF1E92D1FFAEE2FA5779CFF8FF119FD9FF0095D4FF229D
      D7FF379CD0FF008BDEFFB4DDF44CFFFFFF00FFFFFF00FFFFFF00D3BC8BA4BD95
      44FFC49B4BFFCCA151FFD3A858FFDAAE5EFFD7AB5BFFD0A455FFA0B29BFF30B5
      EAFF12ACE5FF21B0E8FFFDFEFE03FFFFFF00FFFFFF00FFFFFF00ECEBEB67ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFF4CC995FF21CF
      85FF21CF85FFBAEFD94FFFFFFF00FFFFFF00FAFAFA2DDDDDDDFFDCDCDCFFDCDC
      DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
      DCFFDCDCDCFFDCDCDCFFE4E6E8FFFFFFFF00E8F8FF187FD2F9FF1BA0D9FF0593
      CBFF2193CAFF46A7D9FF89CAEE76C1E2F63E2DB4F2FF84CCF0FF1E86BEFF0678
      B3FF66B9E3FF9ACEEA69FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F3
      EA1EC59E51FFE3C07BFFFFD796FFFFD796FFFFD796FFFBD799FFC9A051FF7EC3
      DFF925B1E8FFCED1DDFF16169AF9FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFF4ACD99FF1ED4
      8BFF1ED48BFFB9F1DB4FFFFFFF00FFFFFF00FFFFFF00A48032FFA98941FFA989
      41FFA98941FFA98941FFA98941FFA98941FFA98941FFA98941FFA98941FFA989
      41FFA98941FFA98A42FFCBB68891FFFFFF00EDF8FE12079EE8FF91D9FBFF24A1
      D3FF0087C2FF3FA2D2FF2997CFFFFFFFFF000089DCFF0096E2FF09A3E3FF0098
      DDFF008BDEFF6FBCE892FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5ECDA70C0DCF3FFC0DCF3FFC0DCF3FFC7D9E8EEFEFEFE02FFFF
      FF007979B2FF12129CFFA1A1E06CFFFFFF00FFFFFF00FFFFFF00D3D3D3FFE4E3
      E3FFC0BEBBFFB1AEABFFB1AEABFFB1AEABFFB1AEABFFB1AEABFF46CC98FF1CD7
      90FF1CD790FFB8F2DC4FFFFFFF00FFFFFF00FFFFFF00C2A66ABBAB8735FFAB87
      35FFAB8735FFAB8735FFAB8735FFAB8735FFAB8735FFAB8735FFAB8735FFAB87
      35FFAB8735FFAB8735FFFFFFFF00FFFFFF00FFFFFF0088CAF17759C1F3FF4AA4
      D5FF0376B0FF3095C7FF2498DDFFFFFFFF006DCEFAA590D6F8FF1D9ED1FF0087
      C1FF4DAAD7FF2594CCF4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B0D3EFFFCDE2F5FFB5D5F0FFFFFFFF00FFFFFF00FFFF
      FF00F6F6FB0AEEEEF913FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBAB7
      B5FFBAB7B5FFBFBCBAFFBCBAB9FFB4B2B1FFB0AEADFFB6B4B2FF74D0A8FF52E1
      A3FF52E1A3FFD8F6EB32FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58E3DFFB58E
      3DFFB58E3DFFB58E3DFFB58E3DFFB58E3DFFB58E3DFFB58E3DFFB58E3DFFB58E
      3DFFB58E3DFFB58E3DFFFFFFFF00FFFFFF00FFFFFF00F3FBFF0C0A95E0FF0099
      E4FF019FE6FF0091E0FF79C8F0FF1F8CC3FF0274AFFF46ACE0FF00ADECFF02A9
      EAFF0096E2FF0085DAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D7E8F7FDD7E8F7FFD7E8F7FFF4F8FC3DFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E4E37FEAEA
      EAFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFFB7B6B5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD9545FFBD94
      45FFBD9445FFBD9445FFBD9445FFBD9445FFBD9445FFBD9445FFBD9445FFBD94
      45FFBD9445FFE7D8BB5DFFFFFF00FFFFFF00FFFFFF00FFFFFF0026A3E3D908B8
      EFFF05BEF2FF26B0F2FF0095E0FF009FE6FF009CE7FF038EDEFF3CA2D2D0A1E1
      FA64EAF6FD15FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4F0F96BC2DCF3FFC2DCF3FFC2DCF3FFC2DCF3FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FEECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2CCA186C69D
      4BFFC69D4BFFC69D4BFFC69D4BFFC69D4BFFC69D4BFFC69D4BFFC69D4BFFC69D
      4BFFC69D4BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0035B7F4F08BCFF3FF1B94C8FF0380B9FF60B5DFFF70BBE299FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ACCFEDFFADD1EFFFADD1EFFFADD1EFFFADD1EFFFABAEB766FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFDCDBD9FFB8B5B3FFB0ADAAFFB0ADAAFFB0ADAAFFB0ADAAFFB6B4B2FFCACA
      C9FF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFA4
      54FFCFA454FFCFA454FFCFA454FFCFA454FFCFA454FFCFA454FFCFA454FFCFA4
      54FFD0A75AF5FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00008ADEFF009BE5FF02AAEAFF03A5E8FF008FE0FF48ABE4B7FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F6F70C99C4EBFF99C4EBFF99C4EBFF99C4EBFF98C3E9FF2A3349FEFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CAC9C8FFBFBC
      BAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBC
      BAFFBEBCB9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DAB1
      67EBD7AB5CFFD7AB5CFFD7AB5CFFD7AB5CFFD7AB5CFFD7AB5CFFD7AB5CFFD7AB
      5CFFFCF9F411FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BCE6F94379D8F88E7CD4F689D3EDFB2CFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCC2CC5140577BFF84B8E6FF547095FF2F3B53FF2B364DFF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E1DFBACFCD
      CAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCD
      CAFFDCDAD9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01304262FF2A3349FF2C3851FF2C3851FF2C3851FF363F55F5FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFA
      FA26EDEDECD1E7E6E6FFE3E1E0FFE1DFDEFFE2E0DFFFE5E4E3FFE9E8E7FCF2F2
      F17DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E7EA20353D51FF2D3B55FF2D3B55FF4F5A6EE1FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD04FDFDFD04FDFDFD04FDFDFD04FDFDFD04FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01F9F9F910F2F2
      F222ECECEC33EBEBEB37E4E4E44AE3E3E34CE3E3E34CE9E9E93DEBEBEB37F0F0
      F028F6F6F619FBFBFB09FFFFFF00FFFFFF00FDFDFD05F8F8F813F2F2F223EEEE
      EE2DEBEBEB37EBEBEB38E3E3E34CE3E3E34CE3E3E34CE5E5E547EBEBEB37EBEB
      EB36F1F1F125F6F6F619FBFBFB0BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7D7D76EBFBFBFB1B5B5B5CEB2B0
      AFDBBEB3ACD9AFADACE3A8A8A8F1A8A8A8F2A8A8A8F2AFABADE747AD6DFF52AC
      73FFB5B5B5CFBCBCBCBACACACA94FAFAFA0DFFFFFF00F9F9F910DDDDDD5DD1D1
      D180D3D3D3E4D7D7D7FDC1C1C1FFADADADFFA4A4A4FFAEAEAEFE7BB18FF761AF
      7EF366B283EAE1E3E24CFFFFFF00FFFFFF00ECECEC33DBDBDB63C7C7C7A8BEBE
      BEC3BCBCBCCAB8B8B8D5B8B8B8D5B8B8B8D5B8B8B8D5B8B8B8D5B9B9B9D4BEBE
      BEC3C1C1C1BAD3D3D379E3E3E34EFBFBFB0BDFDFDF58C3C3C3A6B6B6B6C8B1B1
      B1D6ADADADE3ADADADE3A8A8A8F0A8A8A8F0A8A8A8F0A9A9A9ECAEAEAEE2ADAD
      ADE2B4B4B4CFBCBCBCB8CACACA92FAFAFA0CFFFFFF00FFFFFF00FFFFFF0087C7
      EE7C0088DEFF56ADE6ABFFFFFF00FFFFFF00FFFFFF00FFFFFF002FB769FF2EB7
      69FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB75ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFF4EB273FF35B1
      63FF35B163FFECF7F017FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3C3C3FFC3C3
      C3FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5
      C5FFC3C3C3FFD3D3D3B7FFFFFF00FFFFFF00FFFFFF00DDDDDCFFDDDDDEFFDFDF
      DFFFFEFEFE02FBFBFB0CE1E1E2FFE1E1E2FFE1E1E2FFE8E8EAF6F9F9F90FEDED
      EE8BDEDEDEFFDCDCDDFFDCDCDDCAFFFFFF00FFFFFF00FFFFFF00FFFFFF000093
      E3FF008FE2FF0089DEFF0086DCFFFFFFFF00FFFFFF00FFFFFF002BBF74FF2BBF
      74FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFF4AB87AFF2FB8
      6BFF2FB86BFFECF8F117FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C4C4FFC4C4
      C4FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBCBAB7FFBEBD
      BAFFC4C4C4FFD4D4D4B7FFFFFF00FFFFFF00FAFAFA39D9D9DBFFDBDBDDFFDEDE
      DDFFFFFFFF00F1F1F170DFDFE1FFDFDFE1FFDFDFE1FFE0E0DFFFFFFFFF00E3E3
      E4D2DDDDDCFFDBDBDCFFD9D9DAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF000099
      E8FF008DE3FF8FEFFFFF0080DFFF20BB8BFF52D494CC52D296CB27C67CFF27C6
      7CFF50D296CD50D597CD67DAA4B3FFFFFF00FFFFFF00FFFFFF00D3D3D3FFD0CE
      CDFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFF43BE81FF29C2
      77FF29C277FFEBF9F217FFFFFF00FFFFFF00FFFFFF00FFFFFF00CACACAFFCACA
      CAFFA68960FF9A7643FFA98E68FFB8B3A9FFB7B1A7FFB7B1A7FFB7B1A7FFBEBA
      B3FFCACACAFFD8D8D8B7FFFFFF00FFFFFF00FBFBFB38DDDDDEFFDFDFE0FFE1E1
      E1FFE2E2E1FFE3E3E2FFE2E2E4FFE4E4E4FFE2E2E4FFE3E3E2FFE1E1E3FFE1E1
      E0FFDEDEE0FFDEDEDEFFDCDCDCFFFFFFFF00FFFFFF006ED0FB911EACEFE1009E
      ECFF76E3FBFF77EBFFFF77E4FFFF1CCB7EFF20CC81FF20CC81FF21CD82FF21CD
      82FF20CC81FF20CC81FF20CB82FFFFFFFF00FFFFFF00FFFFFF00C1BFBDFFBFBC
      B9FFC4C2BFFFCDCCCBFFC0BFBEFFB0AFAFFFA9A8A8FF72C09DFF33C986FF24CB
      81FF24CB81FF8DE4BD84BBEFD854FFFFFF00FFFFFF00FFFFFF00D0D0D0FFD0D0
      D0FFD0D0D0FF9D7025FFD0D0D0FFD0CECCFFCFCECCFFCFCECCFFD0D0D0FFD0D0
      D0FFD0D0D0FFDCDCDCB7FFFFFF00FFFFFF00FBFBFB38DFDFDFFFF0F2F7FFF0F5
      F8FFF2F6F8FFF3F6F9FFEDEEF3FFE6E6E8FFE2E0DFFFE3E1DEFFE2DFDEFFE0DE
      DDFFDFDDDCFFDEDCDAFFDEDEDFFFFFFFFF0068D1FA9700ACF3FF00A9F2FF43C3
      F1FF6DDDF7FF73E6FFFF52A7BEFF5EDEDAFF75DDDBFF1AA3CDFF1ED288FF1CD1
      88FFC3F5DD58C2F8E05BD5F9EA36FFFFFF00FFFFFF00FFFFFF00ECEBEB67ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FF78CFA4FF20D188FF20D1
      88FF20D188FF24D38AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D5D5D5FFD5D5
      D5FFD5D5D5FFC5AE84FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFE0E0E0B7FFFFFF00FFFFFF00FCFCFC38E5E6EBFF906927FF8C5F
      1FFF9C803FFF8C5F1FFFA9A159FFE8E8E8FFF8FBFFFFF7FAFFFFF6F9FEFFF4F8
      FCFFF2F5FBFFF1F5F9FFE0E0E1FFFFFFFF0032C5FAD800B0F8FF00AAF4FF7CE8
      FFFF78EFFFFF3D8295FF1B4450FF2B6270FF71E1FCFF8AE5FFFF1AD68CFF1DD9
      8AFFF8FBFE07FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFF3CDF99FF1CD6
      8EFF1CD68EFFCCF4E247FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9D9D9FFD9D9
      D9FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFABA498FFB5AF
      A5FFD9D9D9FFE3E3E3B7FFFFFF00FFFFFF00FCFCFC38E7E7EBFFBBB37DFFB19E
      64FFA07B36FFBBB37CFFB7AD72FFEDEDEDFFE2E0DEFFE1E0DFFFE1DFDEFFDFDE
      DDFFDEDCDAFFDBD9D7FFE2E2E3FFFFFFFF00FFFFFF00B0E8FD540BB6F9FF00AC
      F7FF71DDF9FF72E2FDFF75EBFFFF11323CFF285C6AFF7CEBFFFF15D78EFF18DD
      8BFF0085E0FFB7DDF548FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFE4E3
      E3FFC0BEBBFFB1AEABFFB1AEABFFB1AEABFFB1AEABFFB1AEABFFADB0ABFF1AD9
      92FF59D9A0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDDDDFFDDDD
      DDFFC8BCACFFB7A286FFCABFB1FFDCDBDAFFDBDAD9FFDBDAD9FFDBDAD9FFDCDC
      DBFFDDDDDDFFE6E6E6B7FFFFFF00FFFFFF00FDFDFD38E8E9ECFFC5BE8FFF9D6B
      19FFA27426FFB7A066FFC1B987FFF2F4F5FFAC9D8EFFAD9E8DFFAC9F8DFFAB9E
      8CFFAA9D8BFFA69785FFE5E6E6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF003DC5
      F9FF00B1F7FF36B8EBFF72E1FCFF72E4FFFF2C6271FF448FA2FF55C2BFFF34BC
      DCFF008DE0FF008ADFFF0F8DDEF0FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBAB7
      B5FFBAB7B5FFBFBCBAFFBCBAB9FFB4B2B1FFB0AEADFFB6B4B2FFBAB7B5FF91CC
      AFFFBAB7B5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1E1E1FFE1E1
      E1FFE1E0DFFFBBA178FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
      E1FFE1E1E1FFE9E9E9B7FFFFFF00FFFFFF00FDFDFD38E8E9ECFFCDC49EFFC1A9
      6FFFA87721FFCFCBA8FFCAC197FFF0F0F0FFD7D2CBFFE6E5E4FFD3CDC5FFEFF1
      F2FFD2CCC5FFE9E9EAFFE4E4E6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0045C8FAEB00B1F8FF00A3EAFF78E5FDFF72E4FFFF001218FF7AECFFFF0098
      E8FF1FA1E8E00090E1FF008AE0FFD5EBF92AFFFFFF00FFFFFF00E5E4E37FEAEA
      EAFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFFB7B6B5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E4FFE4E4
      E4FFE4E4E4FFA87A29FFE4E4E4FFC3BFB7FFC1BCB4FFC1BCB4FFE4E4E4FFE4E4
      E4FFE4E4E4FFEBEBEBB7FFFFFF00FFFFFF00FDFDFD38E8E8E9FFD9D4B7FFD9D4
      B8FFDAD6BAFFD9D4B7FFDFDCC9FFF0F0F2FF887156FFC7C0B5FF816A4CFFF6F8
      FBFF826A4EFFEFF0F2FFE5E5E7FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099E2FC6E02B4F7FF00AAF5FF77E2FAFF7AE8FFFF009DEDFF48B8
      EFB7009AE9FF0096E6FF31A6E8CEFFFFFF00FFFFFF00FFFFFF00D3D3D3FEECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E7FFE8E8
      E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE7E7E7FFEDEDEDB7FFFFFF00FFFFFF00FEFEFE1EECECECFFEBEBEBFFEDED
      EDFFF0F0F0FFF0F0F0FFF1F1F1FFF3F3F3FFF3F3F3FFF2F2F2FFF0F0EFFFEFEF
      EFFFEDEDECFFEAEAEAFFEBEBEBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCFEFF0335C3F9FF00B1F8FF00A1EBFF3FBCF3C000A4
      EFFF42B8F0BDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFDCDBD9FFB8B5B3FFB0ADAAFFB0ADAAFFB0ADAAFFB0ADAAFFB6B4B2FFCACA
      C9FF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAEAEAFF1486
      DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486DAFF1486
      DAFFD7E1E9FFEFEFEFB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042C7FAF800AFF8FF00AEF5FF00AA
      F1FFADE3FC52FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CAC9C8FFBFBC
      BAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBC
      BAFFBEBCB9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECECFF33A2
      EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF33A1EBFF7C80
      84FF7F8080FFDDDDDD56FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009DE2FC6E00B2F8FF00AE
      F6FFCEEFFD31FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E1DFBACFCD
      CAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCD
      CAFFDCDAD9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6868
      68FFC7C7C757FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF1072D8
      FF8DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFA
      FA26EDEDECD1E7E6E6FFE3E1E0FFE1DFDEFFE2E0DFFFE5E4E3FFE9E8E7FCF2F2
      F17DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFC1C1
      C157FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F41EE7E7E743DCDCDC61D6D6
      D671D1D1D17FD0D0D081C8C8C899C8C8C899C8C8C899CACACA93D1D1D17FD2D2
      D27EDADADA65E2E2E250EDEDED31FDFDFD05FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE01FEFEFE01FEFEFE01FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01FEFE
      FE02FDFDFD04FDFDFD04FCFCFC08FCFCFC08FCFCFC08FCFCFC07FDFDFD04FDFD
      FD04FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA0DF2F2F224EBEBEB37E3E3
      E34CE0E0E056DADADA65DADADA65DADADA650C9FE7FBDADADA650BA0E7FBE2E3
      E44CE7E7E743EDEDED31F6F6F619FEFEFE02CECECE88B7B6B5D0A0A1A5EB9294
      9BF891949AFB909399FE909399FE909399FE909399FE909399FE909399FD9296
      9BFA92969DF5BDB9B6D7BDBDBDB8F5F5F51AD2D2D27CB9B9B9C3999DA3E68B91
      9AF38B9199F6898F98F9898F98FA898F98FA898F98FA898F98FA8A9098F8A083
      5CFAA18054F7B2B0AED5C2C2C2AAF4F4F41DFFFFFF00FCFCFC08F9F9F911F5F5
      F51EF1F1F128EEEEEE31EEEEEE31EEEEEE31EEEEEE31EEEEEE31EFEFEF30F5F5
      F51DF5F5F51CFAFAFA0FFEFEFE03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0086ADBCC6D4DFE3477FA3B0D9FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00415A82C80D2F64FF0E32
      69FF10356EFF113872FF123975FF133A76FF123A76FF123873FF10366FFF0F33
      6BFF0D3065FF06285DFFFFFFFF00FFFFFF00FFFFFF0053698DBF0D2F64FF0E32
      69FF10356EFF113872FF123975FF133A76FF123A76FF173A6FFFA3620FFFA969
      12FFB37723FFA2610EFFE6D8C742FFFFFF00F2F1F125138CDAF60A89DAFB0989
      DAFC0888DAFD0888DAFD0888DAFD0888DAFD0888DAFD0888DAFD0888DAFD0989
      DAFC0989DAFC0989DAFBB8CCD980FDFDFD04FFFFFF00E6F4FC19009EEBFF6AC3
      F095FFFFFF00009BE9FF009BE9FFFFFFFF009FD6F265009EEBFFB9E1F54BFFFF
      FF00009DEAFF069BE8F9FFFFFF00FFFFFF00FFFFFF0015396EFF0E3168FF1035
      6EFF123772FF133B78FF123D7CFF0C387AFF133D7DFF133C79FF123875FF0F36
      6FFF0D3268FF0A2C61FFC1CBD942FFFFFF00FFFFFF0015386DFF0E3168FF1035
      6EFF123873FF133B78FF133D7CFF143E7DFF143E7DFFA26519FFB16D17FFBD77
      1DFFD6A666FFB06C16FFA86612FFFFFFFF00CDEAFC32048CDFFF048CDFFF048C
      DFFF048CDFFF048CDFFF0087E2FF76C1EEFF5DB7EEFF0086DFFF048CDFFF048C
      DFFF048CDFFF048CDFFF048CDFFFFFFFFF00FFFFFF00E6F6FD1911BAF9FF72CF
      F797FFFFFF0013B5F6FF13B5F6FFFFFFFF009DDDF96711BBFAFFB5E5FA4EFFFF
      FF0011B7F8FF18B3F4FBFFFFFF00FFFFFF00FFFFFF00173970FF0F336BFF1137
      70FF133B78FF143E7FFF0C397EFFE4DFD9FF2D538CFF133F7FFF133C79FF1238
      73FF0E346BFF0B2E64FFC3CCDA41FFFFFF00FFFFFF0016396FFF0F336BFF1137
      71FF133B78FF143E7EFF164182FFD0D0D1FF385B91FFB8731EFFBF771FFFC77C
      23FFD9A568FFBD751EFFB36E18FFFFFFFF00D1ECFC2F0690E0FF0690E0FF0690
      E0FF0690E0FF8AC8ECFF6D6D70FFA29F87FF8F8D82FF79726FFF0C95E8FF0690
      E0FF0690E0FF0690E0FF0690E0FFFFFFFF00FFFFFF00FFFFFF00AFB0B0D99E9E
      9EFF9E9E9EFF9E9E9EFFEEEFEF2BFFFFFF00FFFFFF00A2A2A2FF9F9F9FFF9F9F
      9FFF9F9F9FFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00163B71FF0D326AFF183E
      7AFF1F4A8BFF24569EFF124794FFD7D4D2FF3864A3FF21539BFF224F94FF1B44
      81FF0D3269FF0C2F64FFC3CCDA41FFFFFF00FFFFFF00163A70FF0F346DFF183F
      7CFF1E4A8BFF22539AFF1D4E96FFD1D1D2FF436BA5FFB38043FFCC7F26FFD082
      28FFD4974FFFC97D24FFC3802CFFFFFFFF00D2EDFD2F0B93E4FF0B93E4FF0B93
      E4FF0090E7FF6D6D71FFB79540FFA27D2BFFA07B29FFD7C179FF938781FF0390
      E3FF0B93E4FF0B93E4FF0B93E4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF0026A5
      E8DB0F9BE2FFB8E0F54CFFFFFF00FFFFFF00FFFFFF00FFFFFF0016A0E7EB119C
      E3F8F7FBFD08FFFFFF00FFFFFF00FFFFFF00FFFFFF001D4D92FF1D4F9BFF1D4F
      9AFF1D4F9AFF1D4F9AFF1D4F9AFF094092FF1A4C98FF1D4F9AFF1D4F9AFF1D4F
      9AFF1C4F9AFF1E529DFFBFCADB46FFFFFF00FFFFFF001D4C91FF1D4F9AFF1D4F
      9AFF1D4F9AFF1D4F9AFF1D4F9AFF1D4F9AFF1D4F9AFF1D4F99FFDC9441FFE18F
      33FFDE8C31FFD38730FFCECCCD52FFFFFF00D2EEFD2F0F99E6FF0F99E6FF0F99
      E6FF7EC9F2FFA29E87FFB28C3BFFB48E3DFFB48E3DFFB18936FF6F7075FF0096
      EAFF0F99E6FF0F99E6FF0F99E6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF0000A7
      F0FF00AEF5FF80D1F67FFFFFFF00FFFFFF00FFFFFF00FFFFFF0000AAF2FF00AC
      F4FFE0F3FC1FFFFFFF00FFFFFF00FFFFFF00FFFFFF001E529EFF1E529EFF1E52
      9EFF1E529EFF1E529EFF1E529EFF1E529EFF1E529EFF1E529EFF1E529EFF1E52
      9EFF1E529EFF1E529EFF698CC1AAFFFFFF00FFFFFF001E529FFF1E529FFF1E52
      9FFF1E529FFF1E529FFF1E529FFF1E529FFF1E529FFF1E529FFF1E529FFF445E
      8AFF506284FF1E529FFF6B8DC0A7FFFFFF00D3EFFE2F119CE7FF119CE7FF119C
      E7FF6AC4F4FF8E8C80FFC29747FFC59A4AFFC59A4AFFCBA04EFF706F73FF049A
      EBFF119CE7FF119CE7FF119CE7FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00BEE8
      F9558CBED0FFF5FAFC0FFFFFFF00FFFFFF00FFFFFF00FFFFFF00A4D3E5AA96C9
      DCD2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001E54A4FF1E54A4FF1E54
      A4FF1E54A4FF1E54A4FF1E54A4FF1E54A4FF1E54A4FF1E54A4FF1E54A4FF1E54
      A4FF1E54A4FF1E54A4FF698EC5AAFFFFFF00FFFFFF001F55A5FF1F55A5FF1F55
      A5FF1F55A5FF1F55A5FF1F55A5FF1F55A5FF1F55A5FF1F55A5FF1F55A5FF1F55
      A5FF1F55A5FF1F55A5FF6C8FC4A7FFFFFF00D4F0FE2F16A2EBFF16A2EBFF16A2
      EBFF089DECFF76706DFFE6CE83FFDDB15FFFE1B664FFADA583FFC1B3ADFF13A0
      EBFF16A2EBFF16A2EBFF16A2EBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C5C5C5EEC4C4C4EFC4C4C4EFC1C1C1FFC3C3C3F6C4C4C4EFC4C4C4EFE4E4
      E46CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00285EAFFF2157ABFF2157
      ABFF2157ABFF2157ABFF2157ABFF2157ABFF2157ABFF2157ABFF2157ABFF2157
      ABFF2157ABFF2056AAFF7094CBA5FFFFFF00FFFFFF00285EAFFF2158ABFF2158
      ABFF2158ABFF2158ABFF2158ABFF2158ABFF2158ABFF2158ABFF2158ABFF2158
      ABFF2158ABFF2158ABFF7597CB9FFFFFFF00D4F0FF2F19A5EDFF17A5EDFF39B0
      EBFF19A5EDFF20ADF3FF8F847EFF6D6F73FF6F6F72FFC0B2ABFF059FEDFF0BA0
      ECFF0BA0ECFF0EA2ECFF18A5ECFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000598E6FA009BE9FF0099E8FFECF7FD13FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F9FD1952C63B7FF1E58
      AFFF1F58AFFF205BB2FF1E58AFFF1E58AFFF1E58AFFF1F59B1FF2059B2FF1E58
      AFFF1D57AEFF4274C1FFFFFFFF00FFFFFF00FFFFFF0083A3D3922D64B7FF225B
      B1FF225BB1FF225BB1FF225BB1FF225BB1FF225BB1FF225BB1FF225BB1FF225B
      B1FF225BB1FF3B6FBEFFFEFEFE01FFFFFF00D6F2FF3012A6EDFF16A8EEFF38B1
      EBFF17A8EEFF17A8EEFF0FA6EEFF09A7F3FF0BA6F2FF15A7EEFF24AAECFFCCEB
      FBFFCBEAFAFF76C5EEFF44BDF3FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000A3EEFF00AAF3FF00A7F1FFD8F0FB27FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0007275AFFFFFFFF00FFFFFF00FFFFFF00B9C3D44A798CA98CFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000D2F64FFFFFFFF00FFFFFF00FFFFFF00ADBACE58788DAC8FFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0081D5FC954A9FC6FF499E
      C5FF88D9FDA088DAFDA288DAFDA288DAFDA288DAFDA288DAFDA288DAFDA288DA
      FDA288DAFDA287D9FDA2EEF9FE14FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0017B3F4FF00B8FBFF00B1F7FFE2F5FD1EFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00113A77FF103978FF103978FF103978FF103978FF8BA0C183FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00143D7AFF133C7AFF133C7AFF133C7AFF133C7AFF8DA1C07FFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E2E25FE2E2
      E25EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA0CF3F3F31FEDEDED31EBEB
      EB38E3E3E34CE3E3E34CE3E3E34CDDDDDD5DE2E2E251E3E3E34CE3E3E34CE4E4
      E44AEBEBEB37F1F1F127F6F6F617FDFDFD04FFFFFF00FBFBFB0BF5F5F51AF2F2
      F224EEEEEE2EEEEEEE2EE7E7E743E7E7E743E7E7E743E8E8E83EEEEEEE2EEEEE
      EE2DF5F5F51BF9F9F910FDFDFD03FFFFFF00FFFFFF00FBFBFB0BF5F5F51CEFEF
      EF2CEBEBEB37E7E7E743E3E3E34CE3E3E34CE6E6E646EBEBEB37EEEEEE2FF3F3
      F31FFAFAFA0DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC06F6F6
      F617F0F0F028EEEEEE2EE7E7E741E6E6E643E7E7E743EBEBEB36EEEEEE2EF3F3
      F320F8F8F812FDFDFD03FFFFFF00FFFFFF00F1F1F127E4E4E449DBDBDB64D3D3
      D379D1D1D17FCECECE89C8C8C899C8C8C899C8C8C899C8C8C899D1D1D180D1D1
      D17FD9D9D96ADFDFDF58E9E9E93CF9F9F90FECECEC33DBDBDB63C7C7C7A2BEBE
      BEBFBCBCBCC5B8B8B8D2B8B8B8D1B8B8B8D1B8B8B8D1B8B8B8D1B8B8B8D1BFBF
      BFBDC1C1C1B5D4D4D472E3E3E34EFCFCFC08FDFDFD03D8D8D87FC7C7C7C7C2C2
      C2D9C0C0C0E2BEBEBEE8BEBEBEE8BEBEBEE8BEBEBEE8BFBFBFE4C2C2C2DAC7C7
      C7C9D3D3D393FCFCFC08FFFFFF00FFFFFF00FFFFFF00FBFBFB0ADDDDDD5BD1D1
      D178CCCCCCD7DCDCDCFDC9C9C9FFB0B0B0FFA4A4A4FFABABABFFB7B7B7FBBFBF
      BFC5D4D4D475E4E4E44BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BFBFDD46FFFFFF00FFFFFF00FCFEFD0333B3
      65FF34B366FDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFD4D4D4BEFFFFFF00FFFFFF00FFFFFF00DDDDDDFFD8D3CEFFD6CF
      C8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CFC8FFD6CF
      C8FFDDDDDDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB1DE9E9
      E9FFFCFCFCFFE4E4E4FFC5C5C5FFAFAFAFFFA4A4A4FFAAAAAAFFBABABAFFCFCF
      CFFFA4A4A4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D8D8EB280B0B81FF0B0B81FF0B0B81FF4F4FA4B7F8FBFB072EBB
      6FFF2EBB6FFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFD6D6D6BCFFFFFF00FFFFFF00FFFFFF00DFDFDFFFD6C7B8FFEDE6
      DDFFEDE6DDFFCEC2B7FFDFDFDFFFDCDAD8FFDFDFDFFFDFDFDFFFDFDFDFFFDDDB
      DAFFDFDFDFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E3ABE8E8
      E8FFFCFCFCFFE6E7E7FFC7C7C7FFAFB0B0FFA3A3A4FFAAAAABFFBBBBBBFFD0D0
      D0FFA5A5A5FFDADADA4AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00363697D20B0B81FF0B0B81FF0B0B81FF0B0B81FF0B0B81FF0B1080FF29C2
      78FF29C278FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9C9FFC9C9
      C9FFC9C9C9FFC9C9C9FFC9C9C9FFCACACAFFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
      C9FFC9C9C9FFDADADABCFFFFFF00FFFFFF00FFFFFF00E2E2E2FFCCBBABFFDACF
      C3FFC2AB7EFFA5843BFFA88840FFA7873FFFA88840FFB39A60FFD6CDC5FFD4CA
      C1FFE2E2E2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E4E4AAD9D9
      D8FFABA8A4FFB0ADAAFFB2AFABFFB2AFACFFB3B0ADFFB3AFACFFB1AEABFFB0AE
      AAFFA4A5A4FFDADADA49FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFD030B0B
      83FF0B0B83FF0B0B83FF0B0B83FF0B0B83FF24CA80FF24CA80FF24CA80FF24CA
      80FF24CA80FF24CA80FF24CA80FF28CB82FAFFFFFF00FFFFFF00D0D0D0FFD0D0
      D0FFD0D0D0FFD0D0D0FFD4D8E1FF9C7723FFD3D8DFFFD0D0D0FFCECBC7FFD1D2
      D4FFD0D0D0FFDEDEDEBCFFFFFF00FFFFFF00FFFFFF00E4E4E4FFD6C7B8FFEDE6
      DDFFB29048FFA48735FF35B366FF33B467FF998B3AFFAA8433FFE4E4E4FFE2E0
      DFFFE4E4E4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDBD9ACBDBA
      B7FFBBB8B4FFCECDCBFFC3C4C3FFB0B1B0FFA7A6A6FFB0AFAFFFBDBBB9FFBDBA
      B7FFBFBCB9FFE5E5E44BFFFFFF00FFFFFF00FFFFFF00F7F7FB080D0D88FF0D0D
      88FF0D0D88FF0D0D88FF0D0D88FF0D0D88FF34D590FF2ED38DFF2ED38DFF21D0
      86FF21D087FF2ED38DFF2ED38DFF4FDB9FE4FFFFFF00FFFFFF00D5D5D5FFD6D6
      D9FFD6D6D9FFB39A64FFA27C28FFA47E2CFFC5B89FFFD6D8DAFFD7DAE0FFA98C
      4BFFD5D5D5FFE2E2E2BCFFFFFF00FFFFFF00FFFFFF00E6E6E6FFC4B09DFFCBBA
      A9FFB8934AFF23D58EFFB1903FFFB48E3DFF1DD48BFFB38F3EFFCABAABFFC9B9
      A9FFE6E6E6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEB
      EBFFFCFCFCFFE4E4E4FFC5C5C5FFAFAFAFFFA4A4A4FFAAAAAAFFBABABAFFD0D0
      D0FFA1A1A2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000F0F8EFF0F0F8EFF0F0F
      8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F0F8EFF0F158EFF1DD5
      8CFF1DD58CFF0F0F8EFF7E84C28AFFFFFF00FFFFFF00FFFFFF00D9D9D9FFD0C8
      B8FFAF8938FFAF8938FFAF8938FFAF8938FFC0AB7EFFD9D9DAFFB59551FFC4B0
      87FFDADBDEFFE6E6E6BCFFFFFF00FFFFFF00FFFFFF00E8E8E8FFD6C7B8FFEDE6
      DDFFC5A15AFFC09847FFC09847FFC09847FFC09847FFC09847FFE8E8E8FFE5E4
      E2FFE8E8E8FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E3ACE8E8
      E8FFFCFCFCFFE4E4E4FFC6C6C6FFAFB0B0FFA3A3A4FFAAAAAAFFBABABAFFCFCF
      CFFFA5A5A5FFD9D9D94BFFFFFF00FFFFFF004848ADC3101094FF101094FF1010
      94FF101094FF101094FF101094FF101094FF101094FF101094FF101694FF1BD8
      91FF1BD891FF101094FF101094FFFFFFFF00FFFFFF00FFFFFF00DDDDDDFFD5CD
      BDFFB8903FFFBA9241FFBA9241FFBA9241FFCDB687FFDDDDDDFFC29D52FFD0C0
      9EFFDEDFE3FFE9E9E9BCFFFFFF00FFFFFF00FFFFFF00EAEAEAFFD0C0AFFFE2D7
      CCFFCFA861FF2FB86CFFC4A95CFFCCA152FF4DB467FFCCA152FFE0DBD6FFDED7
      D1FFEAEAEAFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E3AAEBEB
      EBFFC4C2C0FFABA8A5FFAFACA8FFB0ADAAFFB1AEABFFB1ADAAFFAFABA8FFBEBC
      BAFFA3A4A4FFDADADA49FFFFFF00FFFFFF00121299FF121299FF121299FF1212
      99FF121299FF121299FF121299FF121299FF121299FF121299FF121299FF31DF
      9DFF3DD0A2FF121299FF121299FFA0A0D666FFFFFF00FFFFFF00E1E1E1FFDFDD
      DDFFDFCDA9FFDEB565FFC29947FFC59C4BFFDBCCAEFFE1E2E5FFE0E0DEFFD5B0
      6EFFE1E1E1FFECECECBCFFFFFF00FFFFFF00FFFFFF00EBEBEBFFD6C8BAFFECE7
      E0FFDAB26CFF86CB86FF28D58EFF1ED38AFF96C47EFFD7AB5CFFEAEAEAFFE7E6
      E5FFEBEBEBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDCDCABB9B7
      B4FFB5B3B0FFB9B6B4FFBEBCBAFFB5B4B2FFB0AFADFFB5B3B1FFBAB8B5FFB8B6
      B3FFBAB8B5FFDFDFDF4AFFFFFF00FFFFFF001515A1FF13139FFF13139FFF1313
      9FFF13139FFF13139FFF13139FFF13139FFF13139FFF13139FFF13139FFF1313
      9FFF13139FFF13139FFF13139FFF5F5FBEACFFFFFF00FFFFFF00E3E3E3FFE3E3
      E3FFE3E3E3FFE4E4E5FFE1DACFFFD8AB59FFE4E5E8FFE3E3E3FFE4E4E6FFE4E6
      EAFFE3E3E3FFEEEEEEBCFFFFFF00FFFFFF00FFFFFF00ECECECFFD6C7B8FFEDE6
      DDFFE9D3AAFFE6C687FFE9CA8DFFE8C98CFFE9CA8DFFE8CF9DFFECECECFFE9E7
      E6FFECECECFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F91EE6E5
      E5FFFEFEFEFFE4E4E4FFC5C5C5FFAFAFAFFFA4A4A4FFAAAAAAFFBABABAFFD1D1
      D1FFABABABFFFFFFFF00FFFFFF00FFFFFF002929B1FF1414A5FF1414A5FF1414
      A5FF1414A5FF1414A5FF1414A5FF1414A5FF1414A5FF1414A5FF1414A5FF1414
      A5FF1414A5FF1414A5FF1414A5FF7373C999FFFFFF00FFFFFF00E6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E8EBFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFF0F0F0BCFFFFFF00FFFFFF00FFFFFF00EDEDEDFFD5C8BAFFECE6
      DFFFECE6DFFFD4C9BEFFECECECFFE7E5E3FFECECECFFECECECFFECECECFFE9E7
      E6FFEDEDEDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E3ABE8E8
      E8FFFCFCFCFFE4E4E4FFC5C5C6FFAFAFAFFFA4A4A4FFAAAAAAFFBABABAFFCFCF
      CFFFA5A5A5FFD9D9D94AFFFFFF00FFFFFF002E2EB7FA1616AAFF1616AAFF1616
      AAFF1616AAFF1616AAFF1616AAFF8B8BDCA54343C4FF1616AAFF1616AAFF1616
      AAFF1616AAFF1616AAFF2E2EB8FFE7E7F61AFFFFFF00FFFFFF00EAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFF3F3F3BCFFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDEDEDFFEDED
      EDFFDED6C4FFEAE8E4FFE0DACBFFDED6C4FFEDEDEDFFDED6C4FFEBEBE9FFEDED
      EDFFEDEDEDFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E3AAEBEB
      EBFFE5E4E5FFB7B5B1FFACA9A5FFAEABA8FFB0ACA9FFAFABA8FFB2B0AEFFCBCB
      CAFFA3A4A4FFDADADA49FFFFFF00FFFFFF00F4F4FB0C5C5CD5FF1818B0FF1818
      B0FF1818B0FF3C3CC3FFABABE570FFFFFF00FFFFFF006767DAF81818B0FF1818
      B0FF1818B0FF3333BFFF4747C1CFFFFFFF00FFFFFF00FFFFFF00ECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFF1F1F1FF7676
      76FF777777FFDFDFDF51FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDEDEDFFEDED
      EDFFCCA75BFFE3D8C2FFCFAD67FFCDA75CFFEDEDEDFFCCA75BFF8C8A87FF7D7D
      7DFF979797CFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E2E3AABCBA
      B7FFBEBDBAFFBEBDBAFFBEBDBAFFBEBDBAFFBEBDBAFFBEBDBAFFBEBDBAFFBEBD
      BAFFC1BFBCFFDCDCDB4AFFFFFF00FFFFFF00FFFFFF00FFFFFF006B6BD0A75252
      CEE68989DB93FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1D1F1386464
      D3CF4E4ECADBC1C1EB46FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF7F7F7FF6767
      67FFCCCCCC4FFFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF6D6D6DFF7A7A
      7ACFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F0F058CDCB
      C9FFCECCC9FFCECDCAFFCECDCAFFCECDCAFFCECDCAFFCECDCAFFCECDCAFFCECC
      C9FFD2D2CEFFFDFDFD0BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFEFEFEFFC5C5
      C54FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEEFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF6C6C6CCFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F1F0F0BCE9E8E7FFE4E2E1FFE0DEDDFFE0E0DDFFE4E3E1FFEAE9E8FFF2F1
      F1A0FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC07F8F8
      F811F8F8F813F3F3F320F3F3F320F3F3F320F3F3F320F3F3F320F6F6F618F8F8
      F811FCFCFC08FEFEFE02FFFFFF00FFFFFF00FFFFFF00FDFDFD03F8F8F812F2F2
      F222EEEEEE2FEBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB36F1F1
      F125F7F7F716FCFCFC08FFFFFF00FFFFFF00FFFFFF00FEFEFE01F9F9F910F2F2
      F222ECECEC33EBEBEB37E4E4E44AE3E3E34CE3E3E34CE9E9E93DEBEBEB37F0F0
      F028F6F6F619FBFBFB09FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCDCDC5EC4C4C4D6C1C1C1EABEBE
      BEF2BFBFBFF2BEBEBEF7BDBDBDF8BDBDBDF8BDBDBDF8C2BFC0F846AC6CFE51AB
      72FCC2C1C2EAC3C3C3DFD6D6D670FDFDFD03FFFFFF00EEEEEE2ED8D8D86BB5A5
      84DEB59044FEBA9342FFBD9545FFBF9646FFBE9645FFBC9443FF879D4FFE4CAF
      71FAD3D3D37BE4E4E44AFFFFFF00FFFFFF00FFFFFF00F9F9F910DDDDDD5DD1D1
      D180D3D3D3E4D7D7D7FDC1C1C1FFADADADFFA4A4A4FFAEAEAEFEB8B8B8F64CAF
      71FA7EB894D5E5E5E547FFFFFF00FFFFFF00FFFFFF00FEFEFE03FAFAFA0DF7F7
      F716F5F5F51DF4F4F41FEEEEEE31EFEFEF30EFEFEF30F1F1F128F5F5F51DF5F5
      F51DFAFAFA0FFDFDFD05FFFFFF00FFFFFF00F1F1F186DCDCDCFFDEDEDEFFDEDE
      DEFFE1E1E1FFE2E2E2FFE1E1E1FFE3E3E3FFE3E3E3FFEFE5EBFF2BB567FF24B4
      62FFE4DFE2FFDDDDDDFFDADADAFFFFFFFF00FFFFFF00C3AA72B0B08938FFB68F
      3EFFBB9443FFC09848FFC49B4BFFC79D4DFFC69C4CFFC29A49FF4EB164FF2FB9
      6CFFB38C3BFFC9B17CA5FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB75ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBABEBCFF30B7
      6BFF30B76BFFFFFFFF00FFFFFF00FFFFFF00E9E9E8402E4469F52F4668F92E45
      67FB2D4566FC2B4367FE2C4468FD2C4468FD2C4468FD2B4367FE2C4468FD2D45
      66FC2F4568FA32496BF5B4B9BF93FEFEFE01F0F0F099DEDEDEFFE0E0E0FFE2E2
      E2FFE3E3E3FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFF1E6EBFF26BD71FF1FBC
      6CFFE7E2E5FFDFDFDFFFDBDBDBFFFFFFFF00FFFFFF00AD8839F9B38C3BFFB992
      41FFC09747FFC69D4DFFCBA151FFCEA353FFCDA252FFC99F4FFF4BB96DFF29C2
      77FFB68F3EFFAF8938FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBABFBCFF2BBF
      74FF2BBF74FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00062454FFCBD5E43F4F90
      CBC9B7CBE255CBD7E73E4287C7D9CCD7E63E77A7D59C8BB2D886CDD7E63D4388
      C8D9CDD9E83C506C96C33E587DC5FFFFFF00F0F0F099E0E0E0FFE2E2E2FFE4E4
      E4FFE5E5E5FFE5E5E5FFEBE7E9FF41C98AFF45CB8DFF48CC8EFF25C57BFF24C5
      7AFF46CB8DFF44C98CFF56CD95FFFFFFFF00FFFFFF00E5D9BF51B58E3DFFBC94
      43FFC39A4AFFCBA050FFD1A656FFD5A95AFF24CA80FF24CA80FF24CA80FF24CA
      80FF24CA80FF24CA80FF35CE89EBFFFFFF00FFFFFF00FFFFFF00D3D3D3FFD0CE
      CDFFB3B0ADFFB3B0ADFFB3B0ADFFB3B0ADFF38C483FF37C482FF37C482FF26C7
      7CFF26C77CFF43CC8DDF41CE8DDF89E1B88AFFFFFF000B2B5EFFFFFFFF001081
      D4FFBCDAF144F7FAFD08178DE2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00188E
      E1FFFFFFFF00D2D8E22F415B82C5FFFFFF00F1F1F199E1E1E1FFE2E2E2FFE5E5
      E5FFE7E7E7FFE8E8E8FFF7EAF0FF19CB7EFF20CC81FF20CC81FF21CD82FF21CD
      82FF20CC81FF20CC81FF19CB7EFFFFFFFF00FFFFFF00FFFFFF00D3BC8BA4BD95
      44FFC49B4BFFCCA151FFD3A858FFDAAE5EFF50D693FF4FD592FF2DD28BFF20D1
      88FF4ED592FF51DCA0E78AE7BF96FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBFBC
      B9FFC4C2BFFFCDCCCBFFC0BFBEFFB0AFAFFF22CD84FF22CD84FF22CD84FF22CD
      84FF22CD84FF22CD84FF22CD84FF26CE86FFFFFFFF000D2F63FFFFFFFF001281
      D4FFB2D5EF4EFFFFFF009DB6D067FFFFFF001C81CDEA4D9CD8B7FFFFFF001A94
      EAFFFFFFFF00D2D9E32F445F88C5FFFFFF00F2F2F299E1E1E1FFE3E3E3FFE5E5
      E5FFE8E8E8FFE8E8E8FFEAEAEAFFAFE3CEFFB6E7D2FFC1E7D6FF1AD188FF15D0
      85FFB9E4D0FFB3E1CDFFB9DDCEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F3
      EA1EC59E51FFE3C07BFFFFD796FFFFD796FFFFD796FFFBD799FF44CC84FF1CD6
      8EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECEBEB67ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFF88AE9EFF8FB6A6FF98C3B2FF1FD3
      8AFF1FD38AFFD7F4E837D6F7E937F6FDFA0BFFFFFF000F336BFFFFFFFF006EA5
      D49AE7F2FA18FFFFFF001485D8FFFFFFFF002D8ACED75CA4DBA7FFFFFF004692
      CFC7FFFFFF00D2DAE52F45628EC5FFFFFF00F3F3F399E3E3E3FFE5E5E5FFE7E7
      E7FFE9E9E9FFE9E9E9FFEAEAEAFFECECECFFECECECFFFAECF1FF16D58CFF0ED4
      89FFEDE6E9FFE4E4E4FFE0E0E0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5ECDA70C0DCF3FFC0DCF3FFC0DCF3FFC7D9E8EE57E1AACA1AD9
      92FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBABFBDFF1CD7
      8FFF1CD78FFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00113772FFFFFFFF00128A
      E0FFADD2EE53F7FAFD081993E8FFFFFFFF001781D1EF489BDABCFFFFFF001A95
      EBFFFFFFFF00D5DCE72C476592C5FFFFFF00F3F3F399E2E2E2FFE6E6E6FFE8E8
      E8FFE8E8E8FFEBEBEBFFECECECFFEDEDEDFFEBEBEBFFFAEBF1FF12D78EFF09D7
      8AFFEDE6E9FFE4E4E4FFE2E2E2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B0D3EFFFCDE2F5FFB5D5F0FFFFFFFF00FFFFFF00F3FD
      F90FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFE4E3
      E3FFC0BEBBFFB1AEABFFB1AEABFFB1AEABFFB1AEABFFB1AEABFFADB0ABFF1ADA
      92FF1FDB95FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00123A77FF173E7BFF1F3D
      74F7193A74FD183C77FF173A72FE173E7AFF223E74F51F3E74F7173D7AFF173A
      72FE183C78FF163F79FF476899C5FFFFFF00D5D5E599C0C0D2FFC2C2D3FFC3C3
      D6FFC4C4D6FFC6C6D8FFC6C6D9FFC7C7DAFFC7C7DAFFC7C6DAFF95C3C4FFA4C2
      C9FFC2C2D5FFC0C0D2FFBFBFD0FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D7E8F7FDD7E8F7FFD7E8F7FFF4F8FC3DFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBAB7
      B5FFBAB7B5FFBFBCBAFFBCBAB9FFB4B2B1FFB0AEADFFB6B4B2FFBAB7B5FFA2BD
      B0FFB6B8B4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00133F7FFFFFFFFF0072AA
      D996E9F3FB16F4F9FD0B1892E6FFFFFFFF00A5CCEA5DBAD9F047FFFFFF001892
      E8FFFFFFFF00D3DCE92F496B9EC5FFFFFF006C6CBB990D0D8AFF0D0D8AFF0D0D
      8AFF0D0D8AFF0D0D8AFF0D0D8AFF0D0D8AFF0D0D8AFF0D0D8AFF0D0D8AFF0D0D
      8AFF0D0D8AFF0D0D8AFF0D0D8AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4F0F96BC2DCF3FFC2DCF3FFC2DCF3FFC2DCF3FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E4E37FEAEA
      EAFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFFB7B6B5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00174386FFFFFFFF000F88
      DCFFC1DAED3FFFFFFF001691E6FFFFFFFF002789D1DE59A1D8ABFFFFFF001794
      E9FFFFFFFF009CB0CC6B4B6EA2C5FFFFFF007070C399111196FF111196FF1111
      96FF111196FF111196FF111196FF111196FF111196FF111196FF111196FF1111
      96FF111196FF111196FF111196FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ACCFEDFFADD1EFFFADD1EFFFADD1EFFFADD1EFFFABAEB766FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FEECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF003461A5FF315FA2FF315F
      A2FF315FA2FF315FA2FF315FA2FF315FA2FF315FA1FF315FA1FF315FA2FF315F
      A2FF315FA2FF315FA2FF849FC791FFFFFF007171CA991212A1FF1212A1FF1212
      A1FF06069EFF1010A0FF1212A1FF1212A1FF1212A1FF1212A1FF06069EFF0C0C
      9FFF1212A1FF1212A1FF1212A1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F6F70C99C4EBFF99C4EBFF99C4EBFF99C4EBFF98C3E9FF2A3349FEFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFDCDBD9FFB8B5B3FFB0ADAAFFB0ADAAFFB0ADAAFFB0ADAAFFB6B4B2FFCACA
      C9FF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007272D2991515ACFF1717ADFF4343
      B8FFEFEFEAFF9696D1FF1717ADFF1717ADFF1717ADFF0505A7FFF6F6EFFFFBFB
      F0FF1717ADFF1717ADFF1E1EB1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCC2CC5140577BFF84B8E6FF547095FF2F3B53FF2B364DFF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CAC9C8FFBFBC
      BAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBC
      BAFFBEBCB9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E6F6296363DDFF3131C3FF6060
      CFFFF6F6F6FFA8A8E3FF3333C4FF3333C4FF3333C4FF2020BFFFF7F7F6FFFFFF
      F9FF3333C4FF4242CBFF1919B6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01304262FF2A3349FF2C3851FF2C3851FF2C3851FF363F55F5FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E1DFBACFCD
      CAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCD
      CAFFDCDAD9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      FB38F0F0F0FFF6F6F696FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEEFFF4F4
      EFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E7EA20353D51FF2D3B55FF2D3B55FF4F5A6EE1FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFA
      FA26EDEDECD1E7E6E6FFE3E1E0FFE1DFDEFFE2E0DFFFE5E4E3FFE9E8E7FCF2F2
      F17DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004F77
      B0C5184481FFB6B6B649FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5F5F50AECECEC13ECECEC13ECECEC13EEEEEE11FDFDFD02FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAFAFA05F1F1F10EEDEDED12EFEFEF10F6F6F609FEFEFE01FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD03F8F8F812F2F2
      F222EEEEEE2FEBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB37EBEBEB36F1F1
      F125F7F7F716FCFCFC08FFFFFF00FFFFFF00FFFFFF00FFFFFF006D90C1A4215D
      B0FF163E76FFB2B2B24DB8B8B847E3E3E31CFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C3642EFFC7672FFFCA6A30FFCE6C31FFC29173A5EEEEEE11FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8
      F807DADADA256E6EB79E3939AEDC1C1CABFF4242ADD29E9EB966CCCCCC33EAEA
      EA15FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE2ED8D8D86BB5A5
      84DEB59044FEBA9342FFBD9545FFBF9646FFBE9645FFBC9443FF5EA75AFEB4A4
      82E2D3D3D37BE4E4E44AFFFFFF00FFFFFF00FFFFFF00A5BAD864215DB0FF215D
      B0FF153A70FFCACACA35CFCFCF30D5D5D52ADBDBDB24FCFCFC03FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAC889FFE5863AFFE98D40FFED9546FFD37133FFECECEC13FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF102F2F
      B1E60A0AAAFF0E0EBEFF1414C7FF1A1ACDFF2020D3FF2121D0FF1D1DB5FF9090
      B376D9D9D926FCFCFC03FFFFFF00FFFFFF00FFFFFF00C3AA72B0B08938FFB68F
      3EFFBB9443FFC09848FFC49B4BFFC79D4DFFBD9E4EFF2EBB6FFF2EBB6FFF36B8
      6CFFB38C3BFFC9B17CA5FFFFFF00FFFFFF00235FB2FF225EB1FF1E56A4FF2059
      AAFF14386BFFCDCDCD32D8D8D827E4E4E41BF2F2F20D1A4A93FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAC889FFE17E3AFFE68841FFEB9248FFD57233FFECECEC13FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F30C2323B2FF0707
      B8FF0B0BBCFF5F5FD7FF6868D3FF5555C9FF7D7DE2FF5C5CE3FF2F2FE7FF2C2C
      DCFF5757ACBBD9D9D926FEFEFE01FFFFFF00FFFFFF00AD8839F9B38C3BFFB992
      41FFC09747FFC69D4DFFCBA151FF8CB062FF28C47AFF28C47AFF30C77EFF28C4
      7AFF2CC277FFAF8938FFFFFFFF00FFFFFF002666B9FF2A62ADFF2869BCFF2460
      B0FF143767FFCDCDCD32D8D8D827E4E4E41BF2F2F20D1C4F98FF30AC30CFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAC889FFE17F3BFFE68842FFEB9349FFD57233FFECECEC13FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD021E1EB2FF0505B5FF0707
      B8FF3131B7FFABABD95CFDFDFD02FFFFFF00FFFFFF004F4FBCC63434EAFF3D3D
      F3FF2B2BDBFF9090B376EDEDED12FFFFFF00FFFFFF00E5D9BF51B58E3DFFBC94
      43FFC39A4AFFCBA050FFCEA657FF23CD84FF22CD83FF7EC37CFFC79D4DFF3AD4
      8FFF22CD83FF25CC82FFFFFFFF00FFFFFF002A6BBEFF3B7AC8FF2D71C5FF2866
      B7FF113260FFCDCDCD32D8D8D827E4E4E41BF2F2F20D068B1DFF76CF7DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5F50AECECEC13ECECEC13ECEC
      EC13ECECEC13FAC889FFE07D3AFFE58740FFEA9148FFD37033FFDDDDDD22ECEC
      EC13ECECEC13ECECEC13EEEEEE11FDFDFD029E9ED76A3F3FC6FF0404B5FF1919
      AFFFF2F2F20DFFFFFF00FFFFFF00FFFFFF00DCDCE7252828DCFF2F2FE4FF3A3A
      EAFF2F2FE6FF1E1EB1FFCECECE31FEFEFE01FFFFFF00FFFFFF00D3BC8BA4BD95
      44FFC49B4BFFCCA151FFD3A858FFB9B76AFFB3B467FFD0A455FFC89E4EFFC098
      47FF3BDA97FF1ED48BFF1FD48BFDFFFFFF007F7E7EFF3E80CEFF3D81CFFF2454
      92FF4B535FFFCDCDCD32D8D8D827E4E4E41B2DA92DD25DC563FF68C96EFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B05529FFC3682DFFC66B2EFFC96E
      2FFFCC7031FFFAC789FFDF7B37FFE3833EFFE88C44FFDB7E38FFDD7F3AFFDE80
      3BFFDD803BFFDC7F39FFC29173A5EEEEEE112525B6FF0202B2FF0C0CB2FFDCDC
      DC23FFFFFF00FFFFFF00FFFFFF00DBDBE6251D1DD0FF2222D6FF2727DCFF3636
      B1E26060E4FF1F1FCDFF9E9EB966F7F7F708FFFFFF00FFFFFF00FFFFFF00F7F3
      EA1EC59E51FFE3C07BFFFFD796FFFFD796FFFFD796FFFBD799FFC9A051FFD2B6
      7DC4FFFFFF0040DFA0F81BD891FF5FE4B0C63075C8FF4084D2FF3075C9FF2E70
      C0FF6E7682FFCDCDCD32D8D8D8272AA62AD552BF56FF40B946FF5BC461FF68C9
      6EFF6DCC74FF73CF7AFF79D281FF007300FFF8C589FFD26833FFD46B35FFD363
      28FFD56829FFD96F2FFFDD7735FFE17E3AFFE58640FFE88D45FFEB9249FFEC95
      4BFFEC954BFFEE9848FFCC6B31FFECECEC135F5FCEFF1010B7FF1919AFFFEFEF
      EF10FFFFFF00FFFFFF00DBDBE4251414C6FF1818CBFF1D1DD0FFEDEDED12FFFF
      FF008888E6FF1F1FD2FF5757AFBAF1F1F10EFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5ECDA70C0DCF3FFC0DCF3FFC0DCF3FFC7D9E8EEFEFEFE02FFFF
      FF00FFFFFF00FFFFFF007AEBBFB7FFFFFF003279CDFF3379CDFF4489D7FF3074
      C6FF133564FFCDCDCD3228A428D758C05CFF32B237FF39B63EFF40B946FF46BC
      4DFF4DC054FF54C35CFF5BC763FF007300FFF8C589FFD26733FFD36A34FFD66E
      37FFD97339FFD86F31FFDB7231FFDE7836FFE17F3BFFE4843FFFE68942FFE78B
      43FFE78B43FFEA9041FFC96930FFECECEC136666D1FF3E3EC5FF4040B1D1F1F1
      F10EFFFFFF00DBDBE4250C0CBEFF1010C2FF1414C6FFDBDBE425FFFFFF00FFFF
      FF006767D2FF1A1ACDFF4343ADD1F1F1F10EFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B0D3EFFFCDE2F5FFB5D5F0FFFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00357DD0FF458CDAFF458CDAFF3278
      C9FF133564FFC1CAC13E34AE34FF6CC76FFF58C05BFF32B237FF39B63EFF40B9
      46FF46BC4DFF4DC054FF54C35CFF007300FFF8C589FFD16632FFD36934FFD56C
      36FFD77038FFD9743AFFDC793EFFDE7E40FFE07F40FFE1813FFFE28441FFE385
      42FFE38541FFE88D43FFC6662FFFECECEC136B6BD3FF4040C6FF3F3FAFD2E9E9
      E916DBDBE4250707B8FF0A0ABBFF0C0CBEFFDBDBE425FFFFFF00FFFFFF00FDFD
      FD027373D7FF1414C6FF4444AFD0F3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D7E8F7FDD7E8F7FFD7E8F7FFF4F8FC3DFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003680D4FF478EDCFF478EDCFF377C
      CDFF133564FFCDCDCD32CBD4CB343CB13CFF6BC66DFF6BC76DFF68C66CFF53BF
      58FF4CBD52FF51C058FF5FC665FF007300FFF3BE83FFF8C589FFF8C689FFF8C6
      89FFF9C78AFFF9C78AFFD9753BFFDB783DFFDD7C3FFFFAC98BFFFACA8BFFFBCA
      8CFFFBCA8BFFFAC98BFFC2632EFFF5F5F50A4E4EC8FF4242C6FF1D1DB2FFB6B6
      C04A3636C4FF3434C5FF2222C0FFDBDBE425FFFFFF00FFFFFF00FFFFFF009D9D
      D36C6464D8FF0E0EBBFF7979B892FBFBFB04FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E4F0F96BC2DCF3FFC2DCF3FFC2DCF3FFC2DCF3FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003882D6FF478FDDFF3F88D9FF3883
      D7FF133564FFCDCDCD32D8D8D827D6DFD62955BC56FF6AC66CFF81CF83FF0099
      00FF009900FF009900FF009900FF007300FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F9C78AFFD77139FFD9743AFFDA763CFFBF612DFFECECEC13FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333B9E05959CBFF4141C6FF3D3D
      C5FF3A3AC4FF3636C4FFDBDBE425FFFFFF00FFFFFF00FFFFFF00F2F2F20D3535
      B8FF2F2FC7FF1D1DAFFFDDDDDD22FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ACCFEDFFADD1EFFFADD1EFFFADD1EFFFADD1EFFFABAEB766FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7E7EFF3A85D9FF3A85D9FF69A7
      E5FF78A4CEB5CDCDCD32D8D8D827E4E4E41BE2EBE21D55BC56FF81CF83FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8C689FFD56D36FFD67038FFD77139FFBB5E2CFFECECEC13FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007373D8FF4646C7FF4141
      C6FF3D3DC5FFB9B9C247EAEAEA15F3F3F30CF1F1F10EDFDFDF201C1CAFFF3131
      C5FF3030C4FF2F2FB0E6F8F8F807FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F6F70C99C4EBFF99C4EBFF99C4EBFF99C4EBFF98C3E9FF2A3349FEFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003A86DAFF458DDCFF5096DCFFA4B1
      BD68C3C3C33CCDCDCD32D8D8D827E4E4E41BF2F2F20D286BA9FF55BC56FFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8C689FFD36A35FFD46B36FFD56D36FFB75B2BFFECECEC13FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008989D7818080DCFF4646
      C7FF3F3FC5FF1D1DB2FF3F3FAFD26060B4AD2222AFF42929BAFF3535C4FF3535
      C4FF1D1DAEFFEFEFEF10FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCC2CC5140577BFF84B8E6FF547095FF2F3B53FF2B364DFF2B364DFFFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003B87DBFF488DCFFFAFAFAF50B9B9
      B946C3C3C33CCDCDCD32D8D8D827E4E4E41BF2F2F20D3274C3FFEFF8EF10FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F8C589FFD16633FFD26834FFD36934FFB3582AFFECECEC13FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7BD2907474
      D8FF5B5BCCFF4242C6FF4040C6FF3E3EC5FF3B3BC5FF3A3AC4FF6161D2FF2828
      B6FFF2F2F20DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE01304262FF2A3349FF2C3851FF2C3851FF2C3851FF363F55F5FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002C69B4FF2C69B4FF2C69B4FF2C69
      B4FF2C69B4FF2C69B4FF2C69B4FF2C69B4FF2C69B4FF2C69B4FFFFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F3BE83FFF8C589FFF8C589FFF8C689FFAF5529FFF5F5F50AFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0
      FA103333B9E05757CCFF7575D8FF8989E0FF7070D7FF3030BAFF8282CD89FCFC
      FC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5E7EA20353D51FF2D3B55FF2D3B55FF4F5A6EE1FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE01F9F9F910F2F2
      F222ECECEC33EBEBEB37E4E4E44AE3E3E34CE3E3E34CE9E9E93DEBEBEB37F0F0
      F028F6F6F619FBFBFB09FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAFAFA05EDEDED12F7F7F708FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBFBFB04F3F3F30CF1F1F10EF1F1F10EF7F7F708FEFEFE01FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F910DDDDDD5DD1D1
      D180D3D3D3E4D7D7D7FDC1C1C1FFADADADFFA4A4A4FFAEAEAEFE5DB07DF7C4C4
      C4B1D4D4D477E5E5E547FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F7084DB24FCD3EAF41E8C6C6C639F9F9F906FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5F50AF5F5
      F50AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03F0F0
      F00FFCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8
      F807DDDDDD22B4B4B492AAAAAAD1ABABABD1AAAAAAC6B7B7B766CECECE31EDED
      ED12FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB75ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFF9DA5A1FF2EBB6FFF2EBB6FFF37BB
      74FF9B9B9BFCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4
      F40B24A726F377D477FF84DE87FF45B049DDD8D8D827FEFEFE01FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE111A1AAEFFBFBF
      BF40EEEEEE11FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC036F6FBCA16060
      AEAFD5D5D52AFCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F00FA2A2
      A2E6B1B1B1FFBBBBBBFF9A9AC7FFA4A4D1FFC6C6DCFFE8E8E8FFB3B3B3FFAFAF
      AF76DADADA25FCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FF79B79AFF28C47AFF28C47AFF30C77EFF28C4
      7AFF2BC27AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F30C099D
      09FF69C864FF54C753FF64D367FF89E38FFF9CB59D6AEDEDED12FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF102525B6FF2020BFFF2F2F
      BFFFBEBEBE41EEEEEE11FFFFFF00FFFFFF00FCFCFC036262BAAF5D5DF1FF6666
      F9FF5757ACBBD6D6D629FDFDFD02FFFFFF00FFFFFF00F4F4F40BA3A3A3FFC6C6
      C6FF0A0ABBFF0E0EC0FF1414C6FF1B1BCEFF2323D7FF2C2CE1FF9595F0FFEAEA
      EAFFA2A2A2BBDADADA25FEFEFE01FFFFFF00FFFFFF00FFFFFF00D3D3D3FFD0CE
      CDFFB3B0ADFFB3B0ADFFB0B0ACFF23CD84FF22CD83FF74C9A1FFB3B0ADFF3AD4
      90FF22CD83FF26CD85FAFFFFFF00FFFFFF00FFFFFF00F3F3F30C059A05FF56BA
      4EFF42B73BFF4FC34DFF5ECF5FFF76DD7BFF48BF4CFFC4C4C43BF9F9F906FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004646C3FF1818BBFF0707B8FF1414
      BEFF3131C0FFBEBEBE41EEEEEE11FCFCFC036161BAAF5555E8FF3636ECFF3D3D
      F4FF6565F7FF6C6CB1A2F4F4F40BFFFFFF00FDFDFD029A9A9AFFC5C5D0FF0606
      B7FF0A0ABBFF0F0FC0FF1515C7FF1C1CCFFF2424D8FF2E2EE3FF3939EFFF4F4F
      FCFFE8E8E8FFAEAEAE76EDEDED12FFFFFF00FFFFFF00FFFFFF00C1BFBDFFBFBC
      B9FFC4C2BFFFCDCCCBFFC0BFBEFF97B8AAFF8DB1A2FFB3B2B1FFBEBCBAFFBFBC
      B9FF3BDA98FF1ED48BFF1FD48BFDFFFFFF00F2F2F20D0E990CFF49B03EFF30A9
      25FF3CB335FF67C863FF7ED57EFF64D467FF8CE591FF3FAC42DDD8D8D827FEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF003E3EBFFF7D7DE0FF0707B8FF0A0A
      BBFF1717C2FF3333C2FFBEBEBE415E5EB7B24D4DDFFF2A2ADFFF3131E6FF3535
      EBFF5E5EEFFF9494C876FDFDFD02FFFFFF00CBCBCB6ADEDEDEFF0303B3FF0606
      B6FFD8D8E3FFD7D7E2FF1414C6FF1B1BCEFF4949DBFFF3F3F3FF5B5BEEFF3939
      EFFF9494EFFFAAAAAAFFCECECE31FEFEFE01FFFFFF00FFFFFF00ECEBEB67ECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFFA6A6A6FF40DFA0F81BD891FF5FE4B0C61C9A1BFF56B249FF229D13FF2BA5
      1FFF5CBD54FF099D09FF9CDC9AFF5ACB5AFF66D56AFF87E18CFF9BB59C6AEDED
      ED12FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F3FBFFF6F6FDCFF0909
      BAFF0D0DBEFF1A1AC5FF3535C4FF4646D7FF2020D3FF2525D9FF2A2ADEFF5757
      E8FF9494C876FDFDFD02FFFFFF00FFFFFF00969696FF7171C9FF0303B3FFA1A1
      E3FFCCCCCCFFC0C0C0FFC8C8D3FF3D3DCEFFDBDBDBFFE7E7E7FFF3F3F3FF2E2E
      E3FF2C2CE1FFE5E5E5FFB3B3B366F7F7F708FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFF9A9A9AFFFFFFFF007AEBBFB7FFFFFF0096CE8FFF44A935FF41A933FF52B4
      47FF159D15F2F7F7F70818A118F095DB94FF5ACB5AFF6CD66FFF3FBA42FFC4C4
      C43BF9F9F906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F3FBFFF7070
      DDFF0B0BBCFF0F0FC0FF1C1CC7FF1717CAFF1B1BCEFF2020D3FF4F4FDFFF9494
      C876FDFDFD02FFFFFF00FFFFFF00FFFFFF00C3C3C3FF0E0EB5FF0202B2FF0404
      B5FFD6D6E1FFCCCCCCFFC0C0C0FFC3C3C3FFCFCFCFFFDBDBDBFF4A4ADCFF2525
      D8FF2323D7FFC4C4DBFF999999C6F1F1F10EFFFFFF00FFFFFF00D3D3D3FFE4E3
      E3FFC0BEBBFFB1AEABFFB1AEABFFB1AEABFFB1AEABFFB1AEABFFB2AFACFFC0BF
      BDFF9A9A9AFFFFFFFF00FFFFFF00FFFFFF0055AB51FF8CCA83FF8FCB86FF289E
      28D7F9F9F906FFFFFF00FFFFFF0068C566FF60C85DFF56C855FF7AD77BFF37AA
      3ADDD8D8D827FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004040
      BFFF7171DDFF0C0CBEFF1010C2FF1414C6FF1717CAFF4848D7FF8E8EC47BFDFD
      FD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8D8D8FF4646C6FF2121BBFF0303
      B4FF0606B6FFCDCDD8FFCCCCCCFFC0C0C0FFC3C3C3FF3D3DCEFF1B1BCEFF1C1C
      CFFF1B1BCEFFA3A3D0FF969696D1F1F1F10EFFFFFF00FFFFFF00C1BFBDFFBAB7
      B5FFBAB7B5FFBFBCBAFFBCBAB9FFB4B2B1FFB0AEADFFB6B4B2FFBAB7B5FFBAB7
      B5FFBAB7B5FFFFFFFF00FFFFFF00FFFFFF00EFF7EF107CBE7C83B9DBB946FEFE
      FE01FFFFFF00FFFFFF00FFFFFF006FC46F9099D895FF49BD44FF4FC24CFF71CF
      70FF99B49A6AEBEBEB14FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC036060
      BCAF3939C7FF0A0ABBFF0D0DBEFF1010C2FF2424C9FF3535C4FFBEBEBE41EEEE
      EE11FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDBDBFF4848C7FF4343C5FF3E3E
      C4FF3636C0FFE3E3E3FFD8D8D8FFCCCCCCFFC0C0C0FFC8C8D3FF1414C6FF1515
      C7FF1414C7FF9999C5FF959595D1F3F3F30CFFFFFF00FFFFFF00E5E4E37FEAEA
      EAFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFFB7B6B5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001EA41DFF89D184FF5AC155FF66C6
      61FF40B640FFC3C3C33CF8F8F807FFFFFF00FFFFFF00FCFCFC035F5FBDAF5C5C
      D0FF3232C4FF1515BDFF0A0ABBFF0C0CBEFF0F0FC0FF2222C7FF3333C2FFBEBE
      BE41EEEEEE11FFFFFF00FFFFFF00FFFFFF00B3B3B3FF6161CDFF4646C6FF6565
      D0FFF7F7F7FFF0F0F0FFE6E6E6FFD0D0D9FFCCCCCCFFC0C0C0FFD7D7E2FF0F0F
      C0FF0E0EC0FFB9B9B9FFA8A8A892FBFBFB04FFFFFF00FFFFFF00D3D3D3FEECEC
      ECFFFCFCFCFFDEDEDEFFC1C1C1FFADADADFFA4A4A4FFAEAEAEFFBFBFBFFFCDCD
      CDFF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEF0DE2193D28EFF58BB50FF54BB
      4DFF73C86DFF27A429E9D6D6D629FEFEFE01FCFCFC035F5FBDAF6161D0FF3737
      C4FF3535C4FF3333C5FF5C5CD2FF8585E3FF2F2FC7FF2828C6FF3737CBFF3D3D
      C2FFBEBEBE41EEEEEE11FFFFFF00FFFFFF009B9B9BD1E4E4F3FF4B4BC7FF6969
      D1FFFDFDFDFFF7F7F7FF5B5BCCFF3737C5FFDEDEE7FFD5D5D5FFDFDFE8FF3434
      C7FF3434C7FFA9A9A9FFDDDDDD22FFFFFF00FFFFFF00FFFFFF00D3D3D3FFECEC
      ECFFDCDBD9FFB8B5B3FFB0ADAAFFB0ADAAFFB0ADAAFFB0ADAAFFB6B4B2FFCACA
      C9FF9A9A9AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001FA21FE097D291FF4CB3
      42FF4EB444FF6CC264FF8FB39074F2F2F20D6161C0AC6666D1FF3E3EC5FF3A3A
      C4FF3838C4FF5C5CD0FF6060BCAF4747C2FF8686E2FF3030C6FF3030C6FF3F3F
      CBFF3B3BBEFFC0C0C03FF7F7F708FFFFFF00FFFFFF00CACACAFF7070D2FF4A4A
      C7FF6969D1FF6565D0FF3F3FC5FF3B3BC4FF3A3AC5FFB5B5E9FF3838C5FF3838
      C5FFC8C8C8FF8F8F8FE6F8F8F807FFFFFF00FFFFFF00FFFFFF00CAC9C8FFBFBC
      BAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBCBAFFBFBC
      BAFFBEBCB9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004CB448FF66BB
      5BFF47AE3BFF55B54AFF0C9F0DFFECECEC13A8A8ECFF5050CBFF4141C6FF3E3E
      C5FF6161D0FF5F5FBDAFFCFCFC03FFFFFF004747C2FF8787E3FF3232C5FF3232
      C5FF5050CEFF4444B3CEF8F8F807FFFFFF00FFFFFF00C9C9C971F7F7F7FF7070
      D2FF4B4BC8FF4747C6FF4444C6FF4141C5FF3F3FC5FF3E3EC5FF3D3DC5FFCACA
      D3FF959595FFF0F0F00FFFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E1DFBACFCD
      CAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCDCAFFCFCD
      CAFFDCDAD9FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009ED59E6196CF
      8EFF4EAE40FF5BB44EFF0E9D0EF3F6F6F609A6A6E061AEAEEEFF5050CBFF6666
      D2FF5F5FBDAFFCFCFC03FFFFFF00FFFFFF00FFFFFF004747C2FF8989E2FF4D4D
      CCFF3D3DBFFFF3F3F30CFFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9C971CACA
      CAFFE4E4F3FF6363CEFF4A4AC7FF4747C6FF4646C6FF9393D4FFE0E0E0FF8C8C
      8CFFF4F4F40BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFA
      FA26EDEDECD1E7E6E6FFE3E1E0FFE1DFDEFFE2E0DFFFE5E4E3FFE9E8E7FCF2F2
      F17DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003FAE
      3FC04BB246FF099B09FFF4F4F40BFFFFFF00FFFFFF00A6A6E061A9A9ECFF6161
      C0ACFCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005454C7FF5A5A
      CAFFF4F4F40BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009B9B9BD1B2B2B2FFDBDBDBFFD7D7D7FFC1C1C1FF8D8D8DFFC7C7C76AFDFD
      FD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000800100000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000000000000000000
      8003000000000000FFC3000000000000FF87000000000000FF0F000000000000
      E00F000000000000801F000000000000803F000000000000003F000000000000
      001F000000000000001F00000000000000030000000000008003000000000000
      807F000000000000C0FF000000000000800180038003FFFF0000000000000000
      C003F003F46F8003C003C003E007FFC3C0038001E007FF87C00380018003FF0F
      C00300018101E00FC003000103C1801FC0030001C7C3803FC003000187C1000F
      C00300010381000FC00300038001000FC0038003E0070003C0038007E0078003
      C007C00FE007804FC00FF01FFC7FC0CF800380038003FFFF000000008003FFFF
      E3FFF6478003FFFFE1FFE2078003C003E07FE0038003F81F803F80038003E001
      001F00038003000100070003800300008003800380030000C001E00380030000
      F000F0018003E001F801F8018003E007FC07FC018003FFFFFF07FE018003FFFF
      FF87FF1F8007FFFFFFCFFFFF800FFFFF00010001FFFF800300000000FFFF0000
      E3C7E3C70001E3FFE00FE00FFDFFE1FFE00FE00FF8FFE07FE00FE00FE07F803F
      E00FE00FC03F001FE007E007801F0007C003C003020F8003800180018F07C001
      00010001DF83F000F01FF01FFFC0F801FC3FFC3FFFE1FC07FC7FFC7FFFF3FF07
      FE7FFE7FFFFFFF87FEFFFEFFFFFFFFCF80030001FFFF00018000000000010000
      8000FFFF0000E3C78001CFFF8007E00F80038FFF8007E00FC00306008007E00F
      E00384008007E00FF80302008003E007FC4702008003C003FC3F060080018001
      F83F070180010001F81F8FFF8003F01FF01FFFFF8007FC3FF01FFFFF8007FC7F
      F01FFFFFFFFFFE7FF83FFFFFFFFFFEFF0001FFFF800380030000000080000000
      C003F803C000F018C003FFC3C000E001C003FF87C001C001C003FF0FC0038003
      C003E00FC0038001C003C01FC0030001C003803FC0030001C003003FC0070001
      C003003FC0070001C003001FC0078001C003003FC0078003C003803FC007C003
      C007807FC007E007C00FC0FFE00FF01F80038003800380018001000000008001
      8001E318E318C0038001E100E100C0038003E001E001C003C00380038003C003
      E00100010001C003F81100000000C003FC3B80008000C003FC3FC001C001C003
      F83FF000F000C003F81FF801F801C003F01FFC07FC078003F01FFF07FF078007
      F01FFF87FF87C007F83FFFCFFFCFC00780038003000100008003800100000000
      8003C000C00300008003C000C00300008003C001C00300008003C003C0030000
      8003C001C00300008003C000C00300008003C000C00300008003C007C0030000
      8003C007C00300008003C007C00300008003C007C00300008003C007C0030000
      8007C007C0070000800FE00FC00F0000800300000001FFFF000000000000FFFF
      F4010000C003FF9FE0000000C003F61FE0000000C003E41F80000000C003F01F
      81000000C00380F703810000C00383F7C7C30000C0038FF787C10000C003B007
      03810000C003F00780010000C003F007E0070000C003C007E0070000C0038001
      E0070000C007FC1FFC7F0000C00FFFFFFFFFC00380038003FFFF800300000000
      FC3F8003F40FF40100008001E007E00080018001E003E0008001C00180018000
      8001E003810081008001F80703C103818001FC7FC7C3C7C38001FC3F87C187C1
      8001F83F038103818001F81F800180018001F81FE007E007FFFFF01FE007E007
      FFFFF81FE007E007FFFFF83FFC7FFC7F000000000000FFFF000000000000FE3F
      000000000000F80F000000000000E003000000000000C003000000000000C003
      000000000000C003000000000000C003000000000000C0030000000000008001
      00000000000000000000000000008001000000000000C003000000000000C007
      000000000000C0FF000000000000FFFFFFFF800380070000FFFF800100030000
      FFFFC003800700000000C003800700008001C003800700008001C00380070000
      8001C003800700008001C003800300008001C003800300008001C00380010000
      8001C003800300008003C00380070000FFFF800380070000FFFF800780070000
      FFFFC007800F0000FFFFC007801F0000C0030001FFFF80018003000000000000
      800380018003800380038001800380038003800180038003C00380018003C001
      E00F80018003E001F83F80018003F801FC7F80018003FC7FFC3F80018003FC3F
      F83F8003C003F83FF81F8001E00FF81FF81F8001F80FF81FF01F8003F87FF01F
      F81F8007FDFFF81FF83F800FFFFFF83FFFFFFFFF800380030000FFFF80038003
      8003FFFF800380038003000080038001800300008003800180038000C003C001
      80038001E009E00380038001F809F80380038001FC43FC7F80038001FC3FFC3F
      80038001F83FF83F80038003F81FF81F8003FFFFF01FF01F8003FFFFF01FF01F
      8003FFFFF01FF01F9FFFFFFFF83FF83F8003C003FFFF80030000800100000000
      F003F81F01008001E001E00F01000001C000C007010000018000C00301000001
      800083C301000001000187E101000001000187E1F01F0001000187E1F01F0001
      000187E1F01F0001800183C3F01F00018003C003F01F0001C003C007F01F0001
      E007E00FF01F8003F01FF83FFFFFFFFFFFFFFFFF80038003FFFF000000000000
      00000000F01FF0078001FFDFE007E0038001FF07C003C0038001FF7F80038001
      8001FF47800180018001F85F000100018001F807000100018001FBFF00010001
      8001FBC7000100018001FB0F800180018001FB0780038003FFC3FB67C003C003
      FFFFC35FE007E007FFFFC007F01FF01FC003C003FFFF000100000000E00F0000
      00010001E007FEFF00010001FEFFF83F00010001FC7FF00F00010001FC7FE007
      00010001FFFFC00300010001FC7F800100010001FC7F000100010001FC3F0000
      00010001FE1F000000010001F70F000000010001E38F000000010001E38F8181
      00010001F01FC7C3E3CFE3CFF83FFFFF8003FFFFFFFF80038003FFFFF00F8003
      C007000000008003C003000181038003C001000181018003C00100018001C001
      C00300010003E001C00380010103F811C00380038103FC73C003C0038003FC3F
      C007C003C007F83FC007C007F81FF81FC007E007F81FF01FC007E007FC3FF01F
      C007FFFFFFFFF01FE00FFFFFFFFFF83FFFFFF83F80030001FFFF000080030000
      0000E3CFC003C0038001E1CFC003C0030821E001C003C00300018001C001C003
      00010001C003C00300010007C003C00300018003C007C0030001E001C007C003
      0001F000C007C0030001F801C007C0030001FC07C007C003FFFFFF07C007C003
      FFFFFF87C007C007FFFFFFCFE00FC00FFFFFFFFFFFFFFFFF0000FC7FC007FFFF
      0000000000008001FF1F80038001000089138001800100018913800180010001
      C187800180010001E3C7800180010001E3C7800180010001E3CF800180010001
      F00F800180010001FC3F800380010001FC3FFB9FFB9F8001FC3FF81FF81FCFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080018007C0030000000000038003
      0000C0038007C0070000C0038007C0030000C0038007C0030000C0038007C003
      0000C0038007E0070000C0038007C0030000C0038007C0030000C0038007C003
      0000C0038007C0070000C0038007C0030000C0038007C0030000C0038007C003
      0000C007800FC0030000C00F801FF00FFFFFC00380038003FFFF000080038003
      800300018003C007000000018003C007800100018001C000A1E90001C001C000
      A5290001E00FC000A5290001F80FC007A1290001FC6FC00780010001FC3FC007
      A1290001F83FC007A5290001F81FC00780010001F01FC007FFFF0001F01FC007
      FFFF0001F01FC007FFFFE3CFF83FE00FE3FFF81FF81F8003C0FFF81FE0078003
      803FF81FC0038003003FF81F80018003001FF81F01818003001F00000700C001
      001F00000E00E008000000000C10F81D000000000830FC7F000000000060FC3F
      0000000000E0F83F0000F81F01C1F81F001FF81F8001F01F001FF81F8003F01F
      001FF81FC007F01F003FF81FE00FF83F8003F8FFFFFFF81F8003F07FCFC7E007
      C007E03F8783C003C007C03F03018001C003801F00010001C001000F00010000
      C000000F80030000C0050007C0070000C0070603E00F0000C0070E03C00F0000
      C007FF0180070000C007FF0000030001C007FF8000018001C007FFC001018003
      C007FFC00383C007E00FFFE187C7F00F00000000000000000000000000000000
      000000000000}
  end
end
