unit untSelRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls, System.DateUtils, FireDAC.Stan.Param;

type
  TfrmSelRelatorios = class(TForm)
    pnlEscolha: TPanel;
    rdgSelTipoRelatorio: TRadioGroup;
    Panel1: TPanel;
    pnlBancos: TPanel;
    Label1: TLabel;
    grdBancos: TDBGrid;
    pnlContas: TPanel;
    Label2: TLabel;
    grdContas: TDBGrid;
    dsContas: TDataSource;
    pnlContabil: TPanel;
    Label3: TLabel;
    grdContabil: TDBGrid;
    dsBancos: TDataSource;
    dsContabil: TDataSource;
    Panel5: TPanel;
    btnPreview: TBitBtn;
    edtRelDatIni: TDateTimePicker;
    edtRelDatFin: TDateTimePicker;
    lblDataIni: TLabel;
    lblDataFin: TLabel;
    edtRelBanco: TDBLookupComboBox;
    lblComboBanco: TLabel;
    lblInstrucoes: TLabel;
    btnFechar: TButton;
    grpSelAno: TGroupBox;
    dtAnosSel: TDateTimePicker;
    procedure btnPreviewClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure rdgSelTipoRelatorioClick(Sender: TObject);
    procedure grdContasCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure grdBancosCellClick(Column: TColumn);
    procedure grdContabilCellClick(Column: TColumn);
  private
    { Private declarations }
    Empresa: String;
    Banco: String;
    MultConta: string;
    MultBanco: string;
    MultContabil: string;
  public
    { Public declarations }
  end;

var
  frmSelRelatorios: TfrmSelRelatorios;

implementation

{$R *.dfm}

uses untRelExtratos, untDados, untRelCentroCusto, untMain,
  untRelCentroCustoSeleciona, untRelCentroCustoAnual, untRelSaldoBan;

procedure TfrmSelRelatorios.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSelRelatorios.btnPreviewClick(Sender: TObject);
var
  AnoBase: String;
