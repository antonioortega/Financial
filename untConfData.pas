unit untConfData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB;

type
  TfrmConfData = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    SetDataConfe: TDateTimePicker;
    Bevel1: TBevel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfData: TfrmConfData;

implementation

{$R *.dfm}

uses untDados, untMovBan;

procedure TfrmConfData.BitBtn1Click(Sender: TObject);
var
  DataConf: String;
begin
  DataConf := FormatDateTime('DD/MM/YYYY', SetDataConfe.DateTime);
  with DataModule1.tbLanTotais do
    begin
      Filter := 'DTMOV <= ' + QuotedStr(DataConf) + ' AND CODBAN = ' + QuotedStr(frmMovimentacao.Banco);
      Filtered := True;
      First;
      while not EOF do
        begin
          Edit;
          FieldByName('CONFE').AsString := 'S';
          Post;
          Next;
        end;
      Filtered := False;
    end;
  with DataModule1 do
    begin
      tbBanco.Locate('CODBCO', frmMovimentacao.Banco, []);
      tbBanco.Edit;
      tbBanco.FieldByName('DT_CONF').AsDateTime := SetDataConfe.DateTime;
      tbBanco.Post;
      qryMovimento.Refresh;
      frmMovimentacao.tabMovConferido.Refresh;
      frmMovimentacao.actAtualizaSaldo.OnExecute(Self);
      frmMovimentacao.tabMovConferido.Last;
    end;
end;

end.
