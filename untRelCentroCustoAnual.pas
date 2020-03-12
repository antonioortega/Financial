unit untRelCentroCustoAnual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Data.DB, RLReport, System.UITypes;

type
  TfrmCentroCustoAnual = class(TForm)
    dsCentroCusto: TDataSource;
    relCentoCustoAnual: TRLReport;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    DetailGridData: TRLDetailGrid;
    ldbMes1: TRLDBText;
    ldbMes2: TRLDBText;
    ldbMes4: TRLDBText;
    ldbMes3: TRLDBText;
    ldbMes6: TRLDBText;
    ldbMes5: TRLDBText;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    dbDes: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel14: TRLLabel;
    rbltotalFev: TRLLabel;
    rbltotalJan: TRLLabel;
    rbltotalMar: TRLLabel;
    rbltotalAbr: TRLLabel;
    rbltotalMai: TRLLabel;
    rbltotalJun: TRLLabel;
    rbltotalJul: TRLLabel;
    rbltotalAgo: TRLLabel;
    rbltotalSet: TRLLabel;
    rbltotalOut: TRLLabel;
    rbltotalNov: TRLLabel;
    rbltotalDez: TRLLabel;
    rbltotalGeral: TRLLabel;
    rblTipoRelatorio: TRLLabel;
    rblPeriodo: TRLLabel;
    RLBand4: TRLBand;
    rblEmpresa: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    procedure DetailGridDataBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure relCentoCustoAnualBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
    SaldoJan, SaldoFev, SaldoMar, SaldoAbr,
    SaldoMai, SaldoJun, SaldoJul, SaldoAgo,
    SaldoSet, SaldoOut, SaldoNov, SaldoDez: Real;
    Saldo: Real;
  public
    { Public declarations }
  end;

var
  frmCentroCustoAnual: TfrmCentroCustoAnual;

implementation

{$R *.dfm}

uses untDados;

procedure TfrmCentroCustoAnual.DetailGridDataBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Cod, Child, Pai: String;
begin
  with DataModule1 do
    begin
      Cod := qryCentroCustoAnual.FieldByName('PLACOD').AsString;
      Child := qryCentroCustoAnual.FieldByName('CHILD').AsString;
      Pai := qryCentroCustoAnual.FieldByName('PAI').AsString;
    end;
  if (Cod = Child) and (Cod=Pai) then
    begin
      DetailGridData.Font.Style := DetailGridData.Font.Style + [fsUnderline, fsBold];
      dbDes.Text := '';
      SaldoJan := SaldoJan + DataModule1.qryCentroCustoAnual.FieldByName('Jan').Value;
      SaldoFev := SaldoFev + DataModule1.qryCentroCustoAnual.FieldByName('Fev').Value;
      SaldoMar := SaldoMar + DataModule1.qryCentroCustoAnual.FieldByName('Mar').Value;
      SaldoAbr := SaldoAbr + DataModule1.qryCentroCustoAnual.FieldByName('Abr').Value;
      SaldoMai := SaldoMai + DataModule1.qryCentroCustoAnual.FieldByName('Mai').Value;
      SaldoJun := SaldoJun + DataModule1.qryCentroCustoAnual.FieldByName('Jun').Value;
      SaldoJul := SaldoJul + DataModule1.qryCentroCustoAnual.FieldByName('Jul').Value;
      SaldoAgo := SaldoAgo + DataModule1.qryCentroCustoAnual.FieldByName('Ago').Value;
      SaldoSet := SaldoSet + DataModule1.qryCentroCustoAnual.FieldByName('Set').Value;
      SaldoOut := SaldoOut + DataModule1.qryCentroCustoAnual.FieldByName('Out').Value;
      SaldoNov := SaldoNov + DataModule1.qryCentroCustoAnual.FieldByName('Nov').Value;
      SaldoDez := SaldoDez + DataModule1.qryCentroCustoAnual.FieldByName('Dez').Value;
      Saldo := SaldoJan + SaldoFev + SaldoMar + SaldoAbr + SaldoMai + SaldoJun +
      SaldoJul + SaldoAgo + SaldoSet + SaldoOut + SaldoNov + SaldoDez;
    end
  else
    begin
      if (Cod = Child) and (Cod<>Pai) then
        begin
          DetailGridData.Font.Style := DetailGridData.Font.Style - [fsUnderline];
          DetailGridData.Font.Style := DetailGridData.Font.Style + [fsBold];
          dbDes.Text := '      ';
        end
      else
        begin
          DetailGridData.Font.Style := DetailGridData.Font.Style - [fsUnderline, fsBold];
          dbDes.Text := '            ';
        end;
    end;
end;

procedure TfrmCentroCustoAnual.relCentoCustoAnualBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    SaldoJan := 0;
    SaldoFev := 0;
    SaldoMar := 0;
    SaldoAbr := 0;
    SaldoMai := 0;
    SaldoJun := 0;
    SaldoJul := 0;
    SaldoAgo := 0;
    SaldoSet := 0;
    SaldoOut := 0;
    SaldoNov := 0;
    SaldoDez := 0;
    Saldo := 0;
end;

procedure TfrmCentroCustoAnual.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rbltotalJan.Caption := FormatCurr('R$#,##0.00', SaldoJan);
  rbltotalFev.Caption := FormatCurr('R$#,##0.00', SaldoFev);
  rbltotalMar.Caption := FormatCurr('R$#,##0.00', SaldoMar);
  rbltotalAbr.Caption := FormatCurr('R$#,##0.00', SaldoAbr);
  rbltotalMai.Caption := FormatCurr('R$#,##0.00', SaldoMai);
  rbltotalJun.Caption := FormatCurr('R$#,##0.00', SaldoJun);
  rbltotalJul.Caption := FormatCurr('R$#,##0.00', SaldoJul);
  rbltotalAgo.Caption := FormatFloat('R$#,##0.00', SaldoAgo);
  rbltotalSet.Caption := FormatFloat('R$#,##0.00', SaldoSet);
  rbltotalOut.Caption := FormatFloat('R$#,##0.00', SaldoOut);
  rbltotalNov.Caption := FormatFloat('R$#,##0.00', SaldoNov);
  rbltotalDez.Caption := FormatFloat('R$#,##0.00', SaldoDez);
  rbltotalGeral.Caption := FormatFloat('R$#,##0.00', Saldo);
end;

end.
