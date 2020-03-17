unit untLocEntidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmLocalizaEntidades = class(TForm)
    gridEntidade: TDBGrid;
    dsLocaliza: TDataSource;
    qryLocaliza: TFDQuery;
    Panel1: TPanel;
    rdgColunaPesquisa: TRadioGroup;
    edtLocaliza: TEdit;
    Label1: TLabel;
    selAmbos: TRadioButton;
    selClientes: TRadioButton;
    selFornecedores: TRadioButton;
    btnLocalizar: TButton;
    btnFechar: TButton;
    qryLocalizaCODIGO: TWideStringField;
    qryLocalizaNOMEFAN: TWideStringField;
    qryLocalizaRAZSOC: TWideStringField;
    Panel2: TPanel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure selClientesClick(Sender: TObject);
    procedure selFornecedoresClick(Sender: TObject);
    procedure selAmbosClick(Sender: TObject);
    procedure gridEntidadeDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    TipoCad: String;
  public
    { Public declarations }
  end;

var
  frmLocalizaEntidades: TfrmLocalizaEntidades;

implementation

{$R *.dfm}

uses untDados, untCadEntidades;

procedure TfrmLocalizaEntidades.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLocalizaEntidades.btnLocalizarClick(Sender: TObject);
var
  Campo, Busca: String;
begin
  Busca := '%' +  edtLocaliza.Text + '%';
  case rdgColunaPesquisa.ItemIndex of
    0: Campo := 'RAZSOC';
    1: Campo := 'NOMEFAN';
    2: Campo := 'CODIGO';
  end;
  qryLocaliza.Close;
  qryLocaliza.SQL.Clear;
  qryLocaliza.SQL.Add('SELECT CODIGO, NOMEFAN, RAZSOC');
  qryLocaliza.SQL.Add('FROM ENTIDADE');
  qryLocaliza.SQL.Add('WHERE ' + Campo + ' LIKE ' + QuotedStr(Busca));
  qryLocaliza.SQL.Add('AND TIPCAD IN (' + TipoCad + ')');
  qryLocaliza.SQL.Add('ORDER BY RAZSOC');
  qryLocaliza.Open;
end;

procedure TfrmLocalizaEntidades.FormCreate(Sender: TObject);
begin
  TipoCad := '1';
  selClientes.Checked := True;
end;

procedure TfrmLocalizaEntidades.gridEntidadeDblClick(Sender: TObject);
var
  Resultado: String;
begin
  Resultado := qryLocaliza.FieldByName('RAZSOC').AsString;
  DataModule1.tbEntidades.Locate('RAZSOC', Resultado, []);
  frmLocalizaEntidades.Close;
end;

procedure TfrmLocalizaEntidades.selAmbosClick(Sender: TObject);
begin
  TipoCad := '1,2,3';
end;

procedure TfrmLocalizaEntidades.selClientesClick(Sender: TObject);
begin
  TipoCad := '1';
end;

procedure TfrmLocalizaEntidades.selFornecedoresClick(Sender: TObject);
begin
  TipoCad := '2, 3';
end;

end.
