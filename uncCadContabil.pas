unit uncCadContabil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, System.Actions,
  Vcl.ActnList, Vcl.Buttons;

type
  TfrmCadContabil = class(TForm)
    pnlControles: TPanel;
    DBGrid1: TDBGrid;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsContabil: TDataSource;
    Label2: TLabel;
    edtDesc: TDBEdit;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnSair: TBitBtn;
    ActionList: TActionList;
    actIncluir: TAction;
    actAlterar: TAction;
    actSair: TAction;
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadContabil: TfrmCadContabil;

implementation

{$R *.dfm}

uses untDados;

procedure TfrmCadContabil.actAlterarExecute(Sender: TObject);
begin
  if btnIncluir.Caption = 'Incluir' then
    begin
      with DataModule1 do
        begin
          dsContabil.AutoEdit := True;
          tbContabil.Edit;
          btnIncluir.Caption := 'Gravar';
          btnSair.Caption := 'Cancelar';
          btnAlterar.Enabled := False;
          if edtDesc.CanFocus then
            edtDesc.SetFocus;
        end;
    end
  else
    begin
      with DataModule1 do
        begin
          tbContabil.Post;
          btnIncluir.Caption := 'Incluir';
          btnSair.Caption := 'Sair';
          btnAlterar.Enabled := True;
          dsContabil.AutoEdit := False;
        end;
    end;
end;

procedure TfrmCadContabil.actIncluirExecute(Sender: TObject);
begin
  if btnIncluir.Caption = 'Incluir' then
    begin
      with DataModule1 do
        begin
          dsContabil.AutoEdit := True;
          tbContabil.Append;
          btnIncluir.Caption := 'Gravar';
          btnSair.Caption := 'Cancelar';
          btnAlterar.Enabled := False;
          if edtDesc.CanFocus then
            edtDesc.SetFocus;
        end;
    end
  else
    begin
      with DataModule1 do
        begin
          tbContabil.Post;
          btnIncluir.Caption := 'Incluir';
          btnSair.Caption := 'Sair';
          btnAlterar.Enabled := True;
          dsContabil.AutoEdit := False;
        end;
    end;
end;

procedure TfrmCadContabil.actSairExecute(Sender: TObject);
begin
  if btnSair.Caption = 'Cancelar' then
    begin
      with DataModule1 do
        begin
          tbContabil.Cancel;
          dsContabil.AutoEdit := False;
          btnIncluir.Caption := 'Inserir';
          btnSair.Caption := 'Sair';
          btnAlterar.Enabled := True;
        end;
    end
  else
    begin
      Close;
    end;
end;

end.
