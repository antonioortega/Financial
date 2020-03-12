object frmSelRelatorios: TfrmSelRelatorios
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 440
  ClientWidth = 775
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Ebrima'
  Font.Style = []
  Padding.Left = 12
  Padding.Top = 3
  Padding.Right = 12
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEscolha: TPanel
    Left = 12
    Top = 3
    Width = 751
    Height = 145
    Margins.Left = 12
    Margins.Top = 12
    Margins.Right = 12
    Margins.Bottom = 0
    Align = alTop
    Ctl3D = True
    Padding.Left = 12
    Padding.Top = 12
    Padding.Right = 12
    Padding.Bottom = 12
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object rdgSelTipoRelatorio: TRadioGroup
      Left = 13
      Top = 13
      Width = 725
      Height = 119
      Align = alClient
      Caption = 'Tipos de Relat'#243'rio'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Extrato Por Per'#237'odo'
        'Centro de Custo - Seleciona'
        'Centro de Custo - Sint'#233'tico'
        'Centro de Custo - Anal'#237'tico'
        'Saldos - Todos os Bancos'
        'Rela'#231#227'o de Cheques'
        'Fluxo de Caixa'
        'Saldo nos Bancos'
        'Cod.Contab - Seleciona'
        'Cheques Pr'#233' por Emiss'#227'o'
        'Cheques Pr'#233' por Vencimento'
        'Centro de Custo - Anual')
      TabOrder = 0
      OnClick = rdgSelTipoRelatorioClick
    end
    object grpSelAno: TGroupBox
      Left = 545
      Top = 81
      Width = 132
      Height = 43
      Caption = 'Selecione o Ano:'
      TabOrder = 1
      Visible = False
      object dtAnosSel: TDateTimePicker
        Left = 10
        Top = 15
        Width = 111
        Height = 21
        Date = 43875.730467708330000000
        Format = 'yyyy'
        Time = 43875.730467708330000000
        DateMode = dmUpDown
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 12
    Top = 148
    Width = 751
    Height = 216
    Margins.Left = 12
    Margins.Top = 12
    Margins.Right = 12
    Margins.Bottom = 0
    Align = alClient
    Ctl3D = True
    Padding.Left = 12
    Padding.Right = 12
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object lblInstrucoes: TLabel
      Left = 13
      Top = 199
      Width = 725
      Height = 16
      Align = alBottom
      Alignment = taCenter
      Caption = 
        'Segure a tecla CRTL para selecionar v'#225'rios campos ou deixe sem s' +
        'ele'#231#227'o para listar todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Visible = False
      ExplicitWidth = 583
    end
    object pnlBancos: TPanel
      Left = 298
      Top = 1
      Width = 246
      Height = 198
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 1
      Padding.Right = 1
      TabOrder = 0
      Visible = False
      object Label1: TLabel
        Left = 1
        Top = 0
        Width = 244
        Height = 16
        Align = alTop
        Caption = 'Bancos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ExplicitWidth = 46
      end
      object grdBancos: TDBGrid
        Left = 1
        Top = 16
        Width = 244
        Height = 182
        Align = alClient
        DataSource = dsBancos
        Options = [dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Ebrima'
        TitleFont.Style = []
        OnCellClick = grdBancosCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODBCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBCO'
            Width = 148
            Visible = True
          end>
      end
    end
    object pnlContas: TPanel
      Left = 13
      Top = 1
      Width = 285
      Height = 198
      Align = alLeft
      BevelOuter = bvNone
      Padding.Right = 1
      TabOrder = 1
      Visible = False
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 284
        Height = 16
        Align = alTop
        Caption = 'Centro de Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ExplicitWidth = 105
      end
      object grdContas: TDBGrid
        Left = 0
        Top = 16
        Width = 284
        Height = 182
        Align = alClient
        DataSource = dsContas
        Options = [dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Ebrima'
        TitleFont.Style = []
        OnCellClick = grdContasCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PLACOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLADES'
            Width = 200
            Visible = True
          end>
      end
    end
    object pnlContabil: TPanel
      Left = 544
      Top = 1
      Width = 194
      Height = 198
      Align = alRight
      BevelOuter = bvNone
      Padding.Left = 1
      Padding.Right = 1
      TabOrder = 2
      Visible = False
      object Label3: TLabel
        Left = 1
        Top = 0
        Width = 192
        Height = 16
        Align = alTop
        Caption = 'C'#243'digo Cont'#225'bil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        ExplicitWidth = 99
      end
      object grdContabil: TDBGrid
        Left = 1
        Top = 16
        Width = 192
        Height = 182
        Align = alClient
        DataSource = dsContabil
        Options = [dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Ebrima'
        TitleFont.Style = []
        OnCellClick = grdContabilCellClick
      end
    end
  end
  object Panel5: TPanel
    Left = 12
    Top = 364
    Width = 751
    Height = 76
    Margins.Left = 12
    Margins.Top = 12
    Margins.Right = 12
    Margins.Bottom = 0
    Align = alBottom
    Ctl3D = True
    Padding.Left = 12
    Padding.Top = 12
    Padding.Right = 12
    Padding.Bottom = 12
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    object lblDataIni: TLabel
      Left = 40
      Top = 16
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Inicial:'
    end
    object lblDataFin: TLabel
      Left = 46
      Top = 40
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Final:'
    end
    object lblComboBanco: TLabel
      Left = 267
      Top = 16
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object btnPreview: TBitBtn
      Left = 304
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = btnPreviewClick
    end
    object edtRelDatIni: TDateTimePicker
      Left = 104
      Top = 16
      Width = 105
      Height = 21
      Date = 43867.688994143520000000
      Time = 43867.688994143520000000
      TabOrder = 1
    end
    object edtRelDatFin: TDateTimePicker
      Left = 104
      Top = 40
      Width = 105
      Height = 21
      Date = 43867.689084606480000000
      Time = 43867.689084606480000000
      TabOrder = 2
    end
    object edtRelBanco: TDBLookupComboBox
      Left = 304
      Top = 16
      Width = 417
      Height = 21
      KeyField = 'NOMBCO'
      ListField = 'NOMBCO'
      ListSource = dsBancos
      TabOrder = 3
    end
    object btnFechar: TButton
      Left = 646
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = btnFecharClick
    end
  end
  object dsContas: TDataSource
    DataSet = DataModule1.tbCONTAS
    Left = 204
    Top = 35
  end
  object dsBancos: TDataSource
    DataSet = DataModule1.tbBanco
    Left = 252
    Top = 35
  end
  object dsContabil: TDataSource
    DataSet = DataModule1.tbContabil
    Left = 300
    Top = 35
  end
end
