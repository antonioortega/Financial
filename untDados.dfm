object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 472
  Width = 488
  object SQLiteDriver: TFDPhysSQLiteDriverLink
    DriverID = 'Financeiro'
    Left = 24
    Top = 16
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 16
  end
  object Connection: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'StringFormat=Unicode'
      
        'Database=D:\Antonio\Projetos\Financeiro\Vers'#227'o 2\Win32\Debug\Dad' +
        'os\dbfinanceiro.sdb'
      'DriverID=Financeiro')
    LoginPrompt = False
    Left = 328
    Top = 16
  end
  object tbUSUARIO: TFDTable
    AfterInsert = tbUSUARIOAfterInsert
    BeforePost = tbUSUARIOBeforePost
    IndexFieldNames = 'CODIGO'
    Connection = Connection
    UpdateOptions.UpdateTableName = 'USUARIOS'
    TableName = 'USUARIOS'
    Left = 24
    Top = 88
    object tbUSUARIOCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      FixedChar = True
      Size = 2
    end
    object tbUSUARIONOME: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      FixedChar = True
      Size = 27
    end
    object tbUSUARIOSENHA: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'SENHA'
      FixedChar = True
      Size = 6
    end
    object tbUSUARIOSITUA: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUA'
      Origin = 'SITUA'
      OnGetText = tbUSUARIOSITUAGetText
    end
    object tbUSUARIOLOCAL: TWideStringField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = 'LOCAL'
      FixedChar = True
      Size = 30
    end
    object tbUSUARIOMES_USO: TWideStringField
      DisplayLabel = 'M'#234's de Uso'
      FieldName = 'MES_USO'
      Origin = 'MES_USO'
      FixedChar = True
      Size = 2
    end
    object tbUSUARIOANO_USO: TWideStringField
      DisplayLabel = 'Ano de Uso'
      FieldName = 'ANO_USO'
      Origin = 'ANO_USO'
      FixedChar = True
      Size = 4
    end
  end
  object CurrentUser: TFDQuery
    Connection = Connection
    Left = 256
    Top = 16
  end
  object tbEMPRESA: TFDTable
    IndexFieldNames = 'EMPNUME'
    Connection = Connection
    UpdateOptions.UpdateTableName = 'EMPRESAS'
    TableName = 'EMPRESAS'
    Left = 88
    Top = 88
    object tbEMPRESAEMPRAZA: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'EMPRAZA'
      Origin = 'EMPRAZA'
      FixedChar = True
      Size = 40
    end
    object tbEMPRESAEMPNUME: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'EMPNUME'
      Origin = 'EMPNUME'
      FixedChar = True
      Size = 3
    end
    object tbEMPRESAEMPENDE: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'EMPENDE'
      Origin = 'EMPENDE'
      FixedChar = True
      Size = 40
    end
    object tbEMPRESAEMPMUNI: TWideStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'EMPMUNI'
      Origin = 'EMPMUNI'
      FixedChar = True
      Size = 25
    end
    object tbEMPRESAEMPBAIR: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'EMPBAIR'
      Origin = 'EMPBAIR'
      FixedChar = True
    end
    object tbEMPRESAEMPFONE: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'EMPFONE'
      Origin = 'EMPFONE'
      FixedChar = True
      Size = 14
    end
    object tbEMPRESAEMPFAX: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'EMPFAX'
      Origin = 'EMPFAX'
      FixedChar = True
      Size = 14
    end
    object tbEMPRESAEMPESTA: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'EMPESTA'
      Origin = 'EMPESTA'
      FixedChar = True
      Size = 2
    end
    object tbEMPRESAEMPUF: TWideStringField
      FieldName = 'EMPUF'
      Origin = 'EMPUF'
      FixedChar = True
    end
    object tbEMPRESAEMPCEPE: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'EMPCEPE'
      Origin = 'EMPCEPE'
      FixedChar = True
      Size = 9
    end
    object tbEMPRESAEMPCNPJ: TWideStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'EMPCNPJ'
      Origin = 'EMPCNPJ'
      FixedChar = True
      Size = 14
    end
    object tbEMPRESAEMPINSC: TWideStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'EMPINSC'
      Origin = 'EMPINSC'
      FixedChar = True
      Size = 15
    end
    object tbEMPRESAEMPNREG: TWideStringField
      DisplayLabel = 'Num. de Registro no Cart'#243'rio'
      FieldName = 'EMPNREG'
      Origin = 'EMPNREG'
      FixedChar = True
      Size = 30
    end
    object tbEMPRESAEMPNCAD: TWideStringField
      DisplayLabel = 'Num. Cadastro na Junta Comercial'
      FieldName = 'EMPNCAD'
      Origin = 'EMPNCAD'
      FixedChar = True
      Size = 25
    end
    object tbEMPRESAEMPNASS: TWideStringField
      FieldName = 'EMPNASS'
      Origin = 'EMPNASS'
      FixedChar = True
      Size = 110
    end
    object tbEMPRESAEMPCASS: TWideStringField
      FieldName = 'EMPCASS'
      Origin = 'EMPCASS'
      FixedChar = True
      Size = 110
    end
    object tbEMPRESAEMPCPFA: TWideStringField
      FieldName = 'EMPCPFA'
      Origin = 'EMPCPFA'
      FixedChar = True
      Size = 14
    end
    object tbEMPRESAEMPDNRC: TWideStringField
      FieldName = 'EMPDNRC'
      Origin = 'EMPDNRC'
      FixedChar = True
      Size = 3
    end
    object tbEMPRESAEMPDABE: TDateTimeField
      FieldName = 'EMPDABE'
      Origin = 'EMPDABE'
    end
    object tbEMPRESAEMPDENC: TDateTimeField
      FieldName = 'EMPDENC'
      Origin = 'EMPDENC'
    end
    object tbEMPRESAEMPACTA: TWideStringField
      FieldName = 'EMPACTA'
      Origin = 'EMPACTA'
      FixedChar = True
      Size = 4
    end
    object tbEMPRESAEMPAHPD: TWideStringField
      FieldName = 'EMPAHPD'
      Origin = 'EMPAHPD'
      FixedChar = True
      Size = 4
    end
    object tbEMPRESAEMPIRPJ: TWideStringField
      FieldName = 'EMPIRPJ'
      Origin = 'EMPIRPJ'
      FixedChar = True
      Size = 40
    end
    object tbEMPRESAEMPIMUN: TWideStringField
      FieldName = 'EMPIMUN'
      Origin = 'EMPIMUN'
      FixedChar = True
      Size = 12
    end
    object tbEMPRESAEMPCNAE: TWideStringField
      FieldName = 'EMPCNAE'
      Origin = 'EMPCNAE'
      FixedChar = True
      Size = 12
    end
    object tbEMPRESAEMPNIRE: TWideStringField
      FieldName = 'EMPNIRE'
      Origin = 'EMPNIRE'
      FixedChar = True
      Size = 12
    end
    object tbEMPRESAEMPATIV: TWideStringField
      FieldName = 'EMPATIV'
      Origin = 'EMPATIV'
      FixedChar = True
      Size = 70
    end
    object tbEMPRESAEMPESCR: TWideStringField
      FieldName = 'EMPESCR'
      Origin = 'EMPESCR'
      FixedChar = True
      Size = 40
    end
    object tbEMPRESAEMPCONT: TWideStringField
      FieldName = 'EMPCONT'
      Origin = 'EMPCONT'
      FixedChar = True
      Size = 40
    end
    object tbEMPRESAEMPNCRC: TWideStringField
      FieldName = 'EMPNCRC'
      Origin = 'EMPNCRC'
      FixedChar = True
      Size = 11
    end
    object tbEMPRESAEMPDENO: TWideStringField
      FieldName = 'EMPDENO'
      Origin = 'EMPDENO'
      FixedChar = True
      Size = 60
    end
    object tbEMPRESAEND_COMP: TWideStringField
      FieldName = 'END_COMP'
      Origin = 'END_COMP'
      FixedChar = True
      Size = 22
    end
    object tbEMPRESAU_ENTIDA: TIntegerField
      FieldName = 'U_ENTIDA'
      Origin = 'U_ENTIDA'
    end
  end
  object tbCONTAS: TFDTable
    IndexFieldNames = 'PLACOD'
    Connection = Connection
    UpdateOptions.UpdateTableName = 'CONTA'
    TableName = 'CONTA'
    Left = 152
    Top = 88
    object tbCONTASPLACOD: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PLACOD'
      Origin = 'PLACOD'
      FixedChar = True
      Size = 5
    end
    object tbCONTASPLADES: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PLADES'
      Origin = 'PLADES'
      FixedChar = True
      Size = 60
    end
    object tbCONTASPLARL1: TIntegerField
      FieldName = 'PLARL1'
      Origin = 'PLARL1'
    end
  end
  object MovFin: TFDConnection
    Params.Strings = (
      'StringFormat=Unicode'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      
        'Database=D:\Antonio\Projetos\Financeiro\Vers'#227'o 2\Win32\Debug\Dad' +
        'os\001\MovBan001.db'
      'DriverID=Financeiro')
    FormatOptions.AssignedValues = [fvDefaultParamDataType, fvDataSnapCompatibility]
    FormatOptions.DefaultParamDataType = ftString
    FormatOptions.DataSnapCompatibility = True
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 216
  end
  object MovBanCriar: TFDSQLiteBackup
    DriverLink = SQLiteDriver
    Catalog = 'MAIN'
    DestCatalog = 'MAIN'
    Left = 80
    Top = 216
  end
  object qryAtualiza: TFDQuery
    IndexFieldNames = 'DTMOV'
    Connection = MovFin
    SQL.Strings = (
      'SELECT * FROM MOVBAN')
    Left = 24
    Top = 280
  end
  object tbBanco: TFDTable
    IndexFieldNames = 'CODBCO'
    Connection = MovFin
    UpdateOptions.UpdateTableName = 'BANCO'
    TableName = 'BANCO'
    Left = 24
    Top = 344
    object tbBancoCODBCO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODBCO'
      Origin = 'CODBCO'
      FixedChar = True
      Size = 3
    end
    object tbBancoNUMBCO: TWideStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMBCO'
      Origin = 'NUMBCO'
      FixedChar = True
      Size = 3
    end
    object tbBancoNOMBCO: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMBCO'
      Origin = 'NOMBCO'
      FixedChar = True
      Size = 30
    end
    object tbBancoTITULAR: TWideStringField
      DisplayLabel = 'Titular'
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      FixedChar = True
      Size = 35
    end
    object tbBancoAGENCIA: TWideStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      FixedChar = True
      Size = 10
    end
    object tbBancoCTACOR: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'CTACOR'
      Origin = 'CTACOR'
      FixedChar = True
      Size = 10
    end
    object tbBancoFLUXO: TIntegerField
      DisplayLabel = 'Fluxo'
      FieldName = 'FLUXO'
      Origin = 'FLUXO'
    end
    object tbBancoDT_CONF: TDateTimeField
      DisplayLabel = 'Data de Conferencia'
      FieldName = 'DT_CONF'
      Origin = 'DT_CONF'
      DisplayFormat = '00/00/0000'
    end
  end
  object qryMovimento: TFDQuery
    Connection = MovFin
    SQL.Strings = (
      'SELECT * FROM MOVBAN'
      'WHERE (DTMOV >= :DTIni) AND (DTMOV <= :DTFin)'
      'AND (CONFE = :CONF) AND (CODBAN = :BANCO)'
      'ORDER BY DTMOV')
    Left = 24
    Top = 408
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 31413d
      end
      item
        Name = 'DTFIN'
        DataType = ftDate
        ParamType = ptInput
        Value = 44196d
      end
      item
        Name = 'CONF'
        DataType = ftString
        ParamType = ptInput
        Value = 'N'
      end
      item
        Name = 'BANCO'
        DataType = ftString
        ParamType = ptInput
        Value = '001'
      end>
    object qryMovimentoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryMovimentoCODBAN: TWideStringField
      FieldName = 'CODBAN'
      Origin = 'CODBAN'
      FixedChar = True
      Size = 3
    end
    object qryMovimentoDTMOV: TDateField
      FieldName = 'DTMOV'
      Origin = 'DTMOV'
    end
    object qryMovimentoDOC: TWideStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      FixedChar = True
      Size = 8
    end
    object qryMovimentoCHQ: TWideStringField
      FieldName = 'CHQ'
      Origin = 'CHQ'
      FixedChar = True
      Size = 6
    end
    object qryMovimentoDTDOC: TDateField
      FieldName = 'DTDOC'
      Origin = 'DTDOC'
    end
    object qryMovimentoHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      FixedChar = True
      Size = 80
    end
    object qryMovimentoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object qryMovimentoSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      currency = True
    end
    object qryMovimentoOPE: TWideStringField
      FieldName = 'OPE'
      Origin = 'OPE'
      FixedChar = True
      Size = 1
    end
    object qryMovimentoCTA: TWideStringField
      FieldName = 'CTA'
      Origin = 'CTA'
      FixedChar = True
      Size = 5
    end
    object qryMovimentoCODGRU: TWideStringField
      FieldName = 'CODGRU'
      Origin = 'CODGRU'
      FixedChar = True
      Size = 15
    end
    object qryMovimentoID_APA: TWideStringField
      FieldName = 'ID_APA'
      Origin = 'ID_APA'
      FixedChar = True
      Size = 5
    end
    object qryMovimentoID_REC: TWideStringField
      FieldName = 'ID_REC'
      Origin = 'ID_REC'
      FixedChar = True
      Size = 5
    end
    object qryMovimentoATM: TIntegerField
      FieldName = 'ATM'
      Origin = 'ATM'
    end
    object qryMovimentoFLAG: TWideStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object qryMovimentoID_ENT: TWideStringField
      FieldName = 'ID_ENT'
      Origin = 'ID_ENT'
      FixedChar = True
      Size = 14
    end
    object qryMovimentoNUMCHQ: TWideStringField
      FieldName = 'NUMCHQ'
      Origin = 'NUMCHQ'
      FixedChar = True
      Size = 6
    end
    object qryMovimentoCCT: TWideStringField
      FieldName = 'CCT'
      Origin = 'CCT'
      FixedChar = True
      Size = 3
    end
    object qryMovimentoCONFE: TWideStringField
      FieldName = 'CONFE'
      Origin = 'CONFE'
      FixedChar = True
      Size = 1
    end
    object qryMovimentoCCTADES: TStringField
      FieldKind = fkLookup
      FieldName = 'CCTADES'
      LookupDataSet = tbCONTAS
      LookupKeyFields = 'PLACOD'
      LookupResultField = 'PLADES'
      KeyFields = 'CTA'
      Size = 40
      Lookup = True
    end
  end
  object tbLanTotais: TFDTable
    Connection = MovFin
    UpdateOptions.UpdateTableName = 'MOVBAN'
    TableName = 'MOVBAN'
    Left = 88
    Top = 280
    object tbLanTotaisNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object tbLanTotaisCODBAN: TWideStringField
      FieldName = 'CODBAN'
      Origin = 'CODBAN'
      FixedChar = True
      Size = 3
    end
    object tbLanTotaisDTMOV: TDateField
      FieldName = 'DTMOV'
      Origin = 'DTMOV'
    end
    object tbLanTotaisDOC: TWideStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      FixedChar = True
      Size = 8
    end
    object tbLanTotaisCHQ: TWideStringField
      FieldName = 'CHQ'
      Origin = 'CHQ'
      FixedChar = True
      Size = 6
    end
    object tbLanTotaisDTDOC: TDateField
      FieldName = 'DTDOC'
      Origin = 'DTDOC'
    end
    object tbLanTotaisHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      FixedChar = True
      Size = 80
    end
    object tbLanTotaisVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object tbLanTotaisSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object tbLanTotaisOPE: TWideStringField
      FieldName = 'OPE'
      Origin = 'OPE'
      FixedChar = True
      Size = 1
    end
    object tbLanTotaisCTA: TWideStringField
      FieldName = 'CTA'
      Origin = 'CTA'
      FixedChar = True
      Size = 5
    end
    object tbLanTotaisCODGRU: TWideStringField
      FieldName = 'CODGRU'
      Origin = 'CODGRU'
      FixedChar = True
      Size = 15
    end
    object tbLanTotaisID_APA: TWideStringField
      FieldName = 'ID_APA'
      Origin = 'ID_APA'
      FixedChar = True
      Size = 5
    end
    object tbLanTotaisID_REC: TWideStringField
      FieldName = 'ID_REC'
      Origin = 'ID_REC'
      FixedChar = True
      Size = 5
    end
    object tbLanTotaisATM: TIntegerField
      FieldName = 'ATM'
      Origin = 'ATM'
    end
    object tbLanTotaisFLAG: TWideStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object tbLanTotaisID_ENT: TWideStringField
      FieldName = 'ID_ENT'
      Origin = 'ID_ENT'
      FixedChar = True
      Size = 14
    end
    object tbLanTotaisNUMCHQ: TWideStringField
      FieldName = 'NUMCHQ'
      Origin = 'NUMCHQ'
      FixedChar = True
      Size = 6
    end
    object tbLanTotaisCCT: TWideStringField
      FieldName = 'CCT'
      Origin = 'CCT'
      FixedChar = True
      Size = 3
    end
    object tbLanTotaisCONFE: TWideStringField
      FieldName = 'CONFE'
      Origin = 'CONFE'
      FixedChar = True
      Size = 1
    end
  end
  object qryExtratos: TFDQuery
    Connection = MovFin
    SQL.Strings = (
      
        'SELECT IFNULL(SUM(CASE WHEN OPE = '#39'S'#39' THEN VALOR * -1 ELSE 0.00 ' +
        'END), 0.00) AS SAIDAS,'
      
        'IFNULL(SUM(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE 0.00 END), 0.00) ' +
        'AS ENTRADAS, *      '
      '        FROM MOVBAN'
      'WHERE (DTMOV >= :DTIni) AND (DTMOV <= :DTFin)'
      'AND (CONFE = :CONF) AND (CODBAN = :BANCO) '
      '       GROUP BY DOC'
      'ORDER BY DTMOV ASC, NUMERO ASC'
      ''
      '')
    Left = 260
    Top = 224
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43862d
      end
      item
        Name = 'DTFIN'
        DataType = ftDate
        ParamType = ptInput
        Value = 44196d
      end
      item
        Name = 'CONF'
        DataType = ftString
        ParamType = ptInput
        Value = 'S'
      end
      item
        Name = 'BANCO'
        DataType = ftString
        ParamType = ptInput
        Value = '001'
      end>
    object qryExtratosSAIDAS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SAIDAS'
      Origin = 'SAIDAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object qryExtratosENTRADAS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADAS'
      Origin = 'ENTRADAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object qryExtratosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryExtratosCODBAN: TWideStringField
      FieldName = 'CODBAN'
      Origin = 'CODBAN'
      FixedChar = True
      Size = 3
    end
    object qryExtratosDTMOV: TDateField
      FieldName = 'DTMOV'
      Origin = 'DTMOV'
    end
    object qryExtratosCTADES: TWideStringField
      DisplayWidth = 58
      FieldKind = fkLookup
      FieldName = 'CTADES'
      LookupDataSet = tbCONTAS
      LookupKeyFields = 'PLACOD'
      LookupResultField = 'PLADES'
      KeyFields = 'CTA'
      Size = 40
      Lookup = True
    end
    object qryExtratosDOC: TWideStringField
      FieldName = 'DOC'
      Origin = 'DOC'
      FixedChar = True
      Size = 8
    end
    object qryExtratosCHQ: TWideStringField
      FieldName = 'CHQ'
      Origin = 'CHQ'
      FixedChar = True
      Size = 6
    end
    object qryExtratosDTDOC: TDateField
      FieldName = 'DTDOC'
      Origin = 'DTDOC'
    end
    object qryExtratosHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      FixedChar = True
      Size = 80
    end
    object qryExtratosVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object qryExtratosSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      currency = True
    end
    object qryExtratosOPE: TWideStringField
      FieldName = 'OPE'
      Origin = 'OPE'
      FixedChar = True
      Size = 1
    end
    object qryExtratosCTA: TWideStringField
      FieldName = 'CTA'
      Origin = 'CTA'
      FixedChar = True
      Size = 5
    end
    object qryExtratosCODGRU: TWideStringField
      FieldName = 'CODGRU'
      Origin = 'CODGRU'
      FixedChar = True
      Size = 15
    end
    object qryExtratosID_APA: TWideStringField
      FieldName = 'ID_APA'
      Origin = 'ID_APA'
      FixedChar = True
      Size = 5
    end
    object qryExtratosID_REC: TWideStringField
      FieldName = 'ID_REC'
      Origin = 'ID_REC'
      FixedChar = True
      Size = 5
    end
    object qryExtratosATM: TIntegerField
      FieldName = 'ATM'
      Origin = 'ATM'
    end
    object qryExtratosFLAG: TWideStringField
      FieldName = 'FLAG'
      Origin = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object qryExtratosID_ENT: TWideStringField
      FieldName = 'ID_ENT'
      Origin = 'ID_ENT'
      FixedChar = True
      Size = 14
    end
    object qryExtratosNUMCHQ: TWideStringField
      FieldName = 'NUMCHQ'
      Origin = 'NUMCHQ'
      FixedChar = True
      Size = 6
    end
    object qryExtratosCCT: TWideStringField
      FieldName = 'CCT'
      Origin = 'CCT'
      FixedChar = True
      Size = 3
    end
    object qryExtratosCONFE: TWideStringField
      FieldName = 'CONFE'
      Origin = 'CONFE'
      FixedChar = True
      Size = 1
    end
  end
  object qrySaldoAnt: TFDQuery
    Connection = MovFin
    SQL.Strings = (
      'SELECT DTMOV, CODBAN, NUMERO, SALDO AS SALDO_ANT '
      'FROM MOVBAN'
      'WHERE DTMOV>=:DTSALDOANT AND DTMOV<=:DTSALDOFIN '
      'AND CODBAN=:BANCO AND CONFE='#39'S'#39
      'ORDER BY DTMOV DESC, NUMERO DESC LIMIT 1;'
      '  ')
    Left = 261
    Top = 176
    ParamData = <
      item
        Name = 'DTSALDOANT'
        DataType = ftDate
        ParamType = ptInput
        Value = 43862d
      end
      item
        Name = 'DTSALDOFIN'
        DataType = ftDate
        ParamType = ptInput
        Value = 43890d
      end
      item
        Name = 'BANCO'
        DataType = ftString
        ParamType = ptInput
        Value = '002'
      end>
    object qrySaldoAntSALDO_ANT: TFloatField
      FieldName = 'SALDO_ANT'
      Origin = 'SALDO'
      currency = True
    end
  end
  object qryCentroCustoSintetico: TFDQuery
    Connection = MovFin
    SQL.Strings = (
      '--Centro de Custo Sint'#233'tico'
      'SELECT cc.PLACOD, SUBSTR(cc.PLACOD, 1, 3)||'#39'00'#39' as CHILD,'
      'SUBSTR(cc.PLACOD, 1, 2)||'#39'000'#39' AS PAI'
      ', cc.PLADES, m.CODBAN'
      ''
      
        ',IFNULL(SUM(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE 0.00 END), 0.00)' +
        ' AS ENTRADAS '
      
        ',IFNULL(SUM(CASE WHEN OPE = '#39'S'#39' THEN VALOR ELSE 0.00 END), 0.00)' +
        ' AS SAIDAS'
      ', sum'
      '('
      'CASE WHEN m.OPE = '#39'E'#39' THEN'
      'm.VALOR'
      'WHEN m.OPE = '#39'S'#39' THEN'
      'm.VALOR * -1'
      'ELSE'
      '0.00'
      'END'
      ') AS total_conta'
      'FROM CONTA cc'
      ''
      
        'LEFT JOIN MOVBAN m ON m.CTA LIKE CHILD||'#39'%'#39' or SUBSTR(m.CTA, 1, ' +
        '2)||'#39'000'#39' = cc.PLACOD or SUBSTR(m.CTA, 1, 3)||'#39'00'#39' = cc.PLACOD'
      
        'WHERE DTMOV>=:DTCCustoDIni AND DTMOV<=:DTCCustoDFin AND CONFE='#39'S' +
        #39' AND CCT in (select CCT from MOVBAN)'
      'GROUP BY cc.PLACOD'
      ' ORDER BY cc.PLACOD ASC')
    Left = 384
    Top = 224
    ParamData = <
      item
        Name = 'DTCCUSTODINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43862d
      end
      item
        Name = 'DTCCUSTODFIN'
        DataType = ftDate
        ParamType = ptInput
        Value = 43890d
      end>
    object qryCentroCustoSinteticoPLACOD: TWideStringField
      FieldName = 'PLACOD'
      Origin = 'PLACOD'
      FixedChar = True
      Size = 5
    end
    object qryCentroCustoSinteticoCHILD: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHILD'
      Origin = 'CHILD'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryCentroCustoSinteticoPAI: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAI'
      Origin = 'PAI'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryCentroCustoSinteticoPLADES: TWideStringField
      FieldName = 'PLADES'
      Origin = 'PLADES'
      FixedChar = True
      Size = 60
    end
    object qryCentroCustoSinteticoENTRADAS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADAS'
      Origin = 'ENTRADAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object qryCentroCustoSinteticoSAIDAS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SAIDAS'
      Origin = 'SAIDAS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object qryCentroCustoSinteticototal_conta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total_conta'
      Origin = 'total_conta'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
  end
  object tbContabil: TFDTable
    BeforeInsert = tbContabilBeforeInsert
    AfterInsert = tbContabilAfterInsert
    IndexFieldNames = 'COD'
    Connection = MovFin
    UpdateOptions.UpdateTableName = 'CCTB'
    TableName = 'CCTB'
    Left = 80
    Top = 344
    object tbContabilCOD: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD'
      FixedChar = True
      Size = 3
    end
    object tbContabilDESCR: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCR'
      FixedChar = True
    end
  end
  object qryCentroCustoSeleciona: TFDQuery
    Connection = MovFin
    SQL.Strings = (
      
        'SELECT cc.PLADES, cc.PLACOD ,m.DTMOV, m.NUMERO, m.HISTORICO, b.N' +
        'OMBCO, m.CCT, '
      
        'IFNULL(SUM(CASE WHEN OPE = '#39'E'#39' THEN m.VALOR ELSE 0.00 END), 0.00' +
        ') AS ENTRADAS, '
      
        'IFNULL(SUM(CASE WHEN OPE = '#39'S'#39' THEN m.VALOR ELSE 0.00 END), 0.00' +
        ') AS SAIDAS,'
      
        'SUM(CASE WHEN m.OPE = '#39'E'#39' THEN m.VALOR WHEN m.OPE = '#39'S'#39' THEN m.V' +
        'ALOR * -1 ELSE 0.00 END) AS SALDO'
      'FROM MOVBAN m'
      'INNER JOIN CONTA cc ON m.CTA LIKE cc.PLACOD||'#39'%'#39
      'LEFT JOIN BANCO b ON m.CODBAN = b.CODBCO'
      'LEFT JOIN CCTB c ON m.CCT = c.COD'
      'WHERE DTMOV>=:DTInicial AND DTMOV<=:DTFinal AND CONFE='#39'S'#39
      'AND m.CTA in (cc.PLACOD)'
      'AND m.CODBAN in (b.CODBCO)'
      'AND m.CCT in (c.COD)'
      'GROUP BY m.NUMERO'
      'ORDER BY cc.PLACOD, m.DTMOV ASC')
    Left = 257
    Top = 280
    ParamData = <
      item
        Name = 'DTINICIAL'
        DataType = ftDate
        ParamType = ptInput
        Value = 40179d
      end
      item
        Name = 'DTFINAL'
        DataType = ftDate
        ParamType = ptInput
        Value = 43875d
      end>
    object qryCentroCustoSelecionaPLADES: TWideStringField
      FieldName = 'PLADES'
      Origin = 'PLADES'
      FixedChar = True
      Size = 60
    end
    object qryCentroCustoSelecionaDTMOV: TDateField
      FieldName = 'DTMOV'
      Origin = 'DTMOV'
    end
    object qryCentroCustoSelecionaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryCentroCustoSelecionaHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      FixedChar = True
      Size = 80
    end
    object qryCentroCustoSelecionaNOMBCO: TWideStringField
      FieldName = 'NOMBCO'
      Origin = 'NOMBCO'
      FixedChar = True
      Size = 30
    end
    object qryCentroCustoSelecionaCCT: TWideStringField
      FieldName = 'CCT'
      Origin = 'CCT'
      FixedChar = True
      Size = 3
    end
    object qryCentroCustoSelecionaENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
      Origin = 'ENTRADAS'
      currency = True
    end
    object qryCentroCustoSelecionaSAIDAS: TFloatField
      FieldName = 'SAIDAS'
      Origin = 'SAIDAS'
      currency = True
    end
    object qryCentroCustoSelecionaSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      currency = True
    end
    object qryCentroCustoSelecionaPLACOD: TWideStringField
      FieldName = 'PLACOD'
      Origin = 'PLACOD'
      FixedChar = True
      Size = 5
    end
  end
  object qryCentroCustoAnual: TFDQuery
    Connection = MovFin
    SQL.Strings = (
      
        'SELECT cc.PLACOD, SUBSTR(cc.PLACOD, 1, 3)||'#39'00'#39' as CHILD, SUBSTR' +
        '(cc.PLACOD, 1, 2)||'#39'000'#39' AS PAI, cc.PLADES'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'01'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Jan'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'02'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Fev '
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'03'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Mar'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'04'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Abr'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'05'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Mai'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'06'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Jun'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'07'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Jul'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'08'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Ago'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'09'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) '#39'Set'#39
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'10'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Out'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'11'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Nov'
      
        '  ,ifnull(sum(case when strftime('#39'%m'#39', DTMOV) = '#39'12'#39' then IFNULL' +
        '(CASE WHEN OPE = '#39'E'#39' THEN VALOR ELSE VALOR *-1  END, 0.00) end),' +
        ' 0.00) Dez'
      
        '  ,SUM(CASE WHEN m.OPE = '#39'E'#39' THEN m.VALOR WHEN m.OPE = '#39'S'#39' THEN ' +
        'm.VALOR * -1 ELSE 0.00 END) AS '#39'TOTAL'#39
      'FROM MOVBAN m'
      
        'LEFT JOIN CONTA cc ON m.CTA LIKE cc.PLACOD||'#39'%'#39' or SUBSTR(m.CTA,' +
        ' 1, 2)||'#39'000'#39' = cc.PLACOD or SUBSTR(m.CTA, 1, 3)||'#39'00'#39' = cc.PLAC' +
        'OD'
      'INNER JOIN CCTB c ON m.CCT=c.COD'
      'WHERE DTMOV>=:DTIni AND DTMOV<=:DTFin'
      'AND m.CCT in (c.COD)'
      'GROUP BY cc.PLACOD'
      'ORDER BY cc.PLACOD')
    Left = 392
    Top = 280
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 40544d
      end
      item
        Name = 'DTFIN'
        DataType = ftDate
        ParamType = ptInput
        Value = 40724d
      end>
    object qryCentroCustoAnualPLACOD: TWideStringField
      FieldName = 'PLACOD'
      Origin = 'PLACOD'
      FixedChar = True
      Size = 5
    end
    object qryCentroCustoAnualCHILD: TWideStringField
      FieldName = 'CHILD'
      Origin = 'CHILD'
      Size = 32767
    end
    object qryCentroCustoAnualPAI: TWideStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 32767
    end
    object qryCentroCustoAnualPLADES: TWideStringField
      FieldName = 'PLADES'
      Origin = 'PLADES'
      FixedChar = True
      Size = 60
    end
    object qryCentroCustoAnualJan: TFloatField
      FieldName = 'Jan'
      Origin = 'Jan'
      currency = True
    end
    object qryCentroCustoAnualFev: TFloatField
      FieldName = 'Fev'
      Origin = 'Fev'
      currency = True
    end
    object qryCentroCustoAnualMar: TFloatField
      FieldName = 'Mar'
      Origin = 'Mar'
      currency = True
    end
    object qryCentroCustoAnualAbr: TFloatField
      FieldName = 'Abr'
      Origin = 'Abr'
      currency = True
    end
    object qryCentroCustoAnualMai: TFloatField
      FieldName = 'Mai'
      Origin = 'Mai'
      currency = True
    end
    object qryCentroCustoAnualJun: TFloatField
      FieldName = 'Jun'
      Origin = 'Jun'
      currency = True
    end
    object qryCentroCustoAnualJul: TFloatField
      FieldName = 'Jul'
      Origin = 'Jul'
      currency = True
    end
    object qryCentroCustoAnualAgo: TFloatField
      FieldName = 'Ago'
      Origin = 'Ago'
      currency = True
    end
    object qryCentroCustoAnualSet: TFloatField
      FieldName = 'Set'
      Origin = '"Set"'
      currency = True
    end
    object qryCentroCustoAnualOut: TFloatField
      FieldName = 'Out'
      Origin = 'Out'
      currency = True
    end
    object qryCentroCustoAnualNov: TFloatField
      FieldName = 'Nov'
      Origin = 'Nov'
      currency = True
    end
    object qryCentroCustoAnualDez: TFloatField
      FieldName = 'Dez'
      Origin = 'Dez'
      currency = True
    end
    object qryCentroCustoAnualTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
    end
  end
  object qrySaldoBancos: TFDQuery
    Active = True
    Connection = MovFin
    SQL.Strings = (
      
        'SELECT b.CODBCO||'#39'  - '#39'||b.NOMBCO as BANCO, strftime('#39'%d/%m/%Y'#39',' +
        ' b.DT_CONF) as DTCONF, '
      
        '(SELECT IFNULL(SUM(CASE WHEN a.OPE = '#39'E'#39' THEN a.VALOR WHEN a.OPE' +
        ' = '#39'S'#39' THEN a.VALOR * -1 ELSE 0.00 END), 0.00)'
      
        '        FROM MOVBAN a WHERE a.DTMOV <= date(:DTIni, '#39'-1 day'#39') AN' +
        'D a.CODBAN=b.CODBCO) AS SALDOANT, '
      
        'IFNULL(SUM(CASE WHEN OPE = '#39'E'#39' THEN m.VALOR ELSE 0.00 END), 0.00' +
        ') AS ENTRADAS, '
      
        'IFNULL(SUM(CASE WHEN OPE = '#39'S'#39' THEN m.VALOR * -1 ELSE 0.00 END),' +
        ' 0.00) AS SAIDAS,'
      
        'SUM(CASE WHEN m.OPE = '#39'E'#39' THEN m.VALOR WHEN m.OPE = '#39'S'#39' THEN m.V' +
        'ALOR * -1 ELSE 0.00 END) AS SALDO'
      'FROM MOVBAN m'
      'LEFT JOIN BANCO b ON m.CODBAN = b.CODBCO'
      'WHERE DTMOV>=:DTIni AND DTMOV<=:DTFin AND CONFE='#39'S'#39
      'AND m.CODBAN in (b.CODBCO)'
      'GROUP BY b.CODBCO'
      'ORDER BY b.CODBCO ASC')
    Left = 248
    Top = 344
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end
      item
        Name = 'DTFIN'
        DataType = ftDate
        ParamType = ptInput
        Value = 43890d
      end>
    object qrySaldoBancosBANCO: TWideStringField
      DisplayWidth = 300
      FieldName = 'BANCO'
      ReadOnly = True
      Size = 300
    end
    object qrySaldoBancosDTCONF: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DTCONF'
      Origin = 'DTCONF'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qrySaldoBancosSALDOANT: TFloatField
      FieldName = 'SALDOANT'
      ReadOnly = True
      currency = True
    end
    object qrySaldoBancosENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
      ReadOnly = True
      currency = True
    end
    object qrySaldoBancosSAIDAS: TFloatField
      FieldName = 'SAIDAS'
      ReadOnly = True
      currency = True
    end
    object qrySaldoBancosSALDO: TFloatField
      FieldName = 'SALDO'
      ReadOnly = True
      currency = True
    end
  end
  object tbEntidades: TFDTable
    IndexFieldNames = 'RAZSOC'
    Connection = Connection
    UpdateOptions.UpdateTableName = 'ENTIDADE'
    TableName = 'ENTIDADE'
    Left = 224
    Top = 88
    object tbEntidadesCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      FixedChar = True
      Size = 14
    end
    object tbEntidadesPESSOA: TWideStringField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object tbEntidadesNOMEFAN: TWideStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NOMEFAN'
      Origin = 'NOMEFAN'
      FixedChar = True
      Size = 30
    end
    object tbEntidadesRAZSOC: TWideStringField
      DisplayLabel = 'Raz'#227'o Social ou Nome Completo'
      FieldName = 'RAZSOC'
      Origin = 'RAZSOC'
      FixedChar = True
      Size = 50
    end
    object tbEntidadesCOREND: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'COREND'
      Origin = 'COREND'
      FixedChar = True
      Size = 50
    end
    object tbEntidadesCORBAI: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CORBAI'
      Origin = 'CORBAI'
      FixedChar = True
    end
    object tbEntidadesCORCID: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CORCID'
      Origin = 'CORCID'
      FixedChar = True
      Size = 30
    end
    object tbEntidadesCORUF: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'CORUF'
      Origin = 'CORUF'
      FixedChar = True
      Size = 2
    end
    object tbEntidadesCORCEP: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'CORCEP'
      Origin = 'CORCEP'
      FixedChar = True
      Size = 9
    end
    object tbEntidadesCOBEND: TWideStringField
      DisplayLabel = 'Endere'#231'o para Cobran'#231'a'
      FieldName = 'COBEND'
      Origin = 'COBEND'
      FixedChar = True
      Size = 50
    end
    object tbEntidadesCOBBAI: TWideStringField
      DisplayLabel = 'Bairro de Cobran'#231'a'
      FieldName = 'COBBAI'
      Origin = 'COBBAI'
      FixedChar = True
    end
    object tbEntidadesCOBCID: TWideStringField
      DisplayLabel = 'Cidade de Cobran'#231'a'
      FieldName = 'COBCID'
      Origin = 'COBCID'
      FixedChar = True
      Size = 30
    end
    object tbEntidadesCOBUF: TWideStringField
      DisplayLabel = 'UF de Cobran'#231'a'
      FieldName = 'COBUF'
      Origin = 'COBUF'
      FixedChar = True
      Size = 2
    end
    object tbEntidadesCOBCEP: TWideStringField
      DisplayLabel = 'CEP de Cobran'#231'a'
      FieldName = 'COBCEP'
      Origin = 'COBCEP'
      FixedChar = True
      Size = 9
    end
    object tbEntidadesFONE: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'FONE'
      Origin = 'FONE'
      FixedChar = True
      Size = 14
    end
    object tbEntidadesCELULAR: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      FixedChar = True
      Size = 14
    end
    object tbEntidadesFAX: TWideStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = 'FAX'
      FixedChar = True
      Size = 14
    end
    object tbEntidadesINSC_RG: TWideStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual/RG'
      FieldName = 'INSC_RG'
      Origin = 'INSC_RG'
      FixedChar = True
      Size = 19
    end
    object tbEntidadesCONJUGE: TWideStringField
      DisplayLabel = 'Conjuge'
      FieldName = 'CONJUGE'
      Origin = 'CONJUGE'
      FixedChar = True
      Size = 50
    end
    object tbEntidadesCPFCJG: TWideStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CPFCJG'
      Origin = 'CPFCJG'
      FixedChar = True
      Size = 14
    end
    object tbEntidadesNACIONAL: TWideStringField
      DisplayLabel = 'Nacionalidade'
      FieldName = 'NACIONAL'
      Origin = 'NACIONAL'
      FixedChar = True
      Size = 15
    end
    object tbEntidadesESTCIV: TWideStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'ESTCIV'
      Origin = 'ESTCIV'
      FixedChar = True
      Size = 10
    end
    object tbEntidadesDTNASC: TDateTimeField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DTNASC'
      Origin = 'DTNASC'
      EditMask = '!99/99/0000;1;_'
    end
    object tbEntidadesPROFISSAO: TWideStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      FixedChar = True
      Size = 30
    end
    object tbEntidadesPROFCJG: TWideStringField
      DisplayLabel = 'Profiss'#227'o do Conjuge'
      FieldName = 'PROFCJG'
      Origin = 'PROFCJG'
      FixedChar = True
      Size = 30
    end
    object tbEntidadesDTCAS: TDateTimeField
      DisplayLabel = 'Data de Casamento'
      FieldName = 'DTCAS'
      Origin = 'DTCAS'
      EditMask = '!99/99/0000;1;_'
    end
    object tbEntidadesDTALT: TDateTimeField
      DisplayLabel = 'Data de Altera'#231#227'o'
      FieldName = 'DTALT'
      Origin = 'DTALT'
    end
    object tbEntidadesREGCAS: TWideStringField
      DisplayLabel = 'Regime de Casamento'
      FieldName = 'REGCAS'
      Origin = 'REGCAS'
      FixedChar = True
    end
    object tbEntidadesEMPR_FON: TWideStringField
      DisplayLabel = 'Telefone onde trabalha'
      FieldName = 'EMPR_FON'
      Origin = 'EMPR_FON'
      FixedChar = True
      Size = 14
    end
    object tbEntidadesEMPRESA: TWideStringField
      DisplayLabel = 'Empresa onde trabalha'
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      FixedChar = True
      Size = 35
    end
    object tbEntidadesEMAIL: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      FixedChar = True
      Size = 60
    end
    object tbEntidadesSEXO: TWideStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object tbEntidadesRGCJG: TWideStringField
      DisplayLabel = 'RG do Conjuge'
      FieldName = 'RGCJG'
      Origin = 'RGCJG'
      FixedChar = True
      Size = 14
    end
    object tbEntidadesTIPCAD: TIntegerField
      DisplayLabel = 'Tipo de Cadastro'
      FieldName = 'TIPCAD'
      Origin = 'TIPCAD'
    end
    object tbEntidadesSETOR: TWideStringField
      DisplayLabel = 'Setor'
      FieldName = 'SETOR'
      Origin = 'SETOR'
      FixedChar = True
      Size = 25
    end
    object tbEntidadesTMPCALC: TIntegerField
      FieldName = 'TMPCALC'
      Origin = 'TMPCALC'
    end
    object tbEntidadesCDIBGE: TWideStringField
      FieldName = 'CDIBGE'
      Origin = 'CDIBGE'
      FixedChar = True
      Size = 9
    end
    object tbEntidadesC_BLOC: TWideStringField
      FieldName = 'C_BLOC'
      Origin = 'C_BLOC'
      FixedChar = True
      Size = 1
    end
    object tbEntidadesCONTATO: TWideStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      FixedChar = True
      Size = 25
    end
    object tbEntidadesLISTA: TIntegerField
      FieldName = 'LISTA'
      Origin = 'LISTA'
    end
    object tbEntidadesULT_COMP: TDateTimeField
      FieldName = 'ULT_COMP'
      Origin = 'ULT_COMP'
    end
    object tbEntidadesPAI: TWideStringField
      DisplayLabel = 'Pai'
      FieldName = 'PAI'
      Origin = 'PAI'
      FixedChar = True
      Size = 35
    end
    object tbEntidadesMAE: TWideStringField
      DisplayLabel = 'M'#227'e'
      FieldName = 'MAE'
      Origin = 'MAE'
      FixedChar = True
      Size = 35
    end
    object tbEntidadesCONSUM: TIntegerField
      DisplayLabel = 'Consumidor Final'
      FieldName = 'CONSUM'
      Origin = 'CONSUM'
    end
    object tbEntidadesCTR_ICMS: TIntegerField
      DisplayLabel = 'Contribuinte de ICMS'
      FieldName = 'CTR_ICMS'
      Origin = 'CTR_ICMS'
    end
  end
end
