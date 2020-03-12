unit untMovBan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Param, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.SysConst, System.UIConsts, System.DateUtils, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList;

type
  TfrmMovimentacao = class(TForm)
    dsMovBan: TDataSource;
    pnlBanco: TPanel;
    pnlFiltros: TPanel;
    pnlControles: TPanel;
    cmbSelBanco: TDBLookupComboBox;
    dsBanco: TDataSource;
    ActionList1: TActionList;
    actCadBan: TAction;
    btnCadBan: TBitBtn;
    lblBanco: TLabel;
    actConferenciaData: TAction;
    edtCodBan: TEdit;
    Label1: TLabel;
    lblConfData: TLabel;
    Shape1: TShape;
    noteGrids: TNotebook;
    tabMovConferido: TFDTable;
    dsMovConfe: TDataSource;
    rdgSelMovConf: TRadioGroup;
    BitBtn1: TBitBtn;
    grbNConferidos: TGroupBox;
    gpbConferidos: TGroupBox;
    grdMovConf: TDBGrid;
    GroupBox3: TGroupBox;
    DBText1: TDBText;
    btIncluir: TBitBtn;
    actIncluir: TAction;
    tabMovConferidoNUMERO: TIntegerField;
    tabMovConferidoCODBAN: TWideStringField;
    tabMovConferidoDTMOV: TDateField;
    tabMovConferidoDOC: TWideStringField;
    tabMovConferidoCHQ: TWideStringField;
    tabMovConferidoDTDOC: TDateField;
    tabMovConferidoHISTORICO: TWideStringField;
    tabMovConferidoVALOR: TFloatField;
    tabMovConferidoSALDO: TFloatField;
    tabMovConferidoOPE: TWideStringField;
    tabMovConferidoCTA: TWideStringField;
    tabMovConferidoCODGRU: TWideStringField;
    tabMovConferidoID_APA: TWideStringField;
    tabMovConferidoID_REC: TWideStringField;
    tabMovConferidoATM: TIntegerField;
    tabMovConferidoFLAG: TWideStringField;
    tabMovConferidoID_ENT: TWideStringField;
    tabMovConferidoNUMCHQ: TWideStringField;
    tabMovConferidoCCT: TWideStringField;
    tabMovConferidoCONFE: TWideStringField;
    btnAtualizaSaldo: TBitBtn;
    actAtualizaSaldo: TAction;
    actAlterar: TAction;
    botAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    actExcluir: TAction;
    btnLocalizar: TBitBtn;
    pnlLocaliza: TPanel;
    actFiltrar: TAction;
    rdgFiltros: TRadioGroup;
    rdgDatasPadroes: TRadioGroup;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    edtFilterDataIni: TDateTimePicker;
    Label3: TLabel;
    edtFilterDataFin: TDateTimePicker;
    edtFilterNumDoc: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtFilterHisDoc: TEdit;
    dsConta: TDataSource;
    edtFiltrarConta: TDBLookupComboBox;
    Label6: TLabel;
    notFiltros: TNotebook;
    btnRelatorios: TButton;
    tabMovConferidoCCTADES: TWideStringField;
    grdMovNConf: TDBGrid;
    ProgMov16: TImageList;
    btnSair: TButton;
    btnFiltar: TButton;
    btnLimparFiltros: TButton;
    procedure actCadBanExecute(Sender: TObject);
    procedure cmbSelBancoClick(Sender: TObject);
    procedure actConferenciaDataExecute(Sender: TObject);
    procedure rdgSelMovConfClick(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAtualizaSaldoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure rdgDatasPadroesClick(Sender: TObject);
    procedure rdgFiltrosClick(Sender: TObject);
    procedure btnLimparFiltrosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure grdMovNConfDblClick(Sender: TObject);
    procedure grdMovConfDblClick(Sender: TObject);
    procedure grdMovNConfDrawDataCell(Sender: TObject; const [Ref] Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    Banco: String;
    SaldoAnt, SaldoAtual: Real;
    Numero: Integer;
  end;

var
  frmMovimentacao: TfrmMovimentacao;

implementation

{$R *.dfm}

uses untMain, untBancos, untDados, untConfData, untLancamentos;


procedure TfrmMovimentacao.actAlterarExecute(Sender: TObject);
begin
   Application.CreateForm(TfrmLancamentos, frmLancamentos);
   try
   begin
  case rdgSelMovConf.ItemIndex of
    0:
      begin
        with DataModule1 do
          begin
            frmLancamentos.DataDocMod := DateToStr(tabMovConferido.FieldByName('DTMOV').AsDateTime);
            frmLancamentos.DataMovMod := DateToStr(tabMovConferido.FieldByName('DTDOC').AsDateTime);
            frmLancamentos.edtCCT.ListSource.DataSet.Locate('COD', tabMovConferido.FieldByName('CCT').AsString, []);
            frmLancamentos.edtCCTCOD.Text := frmLancamentos.edtCCT.ListSource.DataSet.FieldByName('COD').Value;
            frmLancamentos.edtCCT.KeyValue := frmLancamentos.edtCCT.ListSource.DataSet.FieldByName(frmLancamentos.edtCCT.KeyField).Value;
            frmLancamentos.NumMod := tabMovConferido.FieldByName('NUMERO').AsInteger;
            frmLancamentos.edtCON.ListSource.DataSet.Locate('PLACOD', tabMovConferido.FieldByName('CTA').AsString, []);
            frmLancamentos.edtCON.KeyValue := frmLancamentos.edtCON.ListSource.DataSet.FieldByName(frmLancamentos.edtCON.KeyField).Value;
            frmLancamentos.edtCTACOD.Text := frmLancamentos.edtCON.ListSource.DataSet.FieldByName('PLACOD').Value;
            frmLancamentos.edtNumDoc.Text := tabMovConferido.FieldByName('DOC').AsString;
            frmLancamentos.edtHisDoc.Text := tabMovConferido.FieldByName('HISTORICO').AsString;
            frmLancamentos.edtValDoc.Text := FloatToStr(tabMovConferido.FieldByName('VALOR').AsFloat);
            if tabMovConferido.FieldByName('OPE').AsString = 'E' then
              begin
                frmLancamentos.edtOperacao.ItemIndex := 0;
                frmLancamentos.Ope := 'E';
              end
            else
              begin
                frmLancamentos.edtOperacao.ItemIndex := 1;
                frmLancamentos.Ope := 'S';
              end;
            if tabMovConferido.FieldByName('CONFE').AsString = 'S' then
              begin
                frmLancamentos.edtConf.ItemIndex := 0;
                frmLancamentos.Conf := 'S';
              end
            else
              begin
                frmLancamentos.edtConf.ItemIndex := 1;
                frmLancamentos.Conf := 'N';
              end;
          end;
      end;
    1:
      begin
            with DataModule1 do
              begin
                frmLancamentos.DataDocMod := DateTimeToStr(qryMovimento.FieldByName('DTMOV').AsDateTime);
                frmLancamentos.DataMovMod := DateTimeToStr(qryMovimento.FieldByName('DTDOC').AsDateTime);
                frmLancamentos.NumMod := qryMovimento.FieldByName('NUMERO').AsInteger;
                frmLancamentos.edtCCT.ListSource.DataSet.Locate('COD', qryMovimento.FieldByName('CCT').AsString, []);
                frmLancamentos.edtCCTCOD.Text := frmLancamentos.edtCCT.ListSource.DataSet.FieldByName('COD').Value;
                frmLancamentos.edtCCT.KeyValue := frmLancamentos.edtCCT.ListSource.DataSet.FieldByName(frmLancamentos.edtCCT.KeyField).Value;
                frmLancamentos.edtCON.ListSource.DataSet.Locate('PLACOD', qryMovimento.FieldByName('CTA').AsString, []);
                frmLancamentos.edtCON.KeyValue := frmLancamentos.edtCON.ListSource.DataSet.FieldByName(frmLancamentos.edtCON.KeyField).Value;
                frmLancamentos.edtCTACOD.Text := frmLancamentos.edtCON.ListSource.DataSet.FieldByName('PLACOD').Value;
                frmLancamentos.edtNumDoc.Text := qryMovimento.FieldByName('DOC').AsString;
                frmLancamentos.edtHisDoc.Text := qryMovimento.FieldByName('HISTORICO').AsString;
                frmLancamentos.edtValDoc.Text := FloatToStr(qryMovimento.FieldByName('VALOR').AsFloat);
                if qryMovimento.FieldByName('OPE').AsString = 'E' then
                  begin
                    frmLancamentos.edtOperacao.ItemIndex := 0;
                    frmLancamentos.Ope := 'E';
                  end
                else
                  begin
                    frmLancamentos.edtOperacao.ItemIndex := 1;
                    frmLancamentos.Ope := 'S';
                  end;
                if qryMovimento.FieldByName('CONFE').AsString = 'S' then
                  begin
                    frmLancamentos.edtConf.ItemIndex := 0;
                    frmLancamentos.Conf := 'S';
                  end
                else
                  begin
                    frmLancamentos.edtConf.ItemIndex := 1;
                    frmLancamentos.Conf := 'N';
                  end;
              end;
          end;

  end;
      with frmLancamentos do
        begin
          edtBan.Text := edtCodBan.Text;
          edtDtMov.DateTime := StrToDate(frmLancamentos.DataMovMod);
          edtDtDoc.DateTime := StrToDate(frmLancamentos.DataDocMod);
          frmLancamentos.Caption := 'Alteração';
          with qryLancamentos do
          begin
            SQL.Clear;
            SQL.Add('SELECT * FROM MOVBAN');
            SQL.Add('WHERE NUMERO = ' + QuotedStr(IntToStr(frmLancamentos.NUMMOD)) +';');
            Open;
          end;
       frmLancamentos.ShowModal;
        end;

    end;
  finally
     frmLancamentos.Close;
  end;

end;

procedure TfrmMovimentacao.actAtualizaSaldoExecute(Sender: TObject);
var
  Soma: Double;
begin
  with DataModule1 do
    begin
      tbLanTotais.Filter := 'CODBAN = ' + QuotedStr(Banco);
      tbLanTotais.Filtered := True;
      tbLanTotais.IndexFieldNames := 'DTMOV';
      Soma := 0;
      tbLanTotais.First;
      tbLanTotais.DisableControls;
      while not tbLanTotais.Eof do
        begin
            begin
              if tbLanTotais.FieldByName('OPE').AsString = 'S' then
                Soma := Soma - tbLanTotais.FieldByName('VALOR').AsFloat
              else
                Soma := Soma + tbLanTotais.FieldByName('VALOR').AsFloat;
            end;
            tbLanTotais.Edit;
            tbLanTotais.FieldByName('SALDO').AsFloat := Soma;
            tbLanTotais.Post;
            tbLanTotais.Next;
        end;
    tbLanTotais.EnableControls;
    qryMovimento.Close;
    qryMovimento.Open;
    qryMovimento.Refresh;
    tabMovConferido.Open;
    tabMovconferido.Refresh;
    end;
end;

procedure TfrmMovimentacao.actCadBanExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmBancos, frmBancos);
  try
    begin
      frmBancos.ShowModal;
    end;
  finally
    frmBancos.Free;
  end;
end;

procedure TfrmMovimentacao.actConferenciaDataExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmConfData, frmConfData);
  try
    begin
      frmConfData.ShowModal;
    end;
  finally
    begin
      frmConfData.Close;
    end;
  end;
