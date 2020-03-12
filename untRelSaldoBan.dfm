object frmSaldoBancos: TfrmSaldoBancos
  Left = 0
  Top = 0
  Caption = 'frmSaldoBancos'
  ClientHeight = 540
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object relSaldoBancos: TRLReport
    Left = 0
    Top = -8
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dsSaldoBan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = relSaldoBancosBeforePrint
    object RLGroup1: TRLGroup
      Left = 19
      Top = 105
      Width = 756
      Height = 67
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 17
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 2
        Borders.FixedBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        object Label1: TLabel
          Left = 9
          Top = 1
          Width = 75
          Height = 14
          Caption = 'Conta - Banco'
        end
        object Label2: TLabel
          Left = 249
          Top = 1
          Width = 74
          Height = 14
          Caption = 'Dt Conferncia'
        end
        object Label3: TLabel
          Left = 352
          Top = 1
          Width = 79
          Height = 14
          Caption = 'Saldo Anterior'
        end
        object Label4: TLabel
          Left = 484
          Top = 1
          Width = 48
          Height = 14
          Alignment = taRightJustify
          Caption = 'Entradas'
        end
        object Label5: TLabel
          Left = 594
          Top = 1
          Width = 36
          Height = 14
          Alignment = taRightJustify
          Caption = 'Saidas'
        end
        object Label6: TLabel
          Left = 692
          Top = 1
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = 'Saldo Atual'
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 17
        Width = 756
        Height = 25
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clSilver
        Borders.FixedBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLDetailGrid1BeforePrint
        object RLDBText2: TRLDBText
          Left = 372
          Top = 0
          Width = 60
          Height = 14
          Alignment = taRightJustify
          DataField = 'SALDOANT'
          DataSource = dsSaldoBan
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 473
          Top = 0
          Width = 59
          Height = 14
          Alignment = taRightJustify
          DataField = 'ENTRADAS'
          DataSource = dsSaldoBan
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 588
          Top = 0
          Width = 42
          Height = 14
          Alignment = taRightJustify
          DataField = 'SAIDAS'
          DataSource = dsSaldoBan
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 8
          Top = 0
          Width = 40
          Height = 14
          DataField = 'BANCO'
          DataSource = dsSaldoBan
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 264
          Top = 0
          Width = 44
          Height = 14
          Alignment = taCenter
          DataField = 'DTCONF'
          DataSource = dsSaldoBan
          Text = ''
        end
        object LblSaldoTotal: TRLLabel
          Left = 676
          Top = 0
          Width = 77
          Height = 14
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 42
        Width = 756
        Height = 24
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        BeforePrint = RLBand2BeforePrint
        object Label7: TLabel
          Left = 249
          Top = 1
          Width = 53
          Height = 16
          Caption = 'Totais=>'
        end
        object lblTotalGeral: TRLLabel
          Left = 682
          Top = 1
          Width = 71
          Height = 16
          Alignment = taRightJustify
          Caption = 'TotalGeral'
        end
        object RLDBResult1: TRLDBResult
          Left = 315
          Top = 1
          Width = 116
          Height = 16
          Alignment = taRightJustify
          DataField = 'SALDOANT'
          DataSource = dsSaldoBan
          Info = riSum
          Text = ''
        end
      end
    end
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
        Left = 6
        Top = 4
        Width = 223
        Height = 24
        Caption = 'SALDOS BANC'#193'RIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rblPeriodo: TRLLabel
        Left = 8
        Top = 27
        Width = 224
        Height = 16
        Caption = 'Per'#237'odo de 00/00/0000 at'#233' 00/00/0000'
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 172
      Width = 756
      Height = 29
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 8
        Top = 5
        Width = 113
        Height = 16
        Text = 'Emitido em: '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 622
        Top = 5
        Width = 131
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = 'P'#225'gina:'
      end
    end
  end
  object dsSaldoBan: TDataSource
    DataSet = DataModule1.qrySaldoBancos
    Left = 624
    Top = 272
  end
end
