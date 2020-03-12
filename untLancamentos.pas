unit untLancamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, ACBrBase,
  ACBrEnterTab;

type
  TfrmLancamentos = class(TForm)
    ScrollBox1: TScrollBox;
    pnlControl: TPanel;
    edtDtMov: TDateTimePicker;
    edtDtDoc: TDateTimePicker;
    edtOperacao: TRadioGroup;
    edtNumDoc: TEdit;
    edtHisDoc: TEdit;
    edtValDoc: TEdit;
    edtCON: TDBLookupComboBox;
    edtCCT: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtConf: TRadioGroup;
    Label9: TLabel;
    edtBan: TEdit;
    dsContas: TDataSource;
    qryLancamentos: TFDQuery;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    qryLancamentosNUMERO: TIntegerField;
    qryLancamentosCODBAN: TWideStringField;
    qryLancamentosDTMOV: TDateField;
    qryLancamentosDOC: TWideStringField;
    qryLancamentosCHQ: TWideStringField;
    qryLancamentosDTDOC: TDateField;
    qryLancamentosHISTORICO: TWideStringField;
    qryLancamentosVALOR: TFloatField;
    qryLancamentosSALDO: TFloatField;
    qryLancamentosOPE: TWideStringField;
    qryLancamentosCTA: TWideStringField;
    qryLancamentosCODGRU: TWideStringField;
    qryLancamentosID_APA: TWideStringField;
    qryLancamentosID_REC: TWideStringField;
    qryLancamentosATM: TIntegerField;
    qryLancamentosFLAG: TWideStringField;
    qryLancamentosID_ENT: TWideStringField;
    qryLancamentosNUMCHQ: TWideStringField;
    qryLancamentosCCT: TWideStringField;
    qryLancamentosCONFE: TWideStringField;
    btnCTA: TSpeedButton;
    btnCodCont: TSpeedButton;
    dsContabil: TDataSource;
    edtCTACOD: TEdit;
    edtCCTCOD: TEdit;
    edtGruDoc: TDBLookupComboBox;
    dsGrupo: TDataSource;
    edtCodGruDoc: TEdit;
    EnterTab: TACBrEnterTab;
    procedure edtOperacaoClick(Sender: TObject);
    procedure edtConfClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtCCTClick(Sender: TObject);
    procedure edtCONClick(Sender: TObject);
    procedure btnCodContClick(Sender: TObject);
    procedure edtGruDocClick(Sender: TObject);
    procedure btnCTAClick(Sender: TObject);
  private
    { Private declarations }
    procedure Insert(Sender: TObject);
    procedure Atualiza(Sender: TObject);
  public
    { Public declarations }
    Saldo, Valor: Double;
    DataDoc, DataMov: String;
    CODGRU, CCT, CTADOC: String;
    Ope, Conf: String;
    NumMod: Integer;
    DataDocMod, DataMovMod: String;
  end;

var
  frmLancamentos: TfrmLancamentos;

implementation

{$R *.dfm}

uses untDados, untMovBan, untMain;

procedure TfrmLancamentos.btnCancelarClick(Sender: TObject);
begin
  frmLancamentos.Close;
end;

procedure TfrmLancamentos.btnCodContClick(Sender: TObject);
begin
  frmMain.actCodigoContabilExecute(Sender);
end;

procedure TfrmLancamentos.btnCTAClick(Sender: TObject);
begin
  frmMain.cadPlanoContasExecute(Sender);
end;

procedure TfrmLancamentos.btnGravarClick(Sender: TObject);
begin
  if frmLancamentos.Caption = 'Inclusão' then
    begin
      Insert(Self);
      with DataModule1 do
        begin
          qryMovimento.Close;
          qryMovimento.Open;
          tbLanTotais.Refresh;
          frmMovimentacao.tabMovConferido.Refresh;
          frmMovimentacao.tabMovConferido.Last;
          case MessageBox(Application.Handle, 'Deseja incluir outro lançamento?', 'Confirmação', MB_YESNO)of
            idYes:
              begin
                edtNumDoc.Clear;
                edtHisDoc.Clear;
                edtValDoc.Clear;
              end;
            idNo:
              begin
                Close;
              end;
          end;
        end;
    end
  else
    begin
      Atualiza(Self);
      with DataModule1 do
        begin
          qryMovimento.Refresh;
          tbLanTotais.Refresh;
          frmMovimentacao.tabMovConferido.Refresh;
          frmMovimentacao.tabMovConferido.Last;
          Close;
        end;
    end;
end;

procedure TfrmLancamentos.edtCCTClick(Sender: TObject);
begin
  edtCCT.ListSource.DataSet.Locate('COD', edtCCT.Text, []);
  edtCCTCOD.Text := edtCCT.ListSource.DataSet.FieldByName('COD').Value;
end;

procedure TfrmLancamentos.edtCONClick(Sender: TObject);
begin
  edtCON.ListSource.DataSet.Locate('PLACOD', edtCON.Text, []);
  edtCTACOD.Text := edtCON.ListSource.DataSet.FieldByName('PLACOD').Value;
end;

procedure TfrmLancamentos.edtConfClick(Sender: TObject);
begin
  case edtConf.ItemIndex of
    0:
      Conf := 'S';
    1:
      Conf := 'N';
  end;
end;

procedure TfrmLancamentos.edtGruDocClick(Sender: TObject);
begin
  edtGruDoc.ListSource.DataSet.Locate('COD', edtCON.Text, []);
  edtCodGruDoc.Text := edtGruDoc.ListSource.DataSet.FieldByName('COD').Value;
