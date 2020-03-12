unit untRelCentroCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, RLReport, Data.DB, RLParser, RLXLSFilter, RLRichFilter,
  RLHTMLFilter, RLFilters, RLPDFFilter, System.UITypes;

type
  TfrmRelCentroCusto = class(TForm)
    RelCentroCusto: TRLReport;
    dsCentroCusto: TDataSource;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    grpBody: TRLGroup;
    RLBand3: TRLBand;
    DetailGridData: TRLDetailGrid;
    dbCod: TRLDBText;
    dbDes: TRLDBText;
    dbSaldo: TRLDBText;
    TotalEntradas: TRLDBResult;
    TotalSaidas: TRLDBResult;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    Saldos: TRLBand;
    rblEmpresa: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    rblTipoRelatorio: TRLLabel;
    rblPeriodo: TRLLabel;
    RLPDFFilter: TRLPDFFilter;
    RLHTMLFilter: TRLHTMLFilter;
    RLRichFilter: TRLRichFilter;
    RLXLSFilter: TRLXLSFilter;
    dbEntradas: TRLDBText;
    dbSaidas: TRLDBText;
    RblSaldo: TRLLabel;
    procedure DetailGridDataBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure SaldosBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RelCentroCustoBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    Saldo: Real;
  public
    { Public declarations }
  end;

var
  frmRelCentroCusto: TfrmRelCentroCusto;

implementation

{$R *.dfm}

uses untDados;

procedure TfrmRelCentroCusto.DetailGridDataBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Cod, Child, Pai: String;
begin
  with DataModule1 do
    begin
      Cod := qryCentroCustoSintetico.FieldByName('PLACOD').AsString;
      Child := qryCentroCustoSintetico.FieldByName('CHILD').AsString;
      Pai := qryCentroCustoSintetico.FieldByName('PAI').AsString;
    end;
  if (Cod = Child) and (Cod=Pai) then
    begin
      DetailGridData.Font.Style := DetailGridData.Font.Style + [fsUnderline, fsBold];
      dbDes.Left := 100;
      Saldo := Saldo + (DataModule1.qryCentroCustoSintetico.FieldByName('ENTRADAS').Value - DataModule1.qryCentroCustoSintetico.FieldByName('SAIDAS').Value);
    end
  else
    begin
      if (Cod = Child) and (Cod<>Pai) then
        begin
          DetailGridData.Font.Style := DetailGridData.Font.Style - [fsUnderline];
          DetailGridData.Font.Style := DetailGridData.Font.Style + [fsBold];
          dbDes.Left := 120;
        end
      else
        begin
          DetailGridData.Font.Style := DetailGridData.Font.Style - [fsUnderline, fsBold];
          dbDes.Left := 140;
        end;
    end;
  if DataModule1.qryCentroCustoSintetico.FieldByName('ENTRADAS').AsFloat <> 0.00 then
    dbEntradas.Visible := True
  else dbEntradas.Visible := False;
  if DataModule1.qryCentroCustoSintetico.FieldByName('SAIDAS').AsFloat <> 0.00 then
    dbSaidas.Visible := True
  else dbSaidas.Visible := False;
end;

procedure TfrmRelCentroCusto.RelCentroCustoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Saldo := 0;
end;

procedure TfrmRelCentroCusto.SaldosBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RblSaldo.Caption := FormatCurr('R$#,#0.00', Saldo);
end;

end.
