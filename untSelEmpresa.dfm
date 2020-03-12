object frmSelecionaEmpresa: TfrmSelecionaEmpresa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecione a Empresa'
  ClientHeight = 285
  ClientWidth = 351
  Color = clGray
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ScreenSnap = True
  PixelsPerInch = 96
  TextHeight = 13
  object btnSelEmp: TBitBtn
    Left = 8
    Top = 8
    Width = 337
    Height = 32
    Action = actSelEmp
    Caption = 'Clique Aqui para Selecionar'
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object grdSelEmpresa: TDBGrid
    Left = 8
    Top = 46
    Width = 335
    Height = 231
    DataSource = dsSelEmpresa
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EMPRAZA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPNUME'
        Visible = True
      end>
  end
  object dsSelEmpresa: TDataSource
    AutoEdit = False
    DataSet = DataModule1.tbEMPRESA
    Left = 168
    Top = 120
  end
  object ActSel: TActionManager
    Images = frmMain.Image16
    Left = 88
    Top = 120
    StyleName = 'Platform Default'
    object actSelEmp: TAction
      Caption = 'Clique Aqui para Selecionar'
      ImageIndex = 1
      OnExecute = actSelEmpExecute
    end
  end
end