end;

procedure TfrmMovimentacao.actExcluirExecute(Sender: TObject);
begin
  case rdgSelMovConf.ItemIndex of
    0:
      begin
        if tabMovConferido.RecordCount > 0 then
          if MessageBox(Application.Handle, 'Deseja realmente excluir este lançamento?', 'Confirmação', MB_YESNO) = idYes then
            tabMovConferido.Delete;
      end;
    1:
      begin
        if DataModule1.qryMovimento.RecordCount > 0 then
          if MessageBox(Application.Handle, 'Deseja realmente excluir este lançamento?', 'Confirmação', MB_YESNO) = idYes then
            begin
              with DataModule1 do
                begin
                  qryAtualiza.Close;
                  qryAtualiza.SQL.Clear;
                  qryAtualiza.SQL.Add('DELETE FROM MOVBAN');
                  qryAtualiza.SQL.Add('WHERE NUMERO = ' + DataModule1.qryMovimento.FieldByName('NUMERO').AsString);
                  qryAtualiza.ExecSQL;
                end;
            end;
            DataModule1.MovFin.Commit;
            DataModule1.qryMovimento.Close;
            DataModule1.qryMovimento.Open;
      end;
  end;
end;

procedure TfrmMovimentacao.actFiltrarExecute(Sender: TObject);
begin
  pnlLocaliza.Visible := not pnlLocaliza.Visible;
  edtFilterDataIni.Date := StartOfTheMonth(Now);
  edtFilterDataFin.Date := EndOfTheMonth(Now);
