unit untCadEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Vcl.Buttons, System.UITypes, System.Actions, Vcl.ActnList;

type
  TfrmCadastroEmpresas = class(TForm)
    pnlControl: TPanel;
    pnlTela: TPanel;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    edtRazao: TDBEdit;
    dsEmpresa: TDataSource;
    Label2: TLabel;
    edtNum: TDBEdit;
    Label3: TLabel;
    edtEnd: TDBEdit;
    Label4: TLabel;
    edtCid: TDBEdit;
    Label5: TLabel;
    edtBai: TDBEdit;
    Label6: TLabel;
    edtTelefone: TDBEdit;
    Label7: TLabel;
    edtCelular: TDBEdit;
    Label8: TLabel;
    edtEst: TDBEdit;
    Label10: TLabel;
    edtCep: TDBEdit;
    Label11: TLabel;
    edtCNPJ: TDBEdit;
    Label12: TLabel;
    edtInscricao: TDBEdit;
    Label13: TLabel;
    edtRegCartorio: TDBEdit;
    Label14: TLabel;
    edtJuntaComercial: TDBEdit;
    DBNav: TDBNavigator;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    edtCod: TDBEdit;
    Label9: TLabel;
    btnAlterar: TBitBtn;
    btnBuscaCep: TBitBtn;
    ActionList1: TActionList;
    buscaCEP: TAction;
    actInserir: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actFechar: TAction;
    procedure buscaCEPExecute(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    EmpCod: String;
    procedure GerarCodigo(Sender: TObject);
    procedure BloquearCampos(blnModo: boolean);
  public
    { Public declarations }
  end;

var
  frmCadastroEmpresas: TfrmCadastroEmpresas;

implementation

{$R *.dfm}

uses untBuscaCep, untDados, untMain;

procedure TfrmCadastroEmpresas.BloquearCampos(blnModo: boolean);
var
   intContador: integer;
begin
      for intContador := 0 to ((ComponentCount)-1) do
      begin
            if (Components[intContador].ClassName = 'TDBEdit') then
            begin
               TDBEdit (Components[intContador]).ReadOnly := blnModo;
               TDBEdit (Components[intContador]).Color := clInactiveBorder;
             end;
            if (Components[intContador].ClassName = 'TDBCheckBox') then
            begin
                  if (TDBCheckBox (Components[intContador]).Tag <> 2) then
                      TDBCheckBox (Components[intContador]).readOnly := blnModo;
            end;
            if (Components[intContador].ClassName = 'TDBLookUpComboBox') then
               TDBLookUpComboBox(Components[intContador]).ReadOnly := blnModo;
            if (Components[intContador].ClassName = 'TDBComboBox') then
               TDBComboBox(Components[intContador]).ReadOnly := blnModo;
            if (Components[intContador].ClassName = 'TDBRadioGroup') then
               TDBRadioGroup(Components[intContador]).ReadOnly := blnModo;
            if (Components[intContador].ClassName = 'TSpeedButton') then
                TSpeedButton(Components[intContador]).Enabled := (not blnModo);
      end;
end;

procedure TfrmCadastroEmpresas.GerarCodigo(Sender: TObject);
var
  I: Integer;
begin
  with DataModule1 do
    begin
      tbEmpresa.Last;
      EmpCod := tbEmpresa.FieldByName('EMPNUME').AsString;
      if EmpCod = '' then
        begin
          EmpCod := '001';
        end
      else
        begin
        //  I := 0;
          I := StrToInt(EmpCod) + 10001;
          EmpCod := Copy(IntToStr(I), 3, 3);
        end;
    end;
end;

procedure TfrmCadastroEmpresas.actAlterarExecute(Sender: TObject);
begin
  if btnAlterar.Caption = 'Alterar' then
    begin
      DataModule1.tbEMPRESA.Edit;
      btnInserir.Caption := 'Gravar';
      btnFechar.Caption := 'Cancelar';
      BloquearCampos(False);
      edtCod.ReadOnly := True;
    end
  else
    begin
      DataModule1.tbEMPRESA.Post;
      btnInserir.Caption := 'Inserir';
      btnFechar.Caption := 'Fechar';
      BloquearCampos(True);
    end;
end;

procedure TfrmCadastroEmpresas.actExcluirExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Deseja realmente excluir a empresa?', 'Confirmação', mb_YesNo) = idYes then
    begin
      DataModule1.tbEMPRESA.Delete;
    end;
   frmCadastroEmpresas.FormCreate(Self);
end;

procedure TfrmCadastroEmpresas.actFecharExecute(Sender: TObject);
begin
  if btnFechar.Caption = 'Fechar' then
    begin
      Close;
    end
  else
    begin
      DataModule1.tbEMPRESA.Cancel;
      btnInserir.Caption := 'Inserir';
      btnFechar.Caption := 'Fechar';
      BloquearCampos(True);
    end;
end;

procedure TfrmCadastroEmpresas.actInserirExecute(Sender: TObject);
begin
  if btnInserir.Caption = 'Inserir' then
    begin
      GerarCodigo(Self);
      DataModule1.tbEMPRESA.Append;
      DataModule1.tbEMPRESA.FieldByName('EMPNUME').AsString := EmpCod;
      btnInserir.Caption := 'Gravar';
      btnFechar.Caption := 'Cancelar';
      BloquearCampos(False);
      edtCod.ReadOnly := True;
    end
  else
    begin
      DataModule1.tbEMPRESA.Post;
      btnInserir.Caption := 'Inserir';
      btnFechar.Caption := 'Fechar';
      BloquearCampos(True);
    end;
end;

procedure TfrmCadastroEmpresas.buscaCEPExecute(Sender: TObject);
begin
  if edtCEP.Text <> '' then
    begin
      DMCEP.RESTClientCEP.BaseURL := 'http://apps.widenet.com.br/busca-cep/api/cep/'+
      edtCep.Text +'.json';
      DMCep.RESTRequestCEP.Execute;
      edtEnd.Text := DMCEP.tbmCep.FieldByName('address').AsString;
      edtBai.Text := DMCEP.tbmCep.FieldByName('district').AsString;
      edtCid.Text := DMCEP.tbmCep.FieldByName('city').AsString;
      edtEst.Text := DMCEP.tbmCep.FieldByName('state').AsString;
    end;
end;

procedure TfrmCadastroEmpresas.FormCreate(Sender: TObject);
begin
  BloquearCampos(True);
  DataModule1.tbEMPRESA.Open;
  if DataModule1.tbEMPRESA.RecordCount >= 1 then
    begin
      btnAlterar.Enabled := True;
      btnExcluir.Enabled := True;
    end
  else
    begin
      btnAlterar.Enabled := False;
      btnExcluir.Enabled := False;
    end;

end;

end.
