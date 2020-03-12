object frmRelCentroCusto: TfrmRelCentroCusto
  Left = 0
  Top = 0
  Caption = 'Relet'#243'rio Centro de Custo Sint'#233'tico'
  ClientHeight = 480
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelCentroCusto: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dsCentroCusto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowExplosion = True
    BeforePrint = RelCentroCustoBeforePrint
    object RLBand1: TRLBand
      Left = 19
      Top = 49
      Width = 756
      Height = 47
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rblTipoRelatorio: TRLLabel
        Left = 1
        Top = 4
        Width = 392
        Height = 24
        Caption = 'MOVIMENTO FINANCEIRO - RESUMIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rblPeriodo: TRLLabel
        Left = 3
        Top = 27
        Width = 224
        Height = 16
        Caption = 'Per'#237'odo de 00/00/0000 at'#233' 00/00/0000'
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 30
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rblEmpresa: TRLLabel
        Left = 0
        Top = 10
        Width = 756
        Height = 19
        Align = faClientBottom
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object grpBody: TRLGroup
      Left = 19
      Top = 96
      Width = 756
      Height = 43
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 25
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        object RLDraw2: TRLDraw
          Left = 0
          Top = 23
          Width = 756
          Height = 1
          Margins.Bottom = 0
          Align = faClientBottom
          DrawKind = dkLine
          Pen.Style = psInsideFrame
        end
        object RLLabel1: TRLLabel
          Left = 1
          Top = 5
          Width = 82
          Height = 16
          Caption = 'ESTRUTURA'
        end
        object RLLabel5: TRLLabel
          Left = 100
          Top = 5
          Width = 49
          Height = 16
          Caption = 'CONTA'
        end
        object RLLabel6: TRLLabel
          Left = 427
          Top = 5
          Width = 74
          Height = 16
          Caption = 'ENTRADAS'
        end
        object RLLabel7: TRLLabel
          Left = 507
          Top = 5
          Width = 53
          Height = 16
          Caption = 'SA'#205'DAS'
        end
        object RLLabel8: TRLLabel
          Left = 636
          Top = 5
          Width = 118
          Height = 16
          Alignment = taRightJustify
          Caption = 'TOTAL DA CONTA'
        end
      end
      object DetailGridData: TRLDetailGrid
        Left = 0
        Top = 25
        Width = 756
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = DetailGridDataBeforePrint
        object dbCod: TRLDBText
          Left = 16
          Top = 0
          Width = 57
          Height = 16
          DataField = 'PLACOD'
          DataSource = dsCentroCusto
          Text = ''
        end
        object dbDes: TRLDBText
          Left = 100
          Top = 0
          Width = 56
          Height = 16
          DataField = 'PLADES'
          DataSource = dsCentroCusto
          Text = ''
        end
        object dbSaldo: TRLDBText
          Left = 686
          Top = 0
          Width = 68
          Height = 16
          Alignment = taRightJustify
          DataField = 'total_conta'
          DataSource = dsCentroCusto
          Text = ''
        end
        object dbEntradas: TRLDBText
          Left = 427
          Top = -1
          Width = 74
          Height = 16
          Alignment = taRightJustify
          DataField = 'ENTRADAS'
          DataSource = dsCentroCusto
          Text = ''
        end
        object dbSaidas: TRLDBText
          Left = 507
          Top = -1
          Width = 52
          Height = 16
          DataField = 'SAIDAS'
          DataSource = dsCentroCusto
          Text = ''
        end
      end
    end
    object Saldos: TRLBand
      Left = 19
      Top = 139
      Width = 756
      Height = 75
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      BeforePrint = SaldosBeforePrint
      object TotalEntradas: TRLDBResult
        Left = 331
        Top = 6
        Width = 113
        Height = 16
        DataField = 'ENTRADAS'
        DataSource = dsCentroCusto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riMax
        ParentFont = False
        Text = ''
      end
      object TotalSaidas: TRLDBResult
        Left = 331
        Top = 28
        Width = 92
        Height = 16
        DataField = 'SAIDAS'
        DataSource = dsCentroCusto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riMax
        ParentFont = False
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 248
        Top = 6
        Width = 75
        Height = 16
        Alignment = taRightJustify
        Caption = 'Entradas=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 260
        Top = 28
        Width = 63
        Height = 16
        Alignment = taRightJustify
        Caption = 'Sa'#237'das=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 266
        Top = 50
        Width = 57
        Height = 16
        Alignment = taRightJustify
        Caption = 'Saldo=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 69
        Width = 756
        Height = 5
        Margins.Bottom = 1
        Align = faClientBottom
        DrawKind = dkLine
        Pen.Style = psInsideFrame
      end
      object RblSaldo: TRLLabel
        Left = 331
        Top = 50
        Width = 62
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = DataModule1.qryCentroCustoSintetico
    Left = 680
    Top = 16
  end
  object RLPDFFilter: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'Centro_Custos'
    DisplayName = 'Documento PDF'
    ImageFormat = ifOriginal
    Left = 624
    Top = 272
  end
  object RLHTMLFilter: TRLHTMLFilter
    DocumentStyle = dsOldStyle
    FileName = 'Centro_Custos'
    DisplayName = 'P'#225'gina da Web'
    Left = 696
    Top = 272
  end
  object RLRichFilter: TRLRichFilter
    FileName = 'Centro_Custos'
    DisplayName = 'Formato RichText'
    Left = 624
    Top = 328
  end
  object RLXLSFilter: TRLXLSFilter
    PageSetup.PrintNotes = True
    PageSetup.PrintGridLines = True
    FileName = 'D:\Antonio\Projetos\Financeiro\Imagens\Centro_Custos..xls'
    DisplayName = 'Planilha Excel 97-2013'
    Left = 696
    Top = 328
  end
end