begin
  DataModule1.tbEMPRESA.Locate('EMPRAZA', Copy(frmMain.StatusBar.Panels[0].Text, 9, Length(frmMain.StatusBar.Panels[0].Text)), []);
  Empresa := DataModule1.tbEMPRESA.FieldByName('EMPNUME').Value + ' - ' + DataModule1.tbEMPRESA.FieldByName('EMPRAZA').Value;
  case rdgSelTipoRelatorio.ItemIndex of
    0:
      begin
        try
          begin
            with DataModule1 do
              begin
                tbBanco.Locate('NOMBCO', edtRelBanco.Text, []);
                Banco := tbBanco.FieldByName('CODBCO').AsString;
                qryExtratos.Close;
                qryExtratos.ParamByName('DtIni').AsDate := edtRelDatIni.Date;
                qryExtratos.ParamByName('DtFin').AsDate := edtRelDatFin.Date;
                qryExtratos.ParamByName('BANCO').AsString := Banco;
                qryExtratos.ParamByName('CONF').AsString := 'S';
                try
                  begin
                    qryExtratos.Prepare;
                    qryExtratos.Open;
                  end;
                except
                  ShowMessage('Nenhum registro encontrado');
                end;
                qrySaldoAnt.Close;
                qrySaldoAnt.ParamByName('DTSALDOANT').AsDate := IncYear(edtRelDatIni.Date, -30);
                qrySaldoAnt.ParamByName('DTSALDOFIN').AsDate := IncDay(edtRelDatIni.Date, -1);
                qrySaldoAnt.ParamByName('BANCO').AsString := Banco;
                qrySaldoAnt.Open;
                if qryExtratos.RecordCount > 0 then
                  begin
                    with frmRelExtratos do
                      begin
                      rblEmpresa.Caption := 'Empresa : ' + Empresa;
                      rlbCabecalho.Caption := 'EXTRATO DO BANCO: ';
                      rlbCabecalho.Caption := rlbCabecalho.Caption + tbBanco.FieldByName('NOMBCO').AsString + ' ';
                      rlbCabecalho.Caption := rlbCabecalho.Caption + '- Período de ' ;
                      rlbCabecalho.Caption := rlbCabecalho.Caption + DateToStr(edtRelDatIni.Date) + ' até ';
                      rlbCabecalho.Caption := rlbCabecalho.Caption + DateToStr(edtRelDatFin.Date);
                      RelExtratos.Preview;
                      end;
                  end
                else
                  ShowMessage('Nenhum registro encontrado');
              end;

          end;
        finally
           frmRelExtratos.RelExtratos.ClosePreview;
        end;
      end;
    1:
      begin
        try
          begin
            with DataModule1 do
              begin
                qryCentroCustoSeleciona.Close;
                qryCentroCustoSeleciona.SQL.Clear;
                qryCentroCustoSeleciona.SQL.Add('SELECT cc.PLADES, cc.PLACOD ,m.DTMOV, m.NUMERO, m.HISTORICO, b.NOMBCO, m.CCT, ');
                qryCentroCustoSeleciona.SQL.Add('IFNULL(SUM(CASE WHEN m.OPE = ' + QuotedStr('E') + ' THEN m.VALOR ELSE 0.00 END), 0.00) AS ENTRADAS,');
                qryCentroCustoSeleciona.SQL.Add('IFNULL(SUM(CASE WHEN m.OPE = ' + QuotedStr('S') + ' THEN m.VALOR ELSE 0.00 END), 0.00) AS SAIDAS,');
                qryCentroCustoSeleciona.SQL.Add('SUM(CASE WHEN m.OPE = ' + QuotedStr('E') + ' THEN m.VALOR WHEN m.OPE = ' + QuotedStr('S') + ' THEN m.VALOR * -1 ELSE 0.00 END) AS SALDO');
                qryCentroCustoSeleciona.SQL.Add('FROM MOVBAN m');
                qryCentroCustoSeleciona.SQL.Add('INNER JOIN CONTA cc ON m.CTA LIKE cc.PLACOD||' + QuotedStr('%'));
                qryCentroCustoSeleciona.SQL.Add('LEFT JOIN BANCO b ON m.CODBAN = b.CODBCO');
                qryCentroCustoSeleciona.SQL.Add('LEFT JOIN CCTB c ON m.CCT = c.COD');
                qryCentroCustoSeleciona.SQL.Add('WHERE DTMOV>=:DTInicial AND DTMOV<=:DTFinal AND CONFE=' + QuotedStr('S'));
                if MultConta = '' then
                  qryCentroCustoSeleciona.SQL.Add('AND m.CTA in (cc.PLACOD)')
                else
                  qryCentroCustoSeleciona.SQL.Add('AND m.CTA in (' + MultConta +')');
                if MultBanco = '' then
                  qryCentroCustoSeleciona.SQL.Add('AND m.CODBAN in (b.CODBCO)')
                else
                  qryCentroCustoSeleciona.SQL.Add('AND m.CODBAN in (' + MultBanco +')');
                if MultContabil = '' then
                  qryCentroCustoSeleciona.SQL.Add('AND m.CCT in (c.COD)')
                else
                  qryCentroCustoSeleciona.SQL.Add('AND m.CCT in (' + MultContabil +')');
                qryCentroCustoSeleciona.SQL.Add('GROUP BY m.NUMERO');
                qryCentroCustoSeleciona.SQL.Add('ORDER BY cc.PLACOD, m.DTMOV ASC');
                qryCentroCustoSeleciona.ParamByName('DTInicial').AsDate := edtRelDatIni.Date;
                qryCentroCustoSeleciona.ParamByName('DTFinal').AsDate := edtRelDatFin.Date;
                try
                  qryCentroCustoSeleciona.Open;
                except
                  ShowMessage('Nenhum registro encontrado');
                end;
              if (qryCentroCustoSeleciona.RecordCount < 0) and (qryCentroCustoSintetico.Active =False) then
                begin
             //     ShowMessage('Nenhum registro encontrado');
                end
              else
                begin
                  with frmCentroCustoSeleciona do
                    begin
                      rblEmpresa.Caption := 'Empresa: ' + Empresa;
                      rblTipoRelatorio.Caption := 'CENTRO DE CUSTO';
                      rblPeriodo.Caption := '';
                      rblPeriodo.Caption := rblPeriodo.Caption + 'Período de ' ;
                      rblPeriodo.Caption := rblPeriodo.Caption + DateToStr(edtRelDatIni.Date) + ' até ';
                      rblPeriodo.Caption := rblPeriodo.Caption + DateToStr(edtRelDatFin.Date);
                      RelCentroCustoSeleciona.Preview;
                    end;
                end;

              end;
          end;
        finally
           frmCentroCustoSeleciona.RelCentroCustoSeleciona.ClosePreview;
        end;
      end;
    2:
      begin
        try
          begin
            with DataModule1 do
              begin
                qryCentroCustoSintetico.Close;
                qryCentroCustoSintetico.SQL.Clear;
                qryCentroCustoSintetico.SQL.Add('SELECT cc.PLACOD, SUBSTR(cc.PLACOD, 1, 3)||' + QuotedStr('00') + ' as CHILD,');
                qryCentroCustoSintetico.SQL.Add('SUBSTR(cc.PLACOD, 1, 2)||' + QuotedStr('000') +' AS PAI, cc.PLADES, m.CODBAN,');
                qryCentroCustoSintetico.SQL.Add('IFNULL(SUM(CASE WHEN m.OPE = ' + QuotedStr('E') + ' THEN m.VALOR ELSE 0.00 END), 0.00) AS ENTRADAS,');
                qryCentroCustoSintetico.SQL.Add('IFNULL(SUM(CASE WHEN m.OPE = ' + QuotedStr('S') + ' THEN m.VALOR ELSE 0.00 END), 0.00) AS SAIDAS,');
                qryCentroCustoSintetico.SQL.Add('SUM(CASE WHEN m.OPE = ' + QuotedStr('E') + ' THEN m.VALOR WHEN m.OPE = ' + QuotedStr('S') + ' THEN m.VALOR * -1 ELSE 0.00 END) AS total_conta');
                qryCentroCustoSintetico.SQL.Add('FROM CONTA cc');
                qryCentroCustoSintetico.SQL.Add('LEFT JOIN MOVBAN m ON m.CTA LIKE CHILD||' + QuotedStr('%'));
                qryCentroCustoSintetico.SQL.Add('or SUBSTR(m.CTA, 1, 2)||' + QuotedStr('000') + ' = cc.PLACOD');
                qryCentroCustoSintetico.SQL.Add('or SUBSTR(m.CTA, 1, 3)||' + QuotedStr('00') + ' = cc.PLACOD');
                qryCentroCustoSintetico.SQL.Add('WHERE DTMOV>=:DTCCustoDIni AND DTMOV<=:DTCCustoDFin AND CONFE=' + QuotedStr('S'));
                if MultContabil = '' then
                  qryCentroCustoSintetico.SQL.Add('AND CCT in (select CCT from MOVBAN)')
                else
                  qryCentroCustoSintetico.SQL.Add('AND CCT in (' + MultContabil +')');
                qryCentroCustoSintetico.SQL.Add('GROUP BY cc.PLACOD');
                qryCentroCustoSintetico.SQL.Add('ORDER BY cc.PLACOD ASC');
                qryCentroCustoSintetico.ParamByName('DTCCustoDIni').AsDate := edtRelDatIni.Date;
                qryCentroCustoSintetico.ParamByName('DTCCustoDFin').AsDate := edtRelDatFin.Date;
                try
                  qryCentroCustoSintetico.Open;
                except
                  ShowMessage('Nenhum registro encontrado');
                end;
              if (qryCentroCustoSintetico.RecordCount < 0) and (qryCentroCustoSintetico.Active =False) then
                begin
                  ShowMessage('Nenhum registro encontrado');
                end
              else
                begin
                  with frmRelCentroCusto do
                    begin
                      rblEmpresa.Caption := 'Empresa: ' + Empresa;
                      rblTipoRelatorio.Caption := 'MOVIMENTO FINANCEIRO - SINTÉTICO';
                      rblPeriodo.Caption := '';
                      rblPeriodo.Caption := rblPeriodo.Caption + 'Período de ' ;
                      rblPeriodo.Caption := rblPeriodo.Caption + DateToStr(edtRelDatIni.Date) + ' até ';
                      rblPeriodo.Caption := rblPeriodo.Caption + DateToStr(edtRelDatFin.Date);
                      RelCentroCusto.Preview;
                    end;
                end;

              end;
          end;
        finally
           frmRelCentroCusto.RelCentroCusto.ClosePreview;
        end;
      end;
    3:
      begin
        try
          begin
            with DataModule1 do
              begin
                qryCentroCustoSintetico.Close;
                qryCentroCustoSintetico.SQL.Clear;
                qryCentroCustoSintetico.SQL.Add('SELECT cc.PLACOD, SUBSTR(cc.PLACOD, 1, 3)||' + QuotedStr('00') + ' as CHILD,');
                qryCentroCustoSintetico.SQL.Add('SUBSTR(cc.PLACOD, 1, 2)||' + QuotedStr('000') +' AS PAI, cc.PLADES, m.CODBAN,');
                qryCentroCustoSintetico.SQL.Add('IFNULL(SUM(CASE WHEN m.OPE = ' + QuotedStr('E') + ' THEN m.VALOR ELSE 0.00 END), 0.00) AS ENTRADAS,');
                qryCentroCustoSintetico.SQL.Add('IFNULL(SUM(CASE WHEN m.OPE = ' + QuotedStr('S') + ' THEN m.VALOR ELSE 0.00 END), 0.00) AS SAIDAS,');
                qryCentroCustoSintetico.SQL.Add('SUM(CASE WHEN m.OPE = ' + QuotedStr('E') + ' THEN m.VALOR WHEN m.OPE = ' + QuotedStr('S') + ' THEN m.VALOR * -1 ELSE 0.00 END) AS total_conta');
                qryCentroCustoSintetico.SQL.Add('FROM CONTA cc');
                qryCentroCustoSintetico.SQL.Add('LEFT JOIN MOVBAN m ON m.CTA LIKE cc.PLACOD||' + QuotedStr('%'));
                qryCentroCustoSintetico.SQL.Add('or SUBSTR(m.CTA, 1, 2)||' + QuotedStr('000') + ' = cc.PLACOD');
                qryCentroCustoSintetico.SQL.Add('or SUBSTR(m.CTA, 1, 3)||' + QuotedStr('00') + ' = cc.PLACOD');
                qryCentroCustoSintetico.SQL.Add('WHERE DTMOV>=:DTCCustoDIni AND DTMOV<=:DTCCustoDFin AND CONFE=' + QuotedStr('S'));
                if MultContabil = '' then
                  qryCentroCustoSintetico.SQL.Add('AND CCT in (select CCT from MOVBAN)')
                else
                  qryCentroCustoSintetico.SQL.Add('AND CCT in (' + MultContabil +')');
                qryCentroCustoSintetico.SQL.Add('GROUP BY cc.PLACOD');
                qryCentroCustoSintetico.SQL.Add('ORDER BY cc.PLACOD ASC');
                qryCentroCustoSintetico.ParamByName('DTCCustoDIni').AsDate := edtRelDatIni.Date;
                qryCentroCustoSintetico.ParamByName('DTCCustoDFin').AsDate := edtRelDatFin.Date;
                try
                  qryCentroCustoSintetico.Open;
                except
                  ShowMessage('Nenhum registro encontrado');
                end;
              if (qryCentroCustoSintetico.RecordCount < 0) and (qryCentroCustoSintetico.Active =False) then
                begin
                  ShowMessage('Nenhum registro encontrado');
                end
              else
                begin
                  with frmRelCentroCusto do
                    begin
                      rblEmpresa.Caption := 'Empresa: ' + Empresa;
                      rblTipoRelatorio.Caption := 'MOVIMENTO FINANCEIRO - ANALÍTICO';
                      rblPeriodo.Caption := '';
                      rblPeriodo.Caption := rblPeriodo.Caption + 'Período de ' ;
                      rblPeriodo.Caption := rblPeriodo.Caption + DateToStr(edtRelDatIni.Date) + ' até ';
                      rblPeriodo.Caption := rblPeriodo.Caption + DateToStr(edtRelDatFin.Date);
                      RelCentroCusto.Preview;
                    end;
                end;

              end;
          end;
        finally
           frmRelCentroCusto.RelCentroCusto.ClosePreview;
        end;
      end;
    4:
      begin
        try
          begin
            with DataModule1 do
              begin
                qrySaldoBancos.Close;
                qrySaldoBancos.ParamByName('DTini').AsDate := edtRelDatIni.Date;
                qrySaldoBancos.ParamByName('DTFin').AsDate := edtRelDatFin.Date;
                try
                  qrySaldoBancos.Open;
                except
                  ShowMessage('Nenhum registro encontrado');
                end;
              end;
            with frmSaldoBancos do
              begin
                rblEmpresa.Caption := 'Empresa: ' + Empresa;
                rblTipoRelatorio.Caption := 'SALDOS BANCÁRIOS';
                rblPeriodo.Caption := '';
                rblPeriodo.Caption := rblPeriodo.Caption + 'Período de ' ;
                rblPeriodo.Caption := rblPeriodo.Caption + DateToStr(edtRelDatIni.Date) + ' até ';
                rblPeriodo.Caption := rblPeriodo.Caption + DateToStr(edtRelDatFin.Date);
               // relSaldoBancos.Prepare;
                relSaldoBancos.Preview;
              end;

          end;
        finally
          frmSaldoBancos.relSaldoBancos.ClosePreview;
        end;
      end;
    11:
      begin
        try
          begin
            with DataModule1 do
              begin
                qryCentroCustoAnual.Close;
                qryCentroCustoAnual.SQL.Clear;
                qryCentroCustoAnual.SQL.Add('SELECT cc.PLACOD, SUBSTR(cc.PLACOD, 1, 3)||'+QuotedStr('00')+' as CHILD, SUBSTR(cc.PLACOD, 1, 2)||'+QuotedStr('000')+' AS PAI, cc.PLADES');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('01')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Jan');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('02')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Fev');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('03')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Mar');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('04')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Abr');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('05')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Mai');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('06')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Jun');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('07')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Jul');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('08')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Ago');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('09')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) '+QuotedStr('Set'));
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('10')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Out');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('11')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Nov');
                qryCentroCustoAnual.SQL.Add('  ,ifnull(sum(case when strftime('+QuotedStr('%m')+', DTMOV) = '+QuotedStr('12')+' then IFNULL(CASE WHEN OPE = '+QuotedStr('E')+' THEN VALOR ELSE VALOR *-1  END, 0.00) end), 0.00) Dez');
                qryCentroCustoAnual.SQL.Add('  ,SUM(CASE WHEN m.OPE = '+QuotedStr('E')+' THEN m.VALOR WHEN m.OPE = '+QuotedStr('S')+' THEN m.VALOR * -1 ELSE 0.00 END) AS '+QuotedStr('TOTAL'));
                qryCentroCustoAnual.SQL.Add('FROM MOVBAN m');
                qryCentroCustoAnual.SQL.Add('LEFT JOIN CONTA cc ON m.CTA LIKE cc.PLACOD||'+QuotedStr('%')+' or SUBSTR(m.CTA, 1, 2)||'+QuotedStr('000')+' = cc.PLACOD or SUBSTR(m.CTA, 1, 3)||'+QuotedStr('00')+' = cc.PLACOD');
                qryCentroCustoAnual.SQL.Add('INNER JOIN CCTB c ON m.CCT=c.COD');
                qryCentroCustoAnual.SQL.Add('WHERE DTMOV>=:DTIni AND DTMOV<=:DTFin');
                if MultContabil = '' then
                  qryCentroCustoAnual.SQL.Add('AND CCT in (c.COD)')
                else
                  qryCentroCustoAnual.SQL.Add('AND CCT in (' + MultContabil +')');
                qryCentroCustoAnual.SQL.Add('GROUP BY cc.PLACOD');
                qryCentroCustoAnual.SQL.Add('ORDER BY cc.PLACOD');
                AnoBase := FormatDateTime('yyyy', dtAnosSel.Date);
                qryCentroCustoAnual.ParamByName('DTIni').AsDate := StrToDate('01/01/' + AnoBase);
                qryCentroCustoAnual.ParamByName('DTFin').AsDate := StrToDate('31/12/' + AnoBase);
                try
                  qryCentroCustoAnual.Open;
                except
                  ShowMessage('Nenhum registro encontrado');
                end;
              end;
            with frmCentroCustoAnual do
              begin
                rblEmpresa.Caption := 'Empresa: ' + Empresa;
                rblTipoRelatorio.Caption := 'MOVIMENTO FINANCEIRO - ANUAL';
                rblPeriodo.Caption := 'Ano base: ' + AnoBase;
                relCentoCustoAnual.Preview;
              end;
          end;
        finally
          frmCentroCustoAnual.relCentoCustoAnual.ClosePreview;
        end;
      end;
  end;
