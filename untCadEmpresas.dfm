object frmCadastroEmpresas: TfrmCadastroEmpresas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Empresas'
  ClientHeight = 393
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlControl: TPanel
    Left = 0
    Top = 358
    Width = 762
    Height = 35
    Align = alBottom
    TabOrder = 0
    object DBNav: TDBNavigator
      Left = 1
      Top = 1
      Width = 192
      Height = 33
      DataSource = dsEmpresa
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Align = alLeft
      TabOrder = 0
    end
    object btnInserir: TBitBtn
      Left = 431
      Top = 6
      Width = 75
      Height = 25
      Action = actInserir
      Caption = 'Inserir'
      TabOrder = 1
    end
    object btnExcluir: TBitBtn
      Left = 592
      Top = 6
      Width = 75
      Height = 25
      Action = actExcluir
      Caption = 'Excluir'
      TabOrder = 2
    end
    object btnFechar: TBitBtn
      Left = 673
      Top = 6
      Width = 75
      Height = 25
      Action = actFechar
      Caption = 'Fechar'
      TabOrder = 3
    end
    object btnAlterar: TBitBtn
      Left = 511
      Top = 6
      Width = 75
      Height = 25
      Action = actAlterar
      Caption = 'Alterar'
      TabOrder = 4
    end
  end
  object pnlTela: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 358
    Align = alClient
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 760
      Height = 356
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 60
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = edtRazao
      end
      object Label2: TLabel
        Left = 546
        Top = 88
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = edtNum
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = edtEnd
      end
      object Label4: TLabel
        Left = 286
        Top = 125
        Width = 43
        Height = 13
        Caption = 'Munic'#237'pio'
        FocusControl = edtCid
      end
      object Label5: TLabel
        Left = 16
        Top = 125
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = edtBai
      end
      object Label6: TLabel
        Left = 16
        Top = 208
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = edtTelefone
      end
      object Label7: TLabel
        Left = 208
        Top = 208
        Width = 33
        Height = 13
        Caption = 'Celular'
        FocusControl = edtCelular
      end
      object Label8: TLabel
        Left = 16
        Top = 168
        Width = 33
        Height = 13
        Caption = 'Estado'
        FocusControl = edtEst
      end
      object Label10: TLabel
        Left = 16
        Top = 51
        Width = 19
        Height = 13
        Caption = 'CEP'
        FocusControl = edtCep
      end
      object Label11: TLabel
        Left = 16
        Top = 251
        Width = 25
        Height = 13
        Caption = 'CNPJ'
        FocusControl = edtCNPJ
      end
      object Label12: TLabel
        Left = 208
        Top = 251
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        FocusControl = edtInscricao
      end
      object Label13: TLabel
        Left = 16
        Top = 294
        Width = 140
        Height = 13
        Caption = 'Num. de Registro no Cart'#243'rio'
        FocusControl = edtRegCartorio
      end
      object Label14: TLabel
        Left = 416
        Top = 294
        Width = 166
        Height = 13
        Caption = 'Num. Cadastro na Junta Comercial'
        FocusControl = edtJuntaComercial
      end
      object Label9: TLabel
        Left = 624
        Top = 8
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = edtCod
      end
      object edtRazao: TDBEdit
        Left = 16
        Top = 24
        Width = 524
        Height = 21
        DataField = 'EMPRAZA'
        DataSource = dsEmpresa
        TabOrder = 0
      end
      object edtNum: TDBEdit
        Left = 546
        Top = 104
        Width = 43
        Height = 21
        DataField = 'EMPDENO'
        DataSource = dsEmpresa
        TabOrder = 3
      end
      object edtEnd: TDBEdit
        Left = 16
        Top = 104
        Width = 524
        Height = 21
        DataField = 'EMPENDE'
        DataSource = dsEmpresa
        TabOrder = 2
      end
      object edtCid: TDBEdit
        Left = 286
        Top = 141
        Width = 329
        Height = 21
        DataField = 'EMPMUNI'
        DataSource = dsEmpresa
        TabOrder = 5
      end
      object edtBai: TDBEdit
        Left = 16
        Top = 141
        Width = 264
        Height = 21
        DataField = 'EMPBAIR'
        DataSource = dsEmpresa
        TabOrder = 4
      end
      object edtTelefone: TDBEdit
        Left = 16
        Top = 224
        Width = 186
        Height = 21
        DataField = 'EMPFONE'
        DataSource = dsEmpresa
        TabOrder = 7
      end
      object edtCelular: TDBEdit
        Left = 208
        Top = 224
        Width = 186
        Height = 21
        DataField = 'EMPFAX'
        DataSource = dsEmpresa
        TabOrder = 8
      end
      object edtEst: TDBEdit
        Left = 16
        Top = 184
        Width = 30
        Height = 21
        DataField = 'EMPESTA'
        DataSource = dsEmpresa
        TabOrder = 6
      end
      object edtCep: TDBEdit
        Left = 16
        Top = 67
        Width = 121
        Height = 21
        DataField = 'EMPCEPE'
        DataSource = dsEmpresa
        TabOrder = 1
      end
      object edtCNPJ: TDBEdit
        Left = 16
        Top = 267
        Width = 186
        Height = 21
        DataField = 'EMPCNPJ'
        DataSource = dsEmpresa
        TabOrder = 9
      end
      object edtInscricao: TDBEdit
        Left = 208
        Top = 267
        Width = 199
        Height = 21
        DataField = 'EMPINSC'
        DataSource = dsEmpresa
        TabOrder = 10
      end
      object edtRegCartorio: TDBEdit
        Left = 16
        Top = 310
        Width = 394
        Height = 21
        DataField = 'EMPNREG'
        DataSource = dsEmpresa
        TabOrder = 11
      end
      object edtJuntaComercial: TDBEdit
        Left = 416
        Top = 310
        Width = 329
        Height = 21
        DataField = 'EMPNCAD'
        DataSource = dsEmpresa
        TabOrder = 12
      end
      object edtCod: TDBEdit
        Left = 624
        Top = 24
        Width = 121
        Height = 41
        Color = clBtnFace
        DataField = 'EMPNUME'
        DataSource = dsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object btnBuscaCep: TBitBtn
        Left = 143
        Top = 65
        Width = 114
        Height = 25
        Action = buscaCEP
        Caption = 'Buscar Cep'
        TabOrder = 14
      end
    end
  end
  object dsEmpresa: TDataSource
    DataSet = DataModule1.tbEMPRESA
    Left = 592
    Top = 216
  end
  object ActionList1: TActionList
    Images = frmMain.Image16
    Left = 529
    Top = 217
    object buscaCEP: TAction
      Category = 'CEP'
      Caption = 'Buscar Cep'
      ImageIndex = 32
      OnExecute = buscaCEPExecute
    end
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
