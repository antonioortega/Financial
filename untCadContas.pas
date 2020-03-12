unit untCadContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadConta = class(TForm)
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    qryPai: TFDQuery;
    qryFilho: TFDQuery;
    qryConta: TFDQuery;
    lblCategoria: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    qryContaPLACOD: TWideStringField;
    qryContaCHILD: TWideStringField;
    qryContaPAI: TWideStringField;
    qryContaPLADES: TWideStringField;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure edtCodigoChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodConta, CatConta: String;
  end;

var
  frmCadConta: TfrmCadConta;

implementation

{$R *.dfm}

uses untDados;

procedure TfrmCadConta.btnCancelarClick(Sender: TObject);
begin
  with DataModule1 do
    begin
      tbContas.Cancel;
    end;
end;

procedure TfrmCadConta.btnGravarClick(Sender: TObject);
begin
  with DataModule1 do
    begin
      tbContas.Post;
    end;
end;

procedure TfrmCadConta.edtCodigoChange(Sender: TObject);
begin
  if (Length(edtCodigo.Text) = 2) and (edtCodigo.Text <> '') then
    begin
      qryPai.Close;
      qryPai.ParamByName('PAI').AsString := Copy(edtCodigo.Text, 1, 2);
      qryPai.Open;
      CatConta := qryPai.FieldByName('PLADES').AsString;
    end
  else
    if (Length(edtCodigo.Text) = 3) and (Length(edtCodigo.Text) > 2) then
      begin
        qryFilho.Close;
        qryFilho.ParamByName('FILHO').AsString := Copy(edtCodigo.Text, 1, 3);
        qryFilho.Open;
        CatConta := qryPai.FieldByName('PLADES').AsString + ' '+#10549#13+'    ' + qryFilho.FieldByName('PLADES').AsString;
      end
    else
      begin
        if Length(edtCodigo.Text) = 5 then
          begin
            qryConta.Close;
            qryConta.ParamByName('CHILD').AsString := Copy(edtCodigo.Text, 1, 3)+'00';
            qryConta.Open;
            if qryConta.LocateEx('PLACOD', edtCodigo.Text, []) = True then
            //if qryConta.RecordCount > 0 then
              begin
                ShowMessage('Código já utilizado por outra conta!');
                CatConta := qryPai.FieldByName('PLADES').AsString + ' '+#10549#13+'    ' + qryFilho.FieldByName('PLADES').AsString +
                ' '+#10549#13+'        '  + qryConta.FieldByName('PLADES').AsString;
              end
            else
              begin
                CodConta := edtCodigo.Text;
                CatConta := qryPai.FieldByName('PLADES').AsString + ' '+#10549#13+'    ' + qryFilho.FieldByName('PLADES').AsString;
              end;
          end
        else
          begin
            if Length(edtCodigo.Text) = 1 then
              CatConta := '';
          end;
      end;
  lblCategoria.Caption := CatConta;
end;

end.