end;

procedure TfrmSelRelatorios.FormCreate(Sender: TObject);
begin
  with DataModule1 do
    begin
      tbBanco.Open;
      tbContas.Open;
      tbContabil.Open;
    end;
  edtRelDatIni.Date := StartOfTheMonth(Now);
  edtRelDatFin.Date := Now;
end;

procedure TfrmSelRelatorios.grdBancosCellClick(Column: TColumn);
var
    i: Integer;
begin
    MultBanco := '';
    if grdBancos.SelectedRows.Count <> 0 then
      begin
        for i := 0 to grdBancos.SelectedRows.Count - 1 do
        begin
            grdBancos.DataSource.DataSet.GotoBookmark(pointer(grdBancos.SelectedRows.Items[i]));
            MultBanco := MultBanco + QuotedStr(grdBancos.DataSource.DataSet.FieldByName('CODBCO').AsString) + ', ';
        end;
        MultBanco := Copy(MultBanco, 1, Length(MultBanco)-2);
      end;
end;

procedure TfrmSelRelatorios.grdContabilCellClick(Column: TColumn);
var
    i: Integer;
begin
    MultContabil := '';
    if grdContabil.SelectedRows.Count <> 0 then
      begin
        for i := 0 to grdContabil.SelectedRows.Count - 1 do
        begin
            grdContabil.DataSource.DataSet.GotoBookmark(pointer(grdContabil.SelectedRows.Items[i]));
            MultContabil := MultContabil + QuotedStr(grdContabil.DataSource.DataSet.FieldByName('COD').AsString) + ', ';
        end;
        MultContabil := Copy(MultContabil, 1, Length(MultContabil)-2);
      end;
