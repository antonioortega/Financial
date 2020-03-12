object frmRelExtratos: TfrmRelExtratos
  Left = 0
  Top = 0
  Caption = 'frmRelExtratos'
  ClientHeight = 486
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelExtratos: TRLReport
    Left = 0
    Top = 1
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dsExtratos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ForceMinBands = True
    PreviewOptions.ShowModal = True
    PreviewOptions.Caption = 'Pr'#233'-visualiza'#231#227'o - Relat'#243'rio de Validades'
    RealBounds.UsedUnit = buInches
    ShowExplosion = True
    Title = 'Relat'#243'rio de Validades'
    Transparent = False
    object grbBody: TRLGroup
      Left = 19
      Top = 97
      Width = 756
      Height = 104
      AllowedBands = [btHeader, btTitle, btColumnHeader, btDetail, btColumnFooter, btSummary, btFooter]
      DataFields = 'DTMOV'
      Transparent = False
      object bndLista: TRLBand
        Left = 0
        Top = 41
        Width = 756
        Height = 24
        Color = clWhite
        ParentColor = False
        Transparent = False
        BeforePrint = bndListaBeforePrint
        object RLDBText1: TRLDBText
          Left = 3
          Top = 1
          Width = 38
          Height = 14
          DataField = 'DTDOC'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 70
          Top = 1
          Width = 25
          Height = 14
          DataField = 'DOC'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 714
          Top = 1
          Width = 39
          Height = 14
          Alignment = taRightJustify
          DataField = 'SALDO'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 452
          Top = 1
          Width = 59
          Height = 14
          Alignment = taRightJustify
          DataField = 'ENTRADAS'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 123
          Top = 1
          Width = 139
          Height = 14
          Behavior = [beSiteExpander]
          DataField = 'HISTORICO'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          IntegralHeight = True
          ParentFont = False
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 515
          Top = 1
          Width = 24
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'OPE'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 543
          Top = 1
          Width = 42
          Height = 14
          DataField = 'SAIDAS'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBMemo2: TRLDBMemo
          Left = 268
          Top = 1
          Width = 141
          Height = 14
          Behavior = [beSiteExpander]
          DataField = 'CTADES'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          IntegralHeight = True
          ParentFont = False
          Transparent = False
        end
      end
      object bndCabecalho: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 41
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 2
        Borders.FixedBottom = True
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLDBText2: TRLDBText
          Left = -2
          Top = 2
          Width = 207
          Height = 16
          DataField = 'DTMOV'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'LAN'#199'AMENTOS DO DIA: '
          Transparent = False
        end
        object RLLabel1: TRLLabel
          Left = 0
          Top = 21
          Width = 33
          Height = 14
          Caption = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 71
          Top = 22
          Width = 26
          Height = 14
          Caption = 'DOC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 713
          Top = 19
          Width = 40
          Height = 14
          Alignment = taRightJustify
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 124
          Top = 22
          Width = 61
          Height = 14
          Caption = 'HIST'#211'RICO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 268
          Top = 22
          Width = 40
          Height = 14
          Caption = 'GRUPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 452
          Top = 19
          Width = 60
          Height = 14
          Caption = 'ENTRADAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 517
          Top = 19
          Width = 20
          Height = 14
          Alignment = taCenter
          Caption = 'E/S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 543
          Top = 19
          Width = 43
          Height = 14
          Caption = 'SA'#205'DAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object bndSumario: TRLBand
        Left = 0
        Top = 65
        Width = 756
        Height = 32
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 2
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLDBResult1: TRLDBResult
          Left = 638
          Top = 1
          Width = 115
          Height = 16
          Alignment = taRightJustify
          DataField = 'SALDO'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riLastText
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBResult2: TRLDBResult
          Left = 397
          Top = 1
          Width = 115
          Height = 16
          Alignment = taRightJustify
          DataField = 'ENTRADAS'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBResult3: TRLDBResult
          Left = 544
          Top = 1
          Width = 94
          Height = 16
          DataField = 'SAIDAS'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBResult4: TRLDBResult
          Left = 124
          Top = 1
          Width = 194
          Height = 16
          DataField = 'DTMOV'
          DataSource = dsExtratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riLast
          ParentFont = False
          Text = 'TOTAIS DO DIA: '
          Transparent = False
        end
      end
    end
    object bndHeades: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 36
      AutoSize = True
      BandType = btTitle
      Color = clWhite
      ParentColor = False
      Transparent = False
      object rblEmpresa: TRLLabel
        Left = 0
        Top = 0
        Width = 756
        Height = 36
        Align = faTop
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 3
        Borders.FixedBottom = True
        Caption = 'Empresa: 001 - TESTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object bndFooter: TRLBand
      Left = 19
      Top = 267
      Width = 756
      Height = 30
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 530
        Top = 4
        Width = 135
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = 'P'#225'gina: '
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 665
        Top = 4
        Width = 130
        Height = 16
        Info = itLastPageNumber
        Text = 'de '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 4
        Top = 6
        Width = 98
        Height = 16
        Text = 'Emiss'#227'o: '
      end
    end
    object RLBand1: TRLBand
      Left = 19
      Top = 201
      Width = 756
      Height = 66
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      Borders.FixedTop = True
      Borders.FixedBottom = True
      BeforePrint = RLBand1BeforePrint
      object RLDraw2: TRLDraw
        Left = 249
        Top = 14
        Width = 230
        Height = 20
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 15
        Width = 230
        Height = 20
      end
      object RLLabel11: TRLLabel
        Left = 8
        Top = 17
        Width = 98
        Height = 15
        Caption = 'Saldo Anterior=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 157
        Top = 17
        Width = 73
        Height = 15
        Alignment = taRightJustify
        DataField = 'SALDO_ANT'
        DataSource = dsSaldoAnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel12: TRLLabel
        Left = 254
        Top = 16
        Width = 68
        Height = 15
        Caption = 'Entradas=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 375
        Top = 17
        Width = 102
        Height = 15
        Alignment = taRightJustify
        DataField = 'ENTRADAS'
        DataSource = dsExtratos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDraw3: TRLDraw
        Left = 249
        Top = 40
        Width = 230
        Height = 20
      end
      object RLLabel13: TRLLabel
        Left = 266
        Top = 42
        Width = 56
        Height = 15
        Alignment = taRightJustify
        Caption = 'Sa'#237'das=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 394
        Top = 42
        Width = 83
        Height = 15
        Alignment = taRightJustify
        DataField = 'SAIDAS'
        DataSource = dsExtratos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDraw4: TRLDraw
        Left = 523
        Top = 14
        Width = 230
        Height = 20
      end
      object RLLabel14: TRLLabel
        Left = 528
        Top = 16
        Width = 49
        Height = 15
        Caption = 'Saldo=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 693
        Top = 16
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 55
      Width = 756
      Height = 42
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      BeforePrint = RLBand2BeforePrint
      object RLDBText9: TRLDBText
        Left = 540
        Top = 22
        Width = 213
        Height = 16
        Alignment = taRightJustify
        DataField = 'SALDO_ANT'
        DataSource = dsSaldoAnt
        Text = 'SALDO ANTERIOR:    '
      end
      object rlbCabecalho: TRLLabel
        Left = 0
        Top = 0
        Width = 756
        Height = 16
        Align = faTop
        Alignment = taCenter
      end
    end
  end
  object dsExtratos: TDataSource
    DataSet = DataModule1.qryExtratos
    Left = 568
    Top = 361
  end
  object dsSaldoAnt: TDataSource
    DataSet = DataModule1.qrySaldoAnt
    Left = 683
    Top = 362
  end
end