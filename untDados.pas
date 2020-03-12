unit untDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.ExprFuncs, System.StrUtils,
  FireDAC.Phys.SQLiteDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  System.DateUtils, System.UITypes, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.Comp.Script, FireDAC.Phys.SQLiteVDataSet;

type
  TDataModule1 = class(TDataModule)
    SQLiteDriver: TFDPhysSQLiteDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    Connection: TFDConnection;
    tbUSUARIO: TFDTable;
    tbUSUARIOCODIGO: TWideStringField;
    tbUSUARIONOME: TWideStringField;
    tbUSUARIOSENHA: TWideStringField;
    tbUSUARIOSITUA: TIntegerField;
    tbUSUARIOLOCAL: TWideStringField;
    tbUSUARIOMES_USO: TWideStringField;
    tbUSUARIOANO_USO: TWideStringField;
    CurrentUser: TFDQuery;
    tbEMPRESA: TFDTable;
    tbEMPRESAEMPRAZA: TWideStringField;
    tbEMPRESAEMPNUME: TWideStringField;
    tbEMPRESAEMPENDE: TWideStringField;
    tbEMPRESAEMPMUNI: TWideStringField;
    tbEMPRESAEMPBAIR: TWideStringField;
    tbEMPRESAEMPFONE: TWideStringField;
    tbEMPRESAEMPFAX: TWideStringField;
    tbEMPRESAEMPESTA: TWideStringField;
    tbEMPRESAEMPUF: TWideStringField;
    tbEMPRESAEMPCEPE: TWideStringField;
    tbEMPRESAEMPCNPJ: TWideStringField;
    tbEMPRESAEMPINSC: TWideStringField;
    tbEMPRESAEMPNREG: TWideStringField;
    tbEMPRESAEMPNCAD: TWideStringField;
    tbEMPRESAEMPNASS: TWideStringField;
    tbEMPRESAEMPCASS: TWideStringField;
    tbEMPRESAEMPCPFA: TWideStringField;
    tbEMPRESAEMPDNRC: TWideStringField;
    tbEMPRESAEMPDABE: TDateTimeField;
    tbEMPRESAEMPDENC: TDateTimeField;
    tbEMPRESAEMPACTA: TWideStringField;
    tbEMPRESAEMPAHPD: TWideStringField;
    tbEMPRESAEMPIRPJ: TWideStringField;
    tbEMPRESAEMPIMUN: TWideStringField;
    tbEMPRESAEMPCNAE: TWideStringField;
    tbEMPRESAEMPNIRE: TWideStringField;
    tbEMPRESAEMPATIV: TWideStringField;
    tbEMPRESAEMPESCR: TWideStringField;
    tbEMPRESAEMPCONT: TWideStringField;
    tbEMPRESAEMPNCRC: TWideStringField;
    tbEMPRESAEMPDENO: TWideStringField;
    tbEMPRESAEND_COMP: TWideStringField;
    tbEMPRESAU_ENTIDA: TIntegerField;
    tbCONTAS: TFDTable;
    tbCONTASPLACOD: TWideStringField;
    tbCONTASPLADES: TWideStringField;
    tbCONTASPLARL1: TIntegerField;
    MovFin: TFDConnection;
    MovBanCriar: TFDSQLiteBackup;
    qryAtualiza: TFDQuery;
    tbBanco: TFDTable;
    tbBancoCODBCO: TWideStringField;
    tbBancoNUMBCO: TWideStringField;
    tbBancoNOMBCO: TWideStringField;
    tbBancoTITULAR: TWideStringField;
    tbBancoAGENCIA: TWideStringField;
    tbBancoCTACOR: TWideStringField;
    tbBancoFLUXO: TIntegerField;
    tbBancoDT_CONF: TDateTimeField;
    qryMovimentoNUMERO: TIntegerField;
    qryMovimentoCODBAN: TWideStringField;
    qryMovimentoDTMOV: TDateField;
    qryMovimentoDOC: TWideStringField;
    qryMovimentoCHQ: TWideStringField;
    qryMovimentoDTDOC: TDateField;
    qryMovimentoHISTORICO: TWideStringField;
    qryMovimentoVALOR: TFloatField;
    qryMovimentoSALDO: TFloatField;
    qryMovimentoOPE: TWideStringField;
    qryMovimentoCTA: TWideStringField;
    qryMovimentoCODGRU: TWideStringField;
    qryMovimentoID_APA: TWideStringField;
    qryMovimentoID_REC: TWideStringField;
    qryMovimentoATM: TIntegerField;
    qryMovimentoFLAG: TWideStringField;
    qryMovimentoID_ENT: TWideStringField;
    qryMovimentoNUMCHQ: TWideStringField;
    qryMovimentoCCT: TWideStringField;
    qryMovimentoCONFE: TWideStringField;
    tbLanTotais: TFDTable;
    tbLanTotaisNUMERO: TIntegerField;
    tbLanTotaisCODBAN: TWideStringField;
    tbLanTotaisDTMOV: TDateField;
    tbLanTotaisDOC: TWideStringField;
    tbLanTotaisCHQ: TWideStringField;
    tbLanTotaisDTDOC: TDateField;
    tbLanTotaisHISTORICO: TWideStringField;
    tbLanTotaisVALOR: TFloatField;
    tbLanTotaisSALDO: TFloatField;
    tbLanTotaisOPE: TWideStringField;
    tbLanTotaisCTA: TWideStringField;
    tbLanTotaisCODGRU: TWideStringField;
    tbLanTotaisID_APA: TWideStringField;
    tbLanTotaisID_REC: TWideStringField;
    tbLanTotaisATM: TIntegerField;
    tbLanTotaisFLAG: TWideStringField;
    tbLanTotaisID_ENT: TWideStringField;
    tbLanTotaisNUMCHQ: TWideStringField;
    tbLanTotaisCCT: TWideStringField;
    tbLanTotaisCONFE: TWideStringField;
    qryMovimento: TFDQuery;
    qryExtratos: TFDQuery;
    qryExtratosCTADES: TWideStringField;
    qrySaldoAnt: TFDQuery;
    qrySaldoAntSALDO_ANT: TFloatField;
    qryCentroCustoSintetico: TFDQuery;
    qryExtratosSAIDAS: TFloatField;
    qryExtratosENTRADAS: TFloatField;
    qryExtratosNUMERO: TIntegerField;
    qryExtratosCODBAN: TWideStringField;
    qryExtratosDTMOV: TDateField;
    qryExtratosDOC: TWideStringField;
    qryExtratosCHQ: TWideStringField;
    qryExtratosDTDOC: TDateField;
    qryExtratosHISTORICO: TWideStringField;
    qryExtratosVALOR: TFloatField;
    qryExtratosSALDO: TFloatField;
    qryExtratosOPE: TWideStringField;
    qryExtratosCTA: TWideStringField;
    qryExtratosCODGRU: TWideStringField;
    qryExtratosID_APA: TWideStringField;
    qryExtratosID_REC: TWideStringField;
    qryExtratosATM: TIntegerField;
    qryExtratosFLAG: TWideStringField;
    qryExtratosID_ENT: TWideStringField;
    qryExtratosNUMCHQ: TWideStringField;
    qryExtratosCCT: TWideStringField;
    qryExtratosCONFE: TWideStringField;
    qryCentroCustoSinteticoPLACOD: TWideStringField;
    qryCentroCustoSinteticoCHILD: TWideStringField;
    qryCentroCustoSinteticoPAI: TWideStringField;
    qryCentroCustoSinteticoPLADES: TWideStringField;
    qryCentroCustoSinteticoENTRADAS: TFloatField;
    qryCentroCustoSinteticoSAIDAS: TFloatField;
    qryCentroCustoSinteticototal_conta: TFloatField;
    tbContabil: TFDTable;
    tbContabilCOD: TWideStringField;
    tbContabilDESCR: TWideStringField;
    qryCentroCustoSeleciona: TFDQuery;
    qryCentroCustoSelecionaPLADES: TWideStringField;
    qryCentroCustoSelecionaDTMOV: TDateField;
    qryCentroCustoSelecionaNUMERO: TIntegerField;
    qryCentroCustoSelecionaHISTORICO: TWideStringField;
    qryCentroCustoSelecionaNOMBCO: TWideStringField;
    qryCentroCustoSelecionaENTRADAS: TFloatField;
    qryCentroCustoSelecionaSAIDAS: TFloatField;
    qryCentroCustoSelecionaSALDO: TFloatField;
    qryCentroCustoSelecionaCCT: TWideStringField;
    qryCentroCustoSelecionaPLACOD: TWideStringField;
    qryCentroCustoAnual: TFDQuery;
    qryCentroCustoAnualPLACOD: TWideStringField;
    qryCentroCustoAnualCHILD: TWideStringField;
    qryCentroCustoAnualPAI: TWideStringField;
    qryCentroCustoAnualPLADES: TWideStringField;
    qryCentroCustoAnualJan: TFloatField;
    qryCentroCustoAnualFev: TFloatField;
    qryCentroCustoAnualMar: TFloatField;
    qryCentroCustoAnualAbr: TFloatField;
    qryCentroCustoAnualMai: TFloatField;
    qryCentroCustoAnualJun: TFloatField;
    qryCentroCustoAnualJul: TFloatField;
    qryCentroCustoAnualAgo: TFloatField;
    qryCentroCustoAnualSet: TFloatField;
    qryCentroCustoAnualOut: TFloatField;
    qryCentroCustoAnualNov: TFloatField;
    qryCentroCustoAnualDez: TFloatField;
    qryCentroCustoAnualTOTAL: TFloatField;
    qryMovimentoCCTADES: TStringField;
    qrySaldoBancos: TFDQuery;
    qrySaldoBancosBANCO: TWideStringField;
    qrySaldoBancosSALDOANT: TFloatField;
    qrySaldoBancosENTRADAS: TFloatField;
    qrySaldoBancosSAIDAS: TFloatField;
    qrySaldoBancosSALDO: TFloatField;
    qrySaldoBancosDTCONF: TWideStringField;
    tbEntidades: TFDTable;
    tbEntidadesCODIGO: TWideStringField;
    tbEntidadesPESSOA: TWideStringField;
    tbEntidadesNOMEFAN: TWideStringField;
    tbEntidadesRAZSOC: TWideStringField;
    tbEntidadesCOREND: TWideStringField;
    tbEntidadesCORBAI: TWideStringField;
    tbEntidadesCORCID: TWideStringField;
    tbEntidadesCORUF: TWideStringField;
    tbEntidadesCORCEP: TWideStringField;
    tbEntidadesCOBEND: TWideStringField;
    tbEntidadesCOBBAI: TWideStringField;
    tbEntidadesCOBCID: TWideStringField;
    tbEntidadesCOBUF: TWideStringField;
    tbEntidadesCOBCEP: TWideStringField;
    tbEntidadesFONE: TWideStringField;
    tbEntidadesCELULAR: TWideStringField;
    tbEntidadesFAX: TWideStringField;
    tbEntidadesINSC_RG: TWideStringField;
    tbEntidadesCONJUGE: TWideStringField;
    tbEntidadesCPFCJG: TWideStringField;
    tbEntidadesNACIONAL: TWideStringField;
    tbEntidadesESTCIV: TWideStringField;
    tbEntidadesDTNASC: TDateTimeField;
    tbEntidadesPROFISSAO: TWideStringField;
    tbEntidadesPROFCJG: TWideStringField;
    tbEntidadesDTCAS: TDateTimeField;
    tbEntidadesDTALT: TDateTimeField;
    tbEntidadesREGCAS: TWideStringField;
    tbEntidadesEMPRESA: TWideStringField;
    tbEntidadesEMPR_FON: TWideStringField;
    tbEntidadesEMAIL: TWideStringField;
    tbEntidadesSEXO: TWideStringField;
    tbEntidadesRGCJG: TWideStringField;
    tbEntidadesTIPCAD: TIntegerField;
    tbEntidadesSETOR: TWideStringField;
    tbEntidadesTMPCALC: TIntegerField;
    tbEntidadesCDIBGE: TWideStringField;
    tbEntidadesC_BLOC: TWideStringField;
    tbEntidadesCONTATO: TWideStringField;
    tbEntidadesLISTA: TIntegerField;
    tbEntidadesULT_COMP: TDateTimeField;
    tbEntidadesPAI: TWideStringField;
    tbEntidadesMAE: TWideStringField;
    tbEntidadesCONSUM: TIntegerField;
    tbEntidadesCTR_ICMS: TIntegerField;
    procedure tbUSUARIOSITUAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbUSUARIOBeforePost(DataSet: TDataSet);
    procedure tbUSUARIOAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tbContabilAfterInsert(DataSet: TDataSet);
    procedure tbContabilBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    UsuCod: Integer;
    CodContabil: String;
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses untCadUsuarios;

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  tbContas.Open;
  tbEmpresa.Open;