end;

procedure TfrmSelRelatorios.grdContasCellClick(Column: TColumn);
var
    i: Integer;
begin
    MultConta := '';
    if grdContas.SelectedRows.Count <> 0 then
      begin
        for i := 0 to grdContas.SelectedRows.Count - 1 do
        begin
            grdContas.DataSource.DataSet.GotoBookmark(pointer(grdContas.SelectedRows.Items[i]));
            MultConta := MultConta + QuotedStr(grdContas.DataSource.DataSet.FieldByName('PLACOD').AsString) + ', ';
        end;
        MultConta := Copy(MultConta, 1, Length(MultConta)-2);
      end;
end;

procedure TfrmSelRelatorios.rdgSelTipoRelatorioClick(Sender: TObject);
begin
  case rdgSelTipoRelatorio.ItemIndex of
    0:
      begin
        pnlContas.Visible := False;
        pnlBancos.Visible := False;
        pnlContabil.Visible := False;
        lblDataIni.Visible := True;
        edtRelDatIni.Visible := True;
        lblDataFin.Visible := True;
        edtRelDatFin.Visible := True;
        lblComboBanco.Visible := True;
        edtRelBanco.Visible := True;
        lblInstrucoes.Visible := False;
        MultConta := '';
        MultBanco := '';
        MultContabil := '';
        grdContas.SelectedRows.Clear;
        grdBancos.SelectedRows.Clear;
        grdContabil.SelectedRows.Clear;
        grpSelAno.Visible := False;
      end;
    1:
      begin
        pnlContas.Visible := True;
        pnlBancos.Visible := True;
        pnlContabil.Visible := True;
        lblDataIni.Visible := True;
        edtRelDatIni.Visible := True;
        lblDataFin.Visible := True;
        edtRelDatFin.Visible := True;
        lblComboBanco.Visible := False;
        edtRelBanco.Visible := False;
        lblInstrucoes.Visible := True;
        MultConta := '';
        MultBanco := '';
        MultContabil := '';
        grdContas.SelectedRows.Clear;
        grdBancos.SelectedRows.Clear;
        grdContabil.SelectedRows.Clear;
        grpSelAno.Visible := False;
      end;
    2:
      begin
        pnlContas.Visible := False;
        pnlBancos.Visible := False;
        pnlContabil.Visible := True;
        lblDataIni.Visible := True;
        edtRelDatIni.Visible := True;
        lblDataFin.Visible := True;
        edtRelDatFin.Visible := True;
        lblComboBanco.Visible := False;
        edtRelBanco.Visible := False;
        lblInstrucoes.Visible := True;
        MultConta := '';
        MultBanco := '';
        MultContabil := '';
        grdContas.SelectedRows.Clear;
        grdBancos.SelectedRows.Clear;
        grdContabil.SelectedRows.Clear;
        grpSelAno.Visible := False;
      end;
    3:
      begin
        pnlContabil.Visible := True;
        lblDataIni.Visible := True;
        edtRelDatIni.Visible := True;
        lblDataFin.Visible := True;
        edtRelDatFin.Visible := True;
        lblComboBanco.Visible := False;
        edtRelBanco.Visible := False;
        lblInstrucoes.Visible := True;
        MultConta := '';
        MultBanco := '';
        MultContabil := '';
        grdContas.SelectedRows.Clear;
        grdBancos.SelectedRows.Clear;
        grdContabil.SelectedRows.Clear;
        grpSelAno.Visible := False;
      end;
    4:
      begin
        pnlContas.Visible := False;
        pnlBancos.Visible := False;
        pnlContabil.Visible := False;
        lblDataIni.Visible := True;
        edtRelDatIni.Visible := True;
        lblDataFin.Visible := True;
        edtRelDatFin.Visible := True;
        lblComboBanco.Visible := False;
        edtRelBanco.Visible := False;
        lblInstrucoes.Visible := False;
        MultConta := '';
        MultBanco := '';
        MultContabil := '';
        grdContas.SelectedRows.Clear;
        grdBancos.SelectedRows.Clear;
        grdContabil.SelectedRows.Clear;
        grpSelAno.Visible := False;
      end;
    11:
      begin
        pnlContas.Visible := False;
        pnlBancos.Visible := False;
        pnlContabil.Visible := True;
        lblDataIni.Visible := False;
        edtRelDatIni.Visible := False;
        lblDataFin.Visible := False;
        edtRelDatFin.Visible := False;
        lblComboBanco.Visible := False;
        edtRelBanco.Visible := False;
        lblInstrucoes.Visible := False;
        MultConta := '';
        MultBanco := '';
        MultContabil := '';
        grdContas.SelectedRows.Clear;
        grdBancos.SelectedRows.Clear;
        grdContabil.SelectedRows.Clear;
        dtAnosSel.Format := 'yyyy';
        grpSelAno.Visible := True;
      end;
  end;
end;

end.
