unit untBancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList;

type
  TfrmBancos = class(TForm)
    dsBancos: TDataSource;
    ActionList: TActionList;
    actInserir: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actFechar: TAction;
    pnlControl: TPanel;
    DBNav: TDBNavigator;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    btnAlterar: TBitBtn;
    grdBanco: TDBGrid;
    procedure actInserirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
  private
    { Private declarations }
    CodBan: String;
    procedure gerarCodigo(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmBancos: TfrmBancos;

implementation

{$R *.dfm}

uses untCadBan, untDados;

procedure TfrmBancos.gerarCodigo(Sender: TObject);
var
  Sum: Integer;
begin
  with DataModule1 do
    begin
      tbBanco.Last;
      if tbBanco.RecordCount = 0 then
        begin
          CodBan := '001';
        end
      else
        begin
          Sum := StrToInt(tbBanco.FieldByName('CODBCO').AsString) + 1001;
          CodBan := Copy(IntToStr(Sum), 2, 3);
        end;
    end;
end;

procedure TfrmBancos.actAlterarExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadBan, frmCadBan);
  try
    begin
      DataModule1.tbBanco.Edit;
      frmCadBan.ShowModal;
    end;
  finally
     frmCadBan.Close;
  end;
end;

procedure TfrmBancos.actExcluirExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Deseja realmente excluir este banco?', 'Confirmação',
    MB_YESNO) = idYes then
   DataModule1.tbBanco.Delete;
end;

procedure TfrmBancos.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmBancos.actInserirExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadBan, frmCadBan);
  try
    begin
      gerarCodigo(Self);
      DataModule1.tbBanco.Append;
      DataModule1.tbBanco.FieldByName('CODBCO').AsString := CodBan;
      frmCadBan.ShowModal;
    end;
  finally
     frmCadBan.Close;
  end;
end;

end.
