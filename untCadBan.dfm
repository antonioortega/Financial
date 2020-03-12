object frmCadBan: TfrmCadBan
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Bancos'
  ClientHeight = 322
  ClientWidth = 502
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
    Width = 502
    Height = 281
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 492
    ExplicitHeight = 271
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 37
      Height = 13
      Caption = 'Numero'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 30
      Height = 13
      Caption = 'Titular'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 176
      Width = 38
      Height = 13
      Caption = 'Ag'#234'ncia'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 16
      Top = 216
      Width = 29
      Height = 13
      Caption = 'Conta'
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 43
      Height = 21
      DataField = 'CODBCO'
      DataSource = dsBancos
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 72
      Width = 43
      Height = 21
      DataField = 'NUMBCO'
      DataSource = dsBancos
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 112
      Width = 394
      Height = 21
      DataField = 'NOMBCO'
      DataSource = dsBancos
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 152
      Width = 459
      Height = 21
      DataField = 'TITULAR'
      DataSource = dsBancos
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 192
      Width = 134
      Height = 21
      DataField = 'AGENCIA'
      DataSource = dsBancos
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 232
      Width = 134
      Height = 21
      DataField = 'CTACOR'
      DataSource = dsBancos
      TabOrder = 5
    end
  end
  object pnlControl: TPanel
    Left = 0
    Top = 281
    Width = 502
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 271
    ExplicitWidth = 492
    object btnGrava: TBitBtn
      Left = 321
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Gravar'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnGravaClick
    end
    object btnCancela: TBitBtn
      Left = 402
      Top = 6
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelaClick
    end
  end
  object dsBancos: TDataSource
    DataSet = DataModule1.tbBanco
    Left = 416
    Top = 32
  end
end