end;

procedure TDataModule1.tbContabilAfterInsert(DataSet: TDataSet);
var
  Soma: Integer;
begin
  if tbContabil.RecordCount <> 0 then
    begin
      tbContabil.Last;
      Soma := tbContabil.FieldByName('COD').Value + 1001;
      CodContabil := Copy(IntToStr(Soma), 1, 3);
    end;
end;

procedure TDataModule1.tbContabilBeforeInsert(DataSet: TDataSet);
begin
  tbContabil.FieldByName('COD').Value := CodContabil;
end;

procedure TDataModule1.tbUSUARIOAfterInsert(DataSet: TDataSet);
begin
  if DataModule1.tbUSUARIO.RecordCount <> 0 then
    begin
      tbUsuario.Last;
      UsuCod := tbUsuario.FieldByName('CODIGO').AsInteger;
      UsuCod := UsuCod + 1;
    end;
end;

procedure TDataModule1.tbUSUARIOBeforePost(DataSet: TDataSet);
begin
  tbUsuario.FieldByName('CODIGO').Value := UsuCod;
  tbUsuario.FieldByName('MES_USO').Value := monthOf(Now);
  tbUsuario.FieldByName('ANO_USO').Value := YearOf(Now);
end;

procedure TDataModule1.tbUSUARIOSITUAGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    0: Text := 'Ativo';
    1: Text := 'Inativo';
  else
    Text := '';
  end;
end;

end.
