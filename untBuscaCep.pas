unit untBuscaCep;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TDMCEP = class(TDataModule)
    RESTClientCEP: TRESTClient;
    RESTRequestCEP: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    tbmCep: TFDMemTable;
    tbmCepstatus: TWideStringField;
    tbmCepok: TWideStringField;
    tbmCepcode: TWideStringField;
    tbmCepstate: TWideStringField;
    tbmCepcity: TWideStringField;
    tbmCepdistrict: TWideStringField;
    tbmCepaddress: TWideStringField;
    tbmCepstatusText: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCEP: TDMCEP;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
