unit untMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.AppEvnts;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    N1: TMenuItem;
    Empresas1: TMenuItem;
    ActionList: TActionList;
    cadEmpresa: TAction;
    BkgImage: TImage;
    StatusBar: TStatusBar;
    Timer: TTimer;
    cadUsuarios: TAction;
    Usurios1: TMenuItem;
    Image16: TImageList;
    Image48: TImageList;
    Image32: TImageList;
    cadPlanoContas: TAction;
    PlanodeContas1: TMenuItem;
    actSelEmp: TAction;
    ToolBar: TPanel;
    BitBtn1: TBitBtn;
    actMoviFinan: TAction;
    Operacional1: TMenuItem;
    MovimentoFinanceiro1: TMenuItem;
    BitBtn2: TBitBtn;
    ApplicationEvents: TApplicationEvents;
    actRelatorios: TAction;
    Relatrios1: TMenuItem;
    actCodigoContabil: TAction;
    Image: TImage;
    ProgFin32: TImageList;
    actCadEntidades: TAction;
    BitBtn3: TBitBtn;
    Relatorios1: TMenuItem;
    procedure cadEmpresaExecute(Sender: TObject);
    procedure cadUsuariosExecute(Sender: TObject);
    procedure cadPlanoContasExecute(Sender: TObject);
    procedure actSelEmpExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure actMoviFinanExecute(Sender: TObject);
    procedure actRelatoriosExecute(Sender: TObject);
    procedure actCodigoContabilExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCadEntidadesExecute(Sender: TObject);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses untCadEmpresas, untCadUsuarios, untLogin, untFuncoes, untContas, untDados,
  untSelEmpresa, untMovBan, untSelRelatorios, uncCadContabil, untCadEntidades;

procedure TfrmMain.actCadEntidadesExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadEntidades, frmCadEntidades);
  try
    begin
      frmCadEntidades.ShowModal;
    end;
  finally
     begin
       frmCadEntidades.Close;
     end;
  end;
end;

procedure TfrmMain.actCodigoContabilExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadContabil, frmCadContabil);
  try
    begin
      frmCadContabil.ShowModal;
    end;
  finally
     begin
       frmCadContabil.Close;
     end;
  end;
end;

procedure TfrmMain.actMoviFinanExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmMovimentacao, frmMovimentacao);
  try
    begin
      with DataModule1 do
        begin
        //  MovFin.Close;
         // MovFin.Open;
          if tbBanco.Active = False then
            begin
              tbBanco.Open;
            //  qryMovimento.Open;
              tbLanTotais.Open;
            end;
        end;
      frmMovimentacao.ShowModal;
    end;
  finally
     begin
       frmMovimentacao.Close;
     end;
  end;
end;

procedure TfrmMain.actRelatoriosExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmSelRelatorios, frmSelRelatorios);
  try
    frmSelRelatorios.ShowModal;
  finally
    frmSelRelatorios.Close;
  end;
end;

procedure TfrmMain.actSelEmpExecute(Sender: TObject);
begin
  if DataModule1.tbEMPRESA.RecordCount = 0 then
    begin
      ShowMessage('Não há empresas registradas, vamos cadastrar!');
      cadEmpresa.OnExecute(Sender);
    end
  else
    begin
      Application.CreateForm(TfrmSelecionaEmpresa, frmSelecionaEmpresa);
      try
        begin
          frmSelecionaEmpresa.ShowModal;
          StatusBar.Panels.Items[0].Text := 'Empresa: ' + UpperCase(frmSelecionaEmpresa.Razao);
        end;
      finally
         begin
           frmSelecionaEmpresa.Close;
         end;
      end;
    end;
end;

procedure TfrmMain.ApplicationEventsException(Sender: TObject; E: Exception);
var
  sCaminhoLogErros: string;
  ArquivoLog: TextFile;
begin
  sCaminhoLogErros := ExtractFilePath(Application.ExeName) +  'LogErros.txt';
  AssignFile(ArquivoLog, sCaminhoLogErros);

  // se o arquivo já existir, será aberto para modificação
  // caso contrário, o arquivo será criado
  if FileExists(sCaminhoLogErros) then
    Append(ArquivoLog)
  else
    Rewrite(ArquivoLog);
  WriteLn(ArquivoLog, 'Data: ' + DateTimeToStr(Now)); // escreve a data e hora
  WriteLn(ArquivoLog, 'Usuário: ' + StatusBar.Panels[1].Text);
  WriteLn(ArquivoLog, 'Mensagem: ' + e.Message); // escreve a mensagem
  WriteLn(ArquivoLog, EmptyStr); // pula uma linha
  CloseFile(ArquivoLog);
end;

procedure TfrmMain.cadEmpresaExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadastroEmpresas, frmCadastroEmpresas);
  try
    begin
      frmCadastroEmpresas.ShowModal;
    end;
  finally
     begin
       frmCadastroEmpresas.Close;
     end;
  end;
end;

procedure TfrmMain.cadPlanoContasExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmContas, frmContas);
  try
    begin
      frmContas.ShowModal;
    end;
  finally
     begin
       frmContas.Close;
     end;
  end;
end;

procedure TfrmMain.cadUsuariosExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadUsuarios, frmCadUsuarios);
  try
    begin
      frmCadUsuarios.ShowModal;
    end;
  finally
     begin
       frmCadUsuarios.Close;
     end;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  actSelEmp.OnExecute(Sender);
end;

procedure TfrmMain.TimerTimer(Sender: TObject);
begin
  StatusBar.Panels.Items[2].Text := FormatDateTime('dddd, dd "de" mmmm "de" yyyyy', Now);
end;

end.
