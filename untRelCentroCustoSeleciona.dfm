object frmCentroCustoSeleciona: TfrmCentroCustoSeleciona
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Centro de Custo Seleciona'
  ClientHeight = 485
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelCentroCustoSeleciona: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dsCentroCustoSeleciona
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    object rlCabecalho: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 35
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object rblEmpresa: TRLLabel
        Left = 0
        Top = 15
        Width = 756
        Height = 19
        Align = faClientBottom
        Alignment = taCenter
        Caption = 'Empresa: 001 - TRANSFERGO LTDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 19
      Top = 105
      Width = 756
      Height = 107
      AllowedBands = [btColumnHeader, btDetail, btSummary]
      DataFields = 'PLADES'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 49
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clMedGray
        Borders.FixedTop = True
        Borders.FixedBottom = True
        object RLDBText1: TRLDBText
          Left = 0
          Top = 6
          Width = 140
          Height = 18
          DataField = 'PLADES'
          DataSource = dsCentroCustoSeleciona
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'CONTA: '
        end
        object RLLabel3: TRLLabel
          Left = 13
          Top = 35
          Width = 35
          Height = 14
          Caption = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 81
          Top = 35
          Width = 70
          Height = 14
          Caption = 'HIST'#211'RICO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 289
          Top = 35
          Width = 42
          Height = 14
          Caption = 'BANCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 352
          Top = 35
          Width = 28
          Height = 14
          Caption = 'CTB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 444
          Top = 35
          Width = 56
          Height = 14
          Caption = 'ENTRADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 582
          Top = 35
          Width = 42
          Height = 14
          Caption = 'SA'#205'DA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 701
          Top = 35
          Width = 42
          Height = 14
          Caption = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 49
        Width = 756
        Height = 24
        Margins.TopMargin = 5.000000000000000000
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        InsideMargins.BottomMargin = 2.000000000000000000
        IntegralHeight = False
        ParentFont = False
        object RLDBText2: TRLDBText
          Left = 3
          Top = 1
          Width = 42
          Height = 14
          DataField = 'DTMOV'
          DataSource = dsCentroCustoSeleciona
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 290
          Top = 1
          Width = 47
          Height = 15
          AutoSize = False
          DataField = 'NOMBCO'
          DataSource = dsCentroCustoSeleciona
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 352
          Top = 1
          Width = 28
          Height = 14
          DataField = 'CCT'
          DataSource = dsCentroCustoSeleciona
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 450
          Top = 2
          Width = 63
          Height = 14
          Alignment = taRightJustify
          DataField = 'ENTRADAS'
          DataSource = dsCentroCustoSeleciona
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 585
          Top = 1
          Width = 49
          Height = 14
          Alignment = taRightJustify
          DataField = 'SAIDAS'
          DataSource = dsCentroCustoSeleciona
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 711
          Top = 1
          Width = 42
          Height = 14
          Alignment = taRightJustify
          DataField = 'SALDO'
          DataSource = dsCentroCustoSeleciona
          Text = ''
        end
        object RLDBMemo1: TRLDBMemo
          AlignWithMargins = True
          Left = 82
          Top = 1
          Width = 203
          Height = 14
          Behavior = [beSiteExpander]
          DataField = 'HISTORICO'
          DataSource = dsCentroCustoSeleciona
          Layout = tlBottom
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 73
        Width = 756
        Height = 30
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        object RLDraw1: TRLDraw
          Left = 206
          Top = 0
          Width = 550
          Height = 9
          Align = faRightTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
          Pen.Color = clMedGray
        end
        object RLDBResult1: TRLDBResult
          Left = 393
          Top = 6
          Width = 120
          Height = 16
          Alignment = taRightJustify
          DataField = 'ENTRADAS'
          DataSource = dsCentroCustoSeleciona
          Info = riSum
          Text = ''
        end
        object RLDBResult2: TRLDBResult
          Left = 530
          Top = 7
          Width = 104
          Height = 16
          Alignment = taRightJustify
          DataField = 'SAIDAS'
          DataSource = dsCentroCustoSeleciona
          Info = riSum
          Text = ''
        end
        object RLDBResult3: TRLDBResult
          Left = 657
          Top = 7
          Width = 96
          Height = 16
          Alignment = taRightJustify
          DataField = 'SALDO'
          DataSource = dsCentroCustoSeleciona
          Info = riSum
          Text = ''
        end
        object RLLabel2: TRLLabel
          Left = 206
          Top = 7
          Width = 64
          Height = 16
          Caption = 'TOTAIS:'
        end
        object RLDraw2: TRLDraw
          Left = 206
          Top = 20
          Width = 550
          Height = 9
          Align = faRightBottom
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
          Pen.Color = clMedGray
        end
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 54
      Width = 756
      Height = 51
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object rblTipoRelatorio: TRLLabel
        Left = 1
        Top = 4
        Width = 206
        Height = 24
        Caption = 'CENTRO DE CUSTO'
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
    object RLBand4: TRLBand
      Left = 19
      Top = 212
      Width = 756
      Height = 34
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Width = 2
      Borders.FixedBottom = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel10: TRLLabel
        Left = 166
        Top = 8
        Width = 104
        Height = 16
        Caption = 'TOTAL GERAL:'
      end
      object RLDraw3: TRLDraw
        Left = 152
        Top = 0
        Width = 604
        Height = 9
        Align = faRightTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
        Pen.Color = clMedGray
      end
      object RLDraw4: TRLDraw
        Left = 152
        Top = 23
        Width = 604
        Height = 9
        Align = faRightBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
        Pen.Color = clMedGray
      end
      object RLDBResult4: TRLDBResult
        Left = 393
        Top = 7
        Width = 120
        Height = 16
        Alignment = taRightJustify
        DataField = 'ENTRADAS'
        DataSource = dsCentroCustoSeleciona
        Info = riSum
        Text = ''
      end
      object RLDBResult5: TRLDBResult
        Left = 530
        Top = 8
        Width = 104
        Height = 16
        Alignment = taRightJustify
        DataField = 'SAIDAS'
        DataSource = dsCentroCustoSeleciona
        Info = riSum
        Text = ''
      end
      object RLDBResult6: TRLDBResult
        Left = 657
        Top = 8
        Width = 96
        Height = 16
        Alignment = taRightJustify
        DataField = 'SALDO'
        DataSource = dsCentroCustoSeleciona
        Info = riSum
        Text = ''
      end
    end
  end
  object dsCentroCustoSeleciona: TDataSource
    DataSet = DataModule1.qryCentroCustoSeleciona
    Left = 56
    Top = 360
  end
end