end;

procedure TfrmLancamentos.edtOperacaoClick(Sender: TObject);
begin
  case edtOperacao.ItemIndex of
    0:
      Ope := 'E';
    1:
      Ope := 'S';
  end;
end;

procedure TfrmLancamentos.Insert(Sender: TObject);
begin
  edtDtMov.Time := StrToTime('00:00:00');
  edtDtDoc.Time := StrToTime('00:00:00');
  DataMov := FormatDateTime('YYYY-MM-DD', edtDtMov.Date);
  DataDoc := FormatDateTime('YYYY-MM-DD', edtDtDoc.Date);
  CODGRU := edtCodGruDoc.Text;
  DataModule1.tbContabil.Locate('DESCR', edtCCT.Text, []);
  CCT := DataModule1.tbContabil.FieldByName('COD').AsString;
  DataModule1.tbCONTAS.Locate('PLADES', edtCON.Text, []);
  CTADOC := DataModule1.tbCONTAS.FieldByName('PLACOD').AsString;
  frmMovimentacao.Numero := frmMovimentacao.Numero + 1;
  Valor := StrToFloat(edtValDoc.Text);
  if (edtValDoc.Text <> '') and (Ope = 'E') then
    Saldo := Saldo + StrToCurr(edtValDoc.Text)
  else
  begin
    if (edtValDoc.Text <> '') and (Ope = 'S') then
      Saldo := Saldo - StrToCurr(edtValDoc.Text)
    else
      ShowMessage('Erro no calculo do saldo, verifique o valor ou a operação!');
  end;

  with qryLancamentos do
  begin
    SQL.Clear;
    SQL.Add('INSERT INTO MOVBAN (NUMERO, CODBAN, DTMOV, DOC, DTDOC, HISTORICO, VALOR, SALDO, OPE, CTA, CODGRU, CCT, CONFE)');
    SQL.Add('VALUES ( :numero ' +
                   ', :banco ' +
                   ', :DataMov '+
                   ', :NumDoc' +
                   ', :DataDoc'+
                   ', :HistDoc' +
                   ', :Valor '+
                   ', :Saldo' +
                   ', :Ope ' +
                   ', :CTA ' +
                   ', :Gru ' +
                   ', :CCT ' +
                   ', :CONFE );');
    ParamByName('numero').AsInteger := frmMovimentacao.Numero;
    ParamByName('banco').AsString := edtBan.Text;
    ParamByName('DataMov').AsDateTime := edtDtMov.DateTime;
    ParamByName('NumDoc').AsString := edtNumDoc.Text;
    ParamByName('DataDoc').AsDateTime := edtDtDoc.Date;
    ParamByName('HistDoc').AsString := edtHisDoc.Text;
    ParamByName('Valor').AsFloat := Valor;
    ParamByName('Saldo').AsFloat := Saldo;
    ParamByName('Ope').AsString := Ope;
    ParamByName('CTA').AsString := edtCTACOD.Text;
    ParamByName('Gru').AsString := edtCodGruDoc.Text;
    ParamByName('CCT').AsString := edtCCTCOD.Text;
    ParamByName('CONFE').AsString := Conf;
    ExecSQL;
  end;
end;

procedure TfrmLancamentos.Atualiza(Sender: TObject);
begin
  CODGRU := edtCodGruDoc.Text;
  DataModule1.tbContabil.Locate('DESCR', edtCCT.Text, []);
  CCT := DataModule1.tbContabil.FieldByName('COD').AsString;
  DataModule1.tbCONTAS.Locate('PLADES', edtCON.Text, []);
  CTADOC := DataModule1.tbCONTAS.FieldByName('PLACOD').AsString;
  Valor := StrToFloat(edtValDoc.Text);
  Saldo := qryLancamentos.FieldByName('SALDO').AsFloat;

  with qryLancamentos do
  begin
    SQL.Clear;
    SQL.Add('UPDATE MOVBAN');
    SQL.Add('SET  NUMERO = :numero ' +
                   ', CODBAN = :banco ' +
                   ', DTMOV = :DataMov '+
                   ', DOC = :NumDoc ' +
                   ', DTDOC = :DataDoc'+
                   ', HISTORICO = :HistDoc' +
                   ', VALOR = :Valor '+
                   ', SALDO = :Saldo' +
                   ', OPE = :Ope ' +
                   ', CTA = :CTA ' +
                   ', CODGRU = :Gru ' +
                   ', CCT = :CCT ' +
                   ', CONFE = :CONFE');
    SQL.Add('WHERE NUMERO = ' + IntToStr(NUMMOD) +';');
    ParamByName('numero').AsInteger := NumMod;
    ParamByName('banco').AsString := edtBan.Text;
    ParamByName('DataMov').AsDateTime := edtDtMov.DateTime;
    ParamByName('NumDoc').AsString := edtNumDoc.Text;
    ParamByName('DataDoc').AsDateTime := edtDtDoc.DateTime;
    ParamByName('HistDoc').AsString := edtHisDoc.Text;
    ParamByName('Valor').AsFloat := Valor;
    ParamByName('Saldo').AsFloat := Saldo;
    ParamByName('Ope').AsString := Ope;
    ParamByName('CTA').AsString := edtCTACOD.Text;
    ParamByName('Gru').AsString := edtCodGruDoc.Text;
    ParamByName('CCT').AsString := edtCCTCOD.Text;
    ParamByName('CONFE').AsString := Conf;
    ExecSQL;
  end;
end;

end.
