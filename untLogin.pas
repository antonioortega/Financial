unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TfrmLogin = class(TForm)
    btnEntrar: TBitBtn;
    btnFechar: TBitBtn;
    pnlControls: TPanel;
    dsUsuários: TDataSource;
    Image: TImage;
    Label1: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label2: TLabel;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Logado: Boolean;
    tentativas: Smallint;
    function loginValido(const usuario, senha: String): Boolean;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses untDados, untMain;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  DataModule1.tbUSUARIO.Open;
  if DataModule1.tbUSUARIO.RecordCount = 0 then
    begin
      DataModule1.tbUSUARIO.Append;
      DataModule1.tbUSUARIO.FieldByName('CODIGO').AsString := '1';
      DataModule1.tbUSUARIO.FieldByName('NOME').AsString := 'SUPERVISOR';
      DataModule1.tbUSUARIO.FieldByName('SENHA').AsString := 'teste';
      DataModule1.tbUSUARIO.FieldByName('SITUA').AsInteger := 0;
      DataModule1.tbUSUARIO.Post;
    end;
end;

function TFrmLogin.loginValido(const usuario, senha : String) : Boolean;
 begin
  with DataModule1.Connection, DataModule1.CurrentUser do
  begin
  if not Connected then //Caso o componente Connection não esteja conectado ao BD
    Connected := True;
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(1) FROM USUARIOS ' +
    ' WHERE UPPER(NOME) = ' + QuotedStr(AnsiUpperCase(Trim(usuario))) +
    ' AND SENHA = ' + QuotedStr(Trim(senha)));
    Open;
    Result := (Fields[0].AsInteger > 0);
  end;
 end;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
   if (edtUsuario.Text = '') then //Verifica se o campo "Usuário" foi preenchido
    begin
        Messagedlg('O campo "Usuário" deve ser preenchido!', mtInformation, [mbOk], 0);
        if edtUsuario.CanFocus then
        edtUsuario.SetFocus;
        Exit;
    end;
        if (edtSenha.Text = '') then //Verifica se o campo "Senha" foi preenchido
        begin
        Messagedlg('O campo "Senha" deve ser preenchido!', mtInformation, [mbOk], 0);
        if edtSenha.CanFocus then
        edtSenha.SetFocus;
        Exit;
    end;
        if loginValido(edtUsuario.Text, edtSenha.Text) then //Verifica se o login é válido
        begin
        ModalResult := mrOk;
        frmMain.StatusBar.Panels.Items[1].Text := UpperCase(edtUsuario.Text);
        end
        else //Caso o login não seja válido então
    begin
        inc(tentativas); //Incrementa em 1 o valor da variável tentativas
        if tentativas < 3 then
    begin
        MessageDlg(Format('Tentativa %d de 3', [tentativas]), mtError, [mbOk], 0);
        if edtSenha.CanFocus then
        edtSenha.SetFocus;
    end
    else
    begin
        MessageDlg(Format('%dª tentativa de acesso ao sistema.',
        [tentativas]) + #13 + 'A aplicação será fechada!', mtError, [mbOk], 0);
        ModalResult := mrCancel;
        end;
    end;
end;

end.