end;

procedure TfrmMovimentacao.actIncluirExecute(Sender: TObject);
begin
  DataModule1.tbLanTotais.IndexFieldNames := 'NUMERO';
  DataModule1.tbLanTotais.Last;
  Numero :=  DataModule1.tbLanTotais.FieldByName('NUMERO').AsInteger;
  DataModule1.tbLanTotais.IndexFieldNames := 'DTMOV';
  DataModule1.tbLanTotais.Last;
  SaldoAnt := DataModule1.tbLanTotais.FieldByName('SALDO').AsFloat;
  begin
    Application.CreateForm(TfrmLancamentos, frmLancamentos);
    try
      begin
        with frmLancamentos do
          begin
            Caption := 'Inclusão';
            edtBan.Text := Banco;
            Saldo:= SaldoAnt;
            edtDTMov.DateTime := Now;
            edtDTDoc.DateTime := Now;
            frmLancamentos.Conf := 'N';
            ShowModal;
          end;
      end;
    finally
       frmLancamentos.Close;
    end;
  end;
end;

procedure TfrmMovimentacao.btnFiltarClick(Sender: TObject);
var
  FraseTab, FraseQry: String;
  Filtrar, Value: String;
begin
  FraseTab := 'CONFE = ' + QuotedStr('S');
  FraseQry := 'CONFE = ' + QuotedStr('N');
        if (notFiltros.ActivePage = 'Datas') and (rdgFiltros.ItemIndex = 0) then
          begin
            FraseTab := FraseTab + ' AND DTMOV >= ' + QuotedStr(DateToStr(edtFilterDataIni.Date)) + ' AND DTMOV <=' + QuotedStr(DateToStr(edtFilterDataFin.Date));
            FraseQry := FraseQry + ' AND DTMOV >= ' + QuotedStr(DateToStr(edtFilterDataIni.Date)) + ' AND DTMOV <=' + QuotedStr(DateToStr(edtFilterDataFin.Date));
          end;
        if (notFiltros.ActivePage = 'Datas') and (rdgFiltros.ItemIndex = 1) then
          begin
            FraseTab := FraseTab +  ' AND DTDOC >= ' + QuotedStr(DateToStr(edtFilterDataIni.Date)) + ' AND DTDOC <=' + QuotedStr(DateToStr(edtFilterDataFin.Date));
            FraseQry := FraseQry +  ' AND DTDOC >= ' + QuotedStr(DateToStr(edtFilterDataIni.Date)) + ' AND DTDOC <=' + QuotedStr(DateToStr(edtFilterDataFin.Date));
          end;
        if (notFiltros.ActivePage = 'Texto') and (rdgFiltros.ItemIndex = 2) then
          begin
            if edtFilterNumDoc.Text <> '' then
              Filtrar := '%' + edtFilterNumDoc.Text + '%';
            if edtFilterHisDoc.Text <> '' then
              Value := '%' + edtFilterHisDoc.Text + '%';
            FraseTab := FraseTab +  ' AND DOC LIKE ' + QuotedStr(Filtrar) + ' OR HISTORICO LIKE ' + QuotedStr(Value);
            FraseQry := FraseQry +  ' AND DOC LIKE ' + QuotedStr(Filtrar) + ' OR HISTORICO LIKE ' + QuotedStr(Value);
          end;
        if (notFiltros.ActivePage = 'Contas') and (rdgFiltros.ItemIndex = 3) then
          begin
            DataModule1.tbCONTAS.Locate('PLADES', edtFiltrarConta.ListSource.DataSet.FieldByName(edtFiltrarConta.KeyField).Value, []);
            Value := DataModule1.tbCONTAS.FieldByName('PLACOD').AsString;
            FraseTab := FraseTab +  ' AND CTA = ' + QuotedStr(Value);
            FraseQry := FraseQry +  ' AND CTA = ' + QuotedStr(Value);
          end;
    tabMovConferido.Filter := FraseTab;
    tabMovConferido.Filtered := True;
    DataModule1.qryMovimento.Filter := FraseQry;
    DataModule1.qryMovimento.Filtered := True;
