unit untSelEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.Grids, Vcl.DBGrids;

type
  TfrmSelecionaEmpresa = class(TForm)
    dsSelEmpresa: TDataSource;
    btnSelEmp: TBitBtn;
    ActSel: TActionManager;
    actSelEmp: TAction;
    grdSelEmpresa: TDBGrid;
    procedure actSelEmpExecute(Sender: TObject);
  private
    { Private declarations }
    EmpAtual, Path: String;
    procedure CriarBancodeDados(Banco: String);
  public
    { Public declarations }
    BD: String;
    Razao: String;
  end;

var
  frmSelecionaEmpresa: TfrmSelecionaEmpresa;

implementation

{$R *.dfm}

uses untMain, untDados;

procedure TfrmSelecionaEmpresa.CriarBancodeDados(Banco: string);
begin
  if not DirectoryExists(Path)then
    begin
      if not CreateDir(Path) then
        begin
          ForceDirectories(Path);
        end;
    end;
  if not FileExists(Banco) then
    begin
      with DataModule1 do
        begin
          MovBanCriar.Database := Connection.Params.Database;
          MovBanCriar.DestDatabase := Banco;
          MovBanCriar.Backup;
          MovFin.Params.Database := Banco;
          MovFin.Open;
          qryAtualiza.Close;
          qryAtualiza.SQL.Clear;
          // qryAtualiza.SQL.Add('DELETE FROM CONTA;');
          qryAtualiza.SQL.Add('DELETE FROM USUARIOS;');
          qryAtualiza.SQL.Add('DELETE FROM MOVBAN;');
          qryAtualiza.SQL.Add('DELETE FROM APAGAR;');
          qryAtualiza.SQL.Add('DELETE FROM RECEB;');
          qryAtualiza.SQL.Add('DELETE FROM ENTIDADE;');
          qryAtualiza.SQL.Add('DELETE FROM EMPRESAS;');
          qryAtualiza.SQL.Add('DELETE FROM BANCO;');
          qryAtualiza.SQL.Add('VACUUM');
          qryAtualiza.ExecSQL;
        end;
    end;
end;

procedure TfrmSelecionaEmpresa.actSelEmpExecute(Sender: TObject);
begin
  if grdSelEmpresa.SelectedRows.Count <> 0 then
    begin
      EmpAtual := DataModule1.tbEMPRESA.FieldByName('EMPNUME').AsString;
      Razao := DataModule1.tbEMPRESA.FieldByName('EMPRAZA').AsString;
      Path := ExtractFileDir(Application.ExeName) + '\Dados\' + EmpAtual + '\';
      BD := Path + 'MovBan' + EmpAtual + '.db';
      if not FileExists(BD) then
        begin
          CriarBancodeDados(BD);
        end;
        begin
          DataModule1.MovFin.Params.Database := BD;
          DataModule1.MovFin.Open;
        end;
    end
  else
    begin
      ShowMessage('Seleciona a empresa!');
    end;
  Close;
end;

end.
