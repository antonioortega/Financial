unit untCadUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TfrmCadUsuarios = class(TForm)
    dsUsuarios: TDataSource;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    grdSelUsuario: TDBGrid;
    Label1: TLabel;
    edtNome: TDBEdit;
    Label2: TLabel;
    edtSenha: TDBEdit;
    edtSituacao: TDBRadioGroup;
    btnUsuNovo: TBitBtn;
    btnUsuFechar: TBitBtn;
    procedure dsUsuariosDataChange(Sender: TObject; Field: TField);
    procedure btnUsuNovoClick(Sender: TObject);
    procedure btnUsuFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

{$R *.dfm}

uses untDados;


procedure TfrmCadUsuarios.btnUsuFecharClick(Sender: TObject);
begin
  if btnUsuFechar.Caption = '&Fechar' then
    begin
      Close;
    end
  else
    begin
      DataModule1.tbUSUARIO.Post;
      btnUsuNovo.Caption := 'Novo Usuário';
      btnUsuFechar.Caption := '&Fechar';
    end;
end;

procedure TfrmCadUsuarios.btnUsuNovoClick(Sender: TObject);
begin
  if btnUsuNovo.Caption = 'Novo Usuário' then
    begin
      DataModule1.tbUSUARIO.Append;
      btnUsuNovo.Caption := 'Gravar';
      btnUsuFechar.Caption := 'Cancelar';
    end
  else
    begin
      DataModule1.tbUSUARIO.Post;
      btnUsuNovo.Caption := 'Novo Usuário';
      btnUsuFechar.Caption := '&Fechar';
    end;
end;

procedure TfrmCadUsuarios.dsUsuariosDataChange(Sender: TObject; Field: TField);
begin
  edtSituacao.ItemIndex := DataModule1.tbUSUARIOSITUA.AsInteger;
end;

end.
