unit untRelSaldoBan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  RLReport, Vcl.StdCtrls;

type
  TfrmSaldoBancos = class(TForm)
    dsSaldoBan: TDataSource;
    relSaldoBancos: TRLReport;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText6: TRLDBText;
    LblSaldoTotal: TRLLabel;
    RLBand2: TRLBand;
    lblTotalGeral: TRLLabel;
    rlCabecalho: TRLBand;
    rblEmpresa: TRLLabel;
    RLBand3: TRLBand;
    rblTipoRelatorio: TRLLabel;
    rblPeriodo: TRLLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RLDBResult1: TRLDBResult;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure relSaldoBancosBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    SaldoGeral, Saldo: Real;
  public
    { Public declarations }
  end;

var
  frmSaldoBancos: TfrmSaldoBancos;

implementation

{$R *.dfm}

uses untDados;

procedure TfrmSaldoBancos.relSaldoBancosBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  SaldoGeral := 0;
end;

procedure TfrmSaldoBancos.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lblTotalGeral.Caption := FormatCurr('R$#,#0.00', SaldoGeral);
end;

procedure TfrmSaldoBancos.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Saldo := 0;
  with DataModule1.qrySaldoBancos do
    begin
      Saldo := FieldByName('SALDOANT').Value + FieldByName('SALDO').Value;
      SaldoGeral := SaldoGeral + Saldo;
    end;
  LblSaldoTotal.Caption := FormatCurr('R$#,#0.00', Saldo);
end;

end.
