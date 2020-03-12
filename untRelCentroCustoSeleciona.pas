unit untRelCentroCustoSeleciona;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RLReport;

type
  TfrmCentroCustoSeleciona = class(TForm)
    dsCentroCustoSeleciona: TDataSource;
    RelCentroCustoSeleciona: TRLReport;
    rlCabecalho: TRLBand;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText2: TRLDBText;
    RLBand2: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLLabel2: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel10: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    rblTipoRelatorio: TRLLabel;
    rblPeriodo: TRLLabel;
    rblEmpresa: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCentroCustoSeleciona: TfrmCentroCustoSeleciona;

implementation

{$R *.dfm}

uses untDados;

end.
