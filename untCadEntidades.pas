unit untCadEntidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.ComCtrls, System.Actions, Vcl.ActnList, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, System.ImageList, Vcl.ImgList, Vcl.Buttons;

type
  TfrmCadEntidades = class(TForm)
    dsEntidades: TDataSource;
    pnlControles: TPanel;
    tabsFormulario: TPageControl;
    tabDados: TTabSheet;
    tabFisica: TTabSheet;
    tabJuridica: TTabSheet;
    tabComplementares: TTabSheet;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    edtTipCadastro: TDBRadioGroup;
    edtTipPessoa: TDBRadioGroup;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    edtCEP: TDBEdit;
    Label9: TLabel;
    edtEnd: TDBEdit;
    Label10: TLabel;
    edtBai: TDBEdit;
    Label11: TLabel;
    edtCid: TDBEdit;
    Label12: TLabel;
    edtEst: TDBEdit;
    Label13: TLabel;
    edtCEPCOB: TDBEdit;
    Label14: TLabel;
    edtEndCOB: TDBEdit;
    Label15: TLabel;
    edtBaiCOB: TDBEdit;
    Label16: TLabel;
    edtCidCOB: TDBEdit;
    Label17: TLabel;
    edtEstCOB: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    DBNav: TDBNavigator;
    btnBuscaCEP: TButton;
    btnBuscaCEPCOB: TButton;
    ScrollBox2: TScrollBox;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    Label21: TLabel;
    DBEdit10: TDBEdit;
    Label22: TLabel;
    DBEdit11: TDBEdit;
    Label23: TLabel;
    DBEdit12: TDBEdit;
    Label24: TLabel;
    DBEdit13: TDBEdit;
    edtEstCivil: TDBRadioGroup;
    Label25: TLabel;
    DBEdit14: TDBEdit;
    Label26: TLabel;
    DBEdit15: TDBEdit;
    Label27: TLabel;
    DBEdit16: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label28: TLabel;
    DBEdit17: TDBEdit;
    Label29: TLabel;
    DBEdit19: TDBEdit;
    Label30: TLabel;
    DBEdit20: TDBEdit;
    Label31: TLabel;
    DBEdit21: TDBEdit;
    Label32: TLabel;
    DBEdit22: TDBEdit;
    ActionList1: TActionList;
    actIncluir: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actFiltrar: TAction;
    ProgMov16: TImageList;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFiltrar: TBitBtn;
    btnFechar: TBitBtn;
    actFechar: TAction;
    btnRelatorios: TButton;
    ScrollBox3: TScrollBox;
    DBEdit23: TDBEdit;
    Label33: TLabel;
    ScrollBox4: TScrollBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    procedure btnBuscaCEPClick(Sender: TObject);
    procedure btnBuscaCEPCOBClick(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure BloquearCampos(blnModo: boolean);
    procedure DesabilitaControles(blnModo: boolean);
  public
    { Public declarations }
  end;

var
  frmCadEntidades: TfrmCadEntidades;

implementation

uses untDados, untBuscaCep, untLocEntidades;

{$R *.dfm}

procedure TfrmCadEntidades.actAlterarExecute(Sender: TObject);
begin
  if btnAlterar.Caption = 'Alterar' then
    begin
      DataModule1.tbEntidades.Edit;
      btnInserir.Caption := 'Gravar';
      btnFechar.Caption := 'Cancelar';
      DesabilitaControles(False);
      BloquearCampos(False);
    end
  else
    begin
      DataModule1.tbEntidades.Post;
      btnInserir.Caption := 'Inserir';
      btnFechar.Caption := 'Fechar';
      DesabilitaControles(True);
      BloquearCampos(True);
    end;
end;

procedure TfrmCadEntidades.actExcluirExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Deseja realmente excluir este cadastro?', 'Confirmação', mb_YesNo) = idYes then
    begin
      DataModule1.tbEntidades.Delete;
    end;
  frmCadEntidades.OnCreate(Self);
end;

procedure TfrmCadEntidades.actFecharExecute(Sender: TObject);
begin
  if btnFechar.Caption = 'Fechar' then
    begin
      Close;
    end
  else
    begin
      DataModule1.tbEntidades.Cancel;
      btnInserir.Caption := 'Inserir';
      btnFechar.Caption := 'Fechar';
      DesabilitaControles(True);
      BloquearCampos(True);
    end;
end;

procedure TfrmCadEntidades.actFiltrarExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmLocalizaEntidades, frmLocalizaEntidades);
  try
    frmLocalizaEntidades.ShowModal;
  finally
    frmLocalizaEntidades.Close;
  end;
end;

procedure TfrmCadEntidades.actIncluirExecute(Sender: TObject);
begin
  if btnInserir.Caption = 'Inserir' then
    begin
      DataModule1.tbEntidades.Append;
      btnInserir.Caption := 'Gravar';
      btnFechar.Caption := 'Cancelar';
      DesabilitaControles(False);
      BloquearCampos(False);
    end
  else
    begin
      DataModule1.tbEntidades.Post;
      btnInserir.Caption := 'Inserir';
      btnFechar.Caption := 'Fechar';
      DesabilitaControles(True);
      BloquearCampos(True);
    end;
end;

procedure TfrmCadEntidades.DesabilitaControles(blnModo: Boolean);
begin
  DBNav.Enabled := blnModo;
  btnAlterar.Enabled := blnModo;
  btnExcluir.Enabled := blnModo;
  btnFiltrar.Enabled := blnModo;
  btnRelatorios.Enabled := blnModo;
end;

procedure TfrmCadEntidades.BloquearCampos(blnModo: Boolean);
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

procedure TfrmCadEntidades.btnBuscaCEPClick(Sender: TObject);
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
      edtCEPCOB.Text:= edtCEP.Text;
      edtEndCOB.Text := DMCEP.tbmCep.FieldByName('address').AsString;
      edtBaiCOB.Text := DMCEP.tbmCep.FieldByName('district').AsString;
      edtCidCOB.Text := DMCEP.tbmCep.FieldByName('city').AsString;
      edtEstCOB.Text := DMCEP.tbmCep.FieldByName('state').AsString;
    end;
end;

procedure TfrmCadEntidades.btnBuscaCEPCOBClick(Sender: TObject);
begin
  if edtCEPCOB.Text <> '' then
    begin
      DMCEP.RESTClientCEP.BaseURL := 'http://apps.widenet.com.br/busca-cep/api/cep/'+
      edtCEPCOB.Text +'.json';
      DMCep.RESTRequestCEP.Execute;
      edtEndCOB.Text := DMCEP.tbmCep.FieldByName('address').AsString;
      edtBaiCOB.Text := DMCEP.tbmCep.FieldByName('district').AsString;
      edtCidCOB.Text := DMCEP.tbmCep.FieldByName('city').AsString;
      edtEstCOB.Text := DMCEP.tbmCep.FieldByName('state').AsString;
    end;
end;

procedure TfrmCadEntidades.FormCreate(Sender: TObject);
begin
  BloquearCampos(True);
  if DataModule1.tbEntidades.Active = False then
    begin
      DataModule1.tbEntidades.Open;
    end;
  if DataModule1.tbEntidades.RecordCount >= 1 then
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
