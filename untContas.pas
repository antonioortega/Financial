unit untContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmContas = class(TForm)
    dsContas: TDataSource;
    pnlControl: TPanel;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    btnAlterar: TBitBtn;
    pnlList: TPanel;
    ViewContas: TListView;
    procedure ViewContasCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ViewContasClick(Sender: TObject);
    procedure ViewContasChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure CriarContas(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmContas: TfrmContas;

implementation

{$R *.dfm}

uses untDados, untCadContas;

var
  PlanoCod, PlanoDes: String;

procedure TfrmContas.btnExcluirClick(Sender: TObject);
var
  Frase: String;
begin
  Frase := 'Deseja realmente excluir a Conta de '+#13#13+ 'Código: ' + PlanoCod + ' e ' + #13 +
  'Descrição: ' + PlanoDes + ' ?';
  ViewContasClick(Sender);
  PlanoDes := DataModule1.tbCONTAS.FieldByName('PLADES').AsString;
  PlanoCod := DataModule1.tbCONTAS.FieldByName('PLACOD').AsString;
  if MessageBox(Application.Handle, PChar(Frase), 'Confirmação', mb_YesNo) = idYes then
    DataModule1.tbCONTAS.Delete;
end;

procedure TfrmContas.btnInserirClick(Sender: TObject);
begin

  Application.CreateForm(TfrmCadConta, frmCadConta);
  try
    begin
      with DataModule1 do
        begin
          //
        end;
      frmCadConta.ShowModal;
    end;
  finally
     begin
       frmCadConta.Close;
     end;
  end;

end;

procedure TfrmContas.CriarContas(Sender: TObject);
var
  Codigo, Descri: String;
  Item: TListItem;
begin
  with DataModule1.tbCONTAS do
    begin
      First;
      while not EOF do
        begin
          Codigo := FieldByName('PLACOD').AsString;
          Descri := FieldByName('PLADES').AsString;
          if Copy(Codigo, 2, 4) = '0000' then
            begin
              Item := ViewContas.Items.Add;
              Item.Caption := Copy(Codigo, 1, 2)+'.'+Copy(Codigo, 3, 1)+'.'+Copy(Codigo, 4, 2);
              Item.SubItems.Add(Descri);
            end
          else
            begin
              if (StrToInt(Copy(Codigo, 2, 1)) > 0) or (Copy(Codigo, 4, 2) = '00') then
                begin
                  Item := ViewContas.Items.Add;
                  Item.Caption := Copy(Codigo, 1, 2)+'.'+Copy(Codigo, 3, 1)+'.'+Copy(Codigo, 4, 2);
                  Item.SubItems.Add('         ' + Descri);
                end
              else
                begin
                  Item := ViewContas.Items.Add;
                  Item.Caption := Copy(Codigo, 1, 2)+'.'+Copy(Codigo, 3, 1)+'.'+Copy(Codigo, 4, 2);
                  Item.SubItems.Add('         ' + '         ' + Descri);
                end;
            end;
          Next;
        end;
    end;
end;

procedure TfrmContas.FormCreate(Sender: TObject);
begin
  CriarContas(Sender);
end;

procedure TfrmContas.FormShow(Sender: TObject);
begin
  ViewContas.Width := ViewContas.Width -1;
  ViewContas.Refresh;
end;

procedure TfrmContas.ViewContasChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if ViewContas.SelCount > 0 then
    begin
      ViewContasClick(Self);
    end;
end;

procedure TfrmContas.ViewContasClick(Sender: TObject);
begin
  if ViewContas.SelCount > 0 then
    begin
      DataModule1.tbCONTAS.Locate('PLACOD', ViewContas.Selected.Caption, [loPartialKey]);
      PlanoCod := ViewContas.Selected.Caption;
      PlanoDes := TrimLeft(ViewContas.Selected.SubItems.Text);
    end;
end;

procedure TfrmContas.ViewContasCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
 with ViewContas.Canvas.Brush do
  begin
    if (Item.Index mod 2) = 0 then
      Color := cl3DLight
    else
      Color := clWindow;
  end;

end;

end.
