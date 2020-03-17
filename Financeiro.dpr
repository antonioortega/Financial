program Financeiro;

uses
  Vcl.Forms,
  System.UITypes,
  System.SysUtils,
  untMain in 'untMain.pas' {frmMain},
  untCadEmpresas in 'untCadEmpresas.pas' {frmCadastroEmpresas},
  untDados in 'untDados.pas' {DataModule1: TDataModule},
  untCadUsuarios in 'untCadUsuarios.pas' {frmCadUsuarios},
  untLogin in 'untLogin.pas' {frmLogin},
  untBuscaCep in 'untBuscaCep.pas' {DMCEP: TDataModule},
  untFuncoes in 'untFuncoes.pas',
  untContas in 'untContas.pas' {frmContas},
  untSelEmpresa in 'untSelEmpresa.pas' {frmSelecionaEmpresa},
  untMovBan in 'untMovBan.pas' {frmMovimentacao},
  untBancos in 'untBancos.pas' {frmBancos},
  untCadBan in 'untCadBan.pas' {frmCadBan},
  untConfData in 'untConfData.pas' {frmConfData},
  untLancamentos in 'untLancamentos.pas' {frmLancamentos},
  untRelExtratos in 'untRelExtratos.pas' {frmRelExtratos},
  untSelRelatorios in 'untSelRelatorios.pas' {frmSelRelatorios},
  untRelCentroCusto in 'untRelCentroCusto.pas' {frmRelCentroCusto},
  uncCadContabil in 'uncCadContabil.pas' {frmCadContabil},
  Vcl.Themes,
  Vcl.Styles,
  untRelCentroCustoSeleciona in 'untRelCentroCustoSeleciona.pas' {frmCentroCustoSeleciona},
  untRelCentroCustoAnual in 'untRelCentroCustoAnual.pas' {frmCentroCustoAnual},
  untCadContas in 'untCadContas.pas' {frmCadConta},
  untRelSaldoBan in 'untRelSaldoBan.pas' {frmSaldoBancos},
  untCadEntidades in 'untCadEntidades.pas' {frmCadEntidades},
  untLocEntidades in 'untLocEntidades.pas' {frmLocalizaEntidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Controle Financeiro';
  Application.UpdateMetricSettings := False;
  Application.UpdateFormatSettings := False;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDMCEP, DMCEP);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmSelecionaEmpresa, frmSelecionaEmpresa);
  Application.CreateForm(TfrmRelExtratos, frmRelExtratos);
  Application.CreateForm(TfrmRelCentroCusto, frmRelCentroCusto);
  Application.CreateForm(TfrmCentroCustoSeleciona, frmCentroCustoSeleciona);
  Application.CreateForm(TfrmCentroCustoAnual, frmCentroCustoAnual);
  Application.CreateForm(TfrmSaldoBancos, frmSaldoBancos);
  if FrmLogin.ShowModal = mrOk then //Caso o retorno da tela seja Ok
    begin
      FreeAndNil(FrmLogin); //Libera o form de Login da memória
      Application.CreateForm(TfrmMain, frmMain); //Cria a janela main
      Application.Run; //Roda a aplicação
    end
  else
    begin
      Application.Terminate;
    end;
end.
