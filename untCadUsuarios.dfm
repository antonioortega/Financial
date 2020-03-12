object frmCadUsuarios: TfrmCadUsuarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 219
  ClientWidth = 606
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
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 219
    Align = alLeft
    TabOrder = 0
    object grdSelUsuario: TDBGrid
      Left = 1
      Top = 1
      Width = 295
      Height = 217
      Align = alClient
      Color = clBtnFace
      DataSource = dsUsuarios
      FixedColor = clHighlight
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUA'
          Visible = True
        end>
    end
  end
  object pnlRight: TPanel
    Left = 297
    Top = 0
    Width = 309
    Height = 219
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = edtNome
    end
    object Label2: TLabel
      Left = 16
      Top = 51
      Width = 30
      Height = 13
      Caption = 'Senha'
      FocusControl = edtSenha
    end
    object edtNome: TDBEdit
      Left = 16
      Top = 24
      Width = 281
      Height = 21
      DataField = 'NOME'
      DataSource = dsUsuarios
      TabOrder = 0
    end
    object edtSenha: TDBEdit
      Left = 16
      Top = 67
      Width = 97
      Height = 21
      DataField = 'SENHA'
      DataSource = dsUsuarios
      PasswordChar = '*'
      TabOrder = 1
    end
    object edtSituacao: TDBRadioGroup
      Left = 119
      Top = 51
      Width = 177
      Height = 37
      Caption = 'Situa'#231#227'o'
      Columns = 2
      DataField = 'SITUA'
      DataSource = dsUsuarios
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 2
      Values.Strings = (
        '0'
        '1')
    end
    object btnUsuNovo: TBitBtn
      Left = 136
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Novo Usu'#225'rio'
      TabOrder = 3
      OnClick = btnUsuNovoClick
    end
    object btnUsuFechar: TBitBtn
      Left = 217
      Top = 184
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 4
      OnClick = btnUsuFecharClick
    end
  end
  object dsUsuarios: TDataSource
    DataSet = DataModule1.tbUSUARIO
    OnDataChange = dsUsuariosDataChange
    Left = 160
    Top = 56
  end
end
