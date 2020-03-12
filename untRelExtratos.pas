unit untRelExtratos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, RLReport, Vcl.Imaging.pngimage;

type
  TfrmRelExtratos = class(TForm)
    RelExtratos: TRLReport;
    grbBody: TRLGroup;
    bndLista: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    bndCabecalho: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    bndSumario: TRLBand;
    RLDBResult1: TRLDBResult;
    bndHeades: TRLBand;
    rblEmpresa: TRLLabel;
    bndFooter: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLDBResult2: TRLDBResult;
    RLLabel9: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBResult3: TRLDBResult;
    RLDBMemo2: TRLDBMemo;
    RLDBResult4: TRLDBResult;
    RLSystemInfo2: TRLSystemInfo;
    dsExtratos: TDataSource;
    RLBand1: TRLBand;
    dsSaldoAnt: TDataSource;
    RLDraw1: TRLDraw;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel12: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDraw3: TRLDraw;
    RLLabel13: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLDraw4: TRLDraw;
    RLLabel14: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand2: TRLBand;
    RLDBText9: TRLDBText;
    rlbCabecalho: TRLLabel;
    procedure bndListaBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelExtratos: TfrmRelExtratos;

implementation

{$R *.dfm}

uses untDados;

procedure TfrmRelExtratos.bndListaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if DataModule1.qryExtratos.FieldByName('SAIDAS').AsFloat <> 0.00 then
    RLDBText6.Visible := True
  else RLDBText6.Visible := False;
  if DataModule1.qryExtratos.FieldByName('ENTRADAS').AsFloat <> 0.00 then
    RLDBText7.Visible := True
  else RLDBText7.Visible := False;
end;

procedure TfrmRelExtratos.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  SaldoAnt, SaldoAtual: Currency;
begin
  SaldoAnt := DataModule1.qrySaldoAnt.FieldByName('SALDO_ANT').AsCurrency;
  SaldoAtual := SaldoAnt + (RLDBResult5.Value + RLDBResult6.Value);
  RLLabel6.Caption := FormatCurr('R$#,##0.00', SaldoAtual);
  if DataModule1.qrySaldoAnt.RecordCount <= 0 then
    RLDBText8.Text := 'R$0,00'
  else RLDBText8.Text := '';
end;

procedure TfrmRelExtratos.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if DataModule1.qrySaldoAnt.RecordCount <= 0 then
    RLDBText9.Text := 'SALDO ANTERIOR:    R$0,00'
  else RLDBText9.Text := 'SALDO ANTERIOR:    ';
end;

end.