end;

procedure TfrmMovimentacao.btnLimparFiltrosClick(Sender: TObject);
begin
  tabMovConferido.Filter := 'CONFE = ' + QuotedStr('S');
  tabMovConferido.Filtered := True;
  DataModule1.qryMovimento.Filtered := False;
end;

procedure TfrmMovimentacao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMovimentacao.cmbSelBancoClick(Sender: TObject);
begin
  with DataModule1 do
    begin
      tbBanco.Open;
      tbBanco.Locate('NOMBCO', cmbSelBanco.Text, []);
      edtCodBan.Text := tbBanco.FieldByName('CODBCO').AsString;
      Banco := edtCodBan.Text;
      lblConfData.Caption :=  FormatDateTime('dd/mm/yyyy', tbBanco.FieldByName('DT_CONF').AsDateTime);
      qryMovimento.Close;
      qryMovimento.ParamByName('DtIni').AsDate := IncYear(Now, -10);
      qryMovimento.ParamByName('DtFin').AsDate := Now;
      qryMovimento.ParamByName('BANCO').AsString := Banco;
      qryMovimento.ParamByName('CONF').AsString := 'N';
      qryMovimento.Prepare;
      qryMovimento.Open;
    end;
  tabMovConferido.Close;
  tabMovConferido.Filter := 'CODBAN=' + QuotedStr(Banco) + ' AND CONFE='+ QuotedStr('S');
  tabMovConferido.Filtered := True;
  tabMovConferido.Open;
  tabMovConferido.Last;
