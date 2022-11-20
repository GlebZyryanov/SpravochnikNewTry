unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StdCtrls;

type
  TPageControlForm = class(TForm)
    PageControl1: TPageControl;
    tsFiz: TTabSheet;
    tsUr: TTabSheet;
    tsSOTRUD: TTabSheet;
    tsDolj: TTabSheet;
    DBGridFizPC: TDBGrid;
    DBNavigatorFizPC: TDBNavigator;
    DBGridUrPC: TDBGrid;
    DBNavigatorUrPC: TDBNavigator;
    DBGridSOTRUDPC: TDBGrid;
    DBNavigatorSOTRUDPC: TDBNavigator;
    DBGridDoljPC: TDBGrid;
    DBNavigatorDoljPC: TDBNavigator;
    ButtonView: TButton;
    CBTabUr: TDBLookupComboBox;
    ButtonCanselView: TButton;
    ButtonGoView: TButton;
    procedure ButtonViewClick(Sender: TObject);
    procedure ButtonCanselViewClick(Sender: TObject);
    procedure ButtonGoViewClick(Sender: TObject);
    procedure tsSOTRUDExit(Sender: TObject);
    procedure tsUrExit(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageControlForm: TPageControlForm;

implementation
uses Unit1;
{$R *.dfm}

procedure TPageControlForm.ButtonViewClick(Sender: TObject);
begin
ButtonCanselView.Visible:=True;
CBTabUr.Visible:=True;
ButtonGoView.Visible:=True;
end;

procedure TPageControlForm.ButtonCanselViewClick(Sender: TObject);
begin
CBTabUr.Visible:=False;
ButtonGoView.Visible:=False;
ButtonCanselView.Visible:=False;
end;

procedure TPageControlForm.ButtonGoViewClick(Sender: TObject);
var
  temp:Integer;
begin
  temp:=CBTabUr.KeyValue;
  MainForm.IBTableSotrud.Filter:= 'IDUR LIKE'+ #39 + '%' + IntToStr(temp)+'%'+#39;
  MainForm.IBTableSotrud.Filtered:=True;
  tsSOTRUD.Show;


end;

procedure TPageControlForm.tsSOTRUDExit(Sender: TObject);
begin
MainForm.IBTableSotrud.Filtered:=False;
end;

procedure TPageControlForm.tsUrExit(Sender: TObject);
begin
 CBTabUr.Visible:=False;
  ButtonGoView.Visible:=False;
  ButtonCanselView.Visible:=False;
end;



end.
