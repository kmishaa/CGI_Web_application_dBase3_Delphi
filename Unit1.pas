unit Unit1;

interface

uses
  SysUtils, Classes, HTTPApp, DBWeb, DB, DBTables;

type
  TWebModule1 = class(TWebModule)
    Table1: TTable;
    DataSetTableProducer1: TDataSetTableProducer;
  procedure WebModule1WebActionItem1Action(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModule1: TWebModule1;

implementation

{$R *.dfm}
procedure TwebModule1.WebModule1WebActionItem1Action(Sender: TObject;Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Table1.Active:=true;
  Response.Content := '<HTML> <HEAD> <TITLE> ЛР3 Красовицкий Михаил </TITLE>';
  Response.Content:=Response.Content+'</HEAD> <BODY> <h1><center style="color:green">Таблица: Products</center></h1>';
  Response.Content:=Response.Content+DataSetTableProducer1.Content;
  Response.Content:=Response.Content+ '</BODY> </HTML>';
  Table1.Active:=false;
end;
end.
