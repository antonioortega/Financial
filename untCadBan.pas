unit untCadBan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmCadBan = class(TForm)
    ScrollBox1: TScrollBox;
    pnlControl: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsBancos: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    btnGrava: TBitBtn;
    btnCancela: TBitBtn;
    procedure btnGravaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBan: TfrmCadBan;

implementation

{$R *.dfm}

uses untDados;

procedure TfrmCadBan.btnCancelaClick(Sender: TObject);
begin
  DataModule1.tbBanco.Cancel;
end;

procedure TfrmCadBan.btnGravaClick(Sender: TObject);
begin
  DataModule1.tbBanco.Post;
end;

end.