end;

procedure TfrmMovimentacao.grdMovConfDblClick(Sender: TObject);
begin
  if grdMovConf.DataSource.DataSet.RecordCount > 0 then
    begin
      actAlterarExecute(Sender);
    end;
end;

procedure TfrmMovimentacao.grdMovNConfDblClick(Sender: TObject);
begin
  if grdMovNConf.DataSource.DataSet.RecordCount > 0 then
    begin
      actAlterarExecute(Sender);
    end;
end;

procedure TfrmMovimentacao.grdMovNConfDrawDataCell(Sender: TObject;
  const [Ref] Rect: TRect; Field: TField; State: TGridDrawState);
begin
  with DataModule1 do
    begin
      if qryMovimentoSALDO.Value > 0 then
        grdMovNConf.Canvas.Brush.Color:= clRed;
        grdMovNConf.Canvas.FillRect(Rect);
        grdMovNConf.Canvas.TextOut(Rect.left + 2, Rect.top + 2,Field.DisplayText);
    end;
end;

procedure TfrmMovimentacao.FormCreate(Sender: TObject);
begin
  with DataModule1 do
    begin
      tbLanTotais.Open;
      tbContabil.Open;
      tbContas.Open;
    end;
end;

procedure TfrmMovimentacao.rdgDatasPadroesClick(Sender: TObject);
begin
  case rdgDatasPadroes.ItemIndex of
    0:
      begin
        edtFilterDataIni.Enabled := False;
        edtFilterDataFin.Enabled := False;
        edtFilterDataIni.Date := StartOfTheMonth(Now);
        edtFilterDataFin.Date := EndOfTheMonth(Now);
      end;
    1:
      begin
        edtFilterDataIni.Enabled := False;
        edtFilterDataFin.Enabled := False;
        edtFilterDataIni.Date := StartOfTheMonth(IncMonth(Now, 1));
        edtFilterDataFin.Date := EndOfTheMonth(IncMonth(Now, 1));
      end;
    2:
      begin
        edtFilterDataIni.Enabled := False;
        edtFilterDataFin.Enabled := False;
        edtFilterDataIni.Date := StartOfTheMonth(IncMonth(Now, -1));
        edtFilterDataFin.Date := EndOfTheMonth(IncMonth(Now, -1));
      end;
    3:
      begin
        edtFilterDataIni.Enabled := True;
        edtFilterDataFin.Enabled := True;
      end;
  end;

end;

procedure TfrmMovimentacao.rdgFiltrosClick(Sender: TObject);
begin
  case rdgFiltros.ItemIndex of
    0:
      begin
        notFiltros.ActivePage := 'Datas';
      end;
    1:
      begin
        notFiltros.ActivePage := 'Datas';
      end;
    2:
      begin
        notFiltros.ActivePage := 'Texto';
      end;
    3:
      begin
        notFiltros.ActivePage := 'Contas';
      end;
  end;
end;

procedure TfrmMovimentacao.rdgSelMovConfClick(Sender: TObject);
begin
  case rdgSelMovConf.ItemIndex of
     0:
      begin
        DataModule1.qryMovimento.Close;
        DataModule1.qryMovimento.ParamByName('CONF').AsString := 'N';
        DataModule1.qryMovimento.Open;
        noteGrids.ActivePage := 'MovComConf';
      end;
     1: noteGrids.ActivePage := 'MovSemConf'
  end;
end;

end.

