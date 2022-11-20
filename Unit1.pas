unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, DB, IBCustomDataSet, IBTable, IBDatabase,
  IBQuery;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    MainDB: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBTableDoljnost: TIBTable;
    DataSourceFiz: TDataSource;
    IBTableFiz: TIBTable;
    IBTableUR: TIBTable;
    DataSourceUR: TDataSource;
    DataSourceSOTRUD: TDataSource;
    N4: TMenuItem;
    DataSourceDoljnosti: TDataSource;
    N5: TMenuItem;
    IBTableDoljnostID_DOLJ: TIntegerField;
    IBTableDoljnostNAME_DOLJ: TIBStringField;
    IBTableFizID_FIZ: TIntegerField;
    IBTableFizFIO: TIBStringField;
    IBTableFizDATE_BIRTH: TIBStringField;
    IBTableFizNUMBER_PERSONAL: TIBStringField;
    IBTableFizINN: TIBStringField;
    IBTableSotrud: TIBTable;
    IBTableSotrudID_SOTR: TIntegerField;
    IBTableSotrudIDUR: TIntegerField;
    IBTableSotrudIDFIZ: TIntegerField;
    IBTableSotrudIDDOLJ: TIntegerField;
    IBTableSotrudDATE_WORK_START: TIBStringField;
    IBTableSotrudDATE_WORK_END: TIBStringField;
    IBTableSotrudWORKPHONE_NUMBER: TIBStringField;
    IBTableURID_UR: TIntegerField;
    IBTableURNAME_L: TIBStringField;
    IBTableURNAME_S: TIBStringField;
    IBTableUROGRN: TIBStringField;
    IBTableURINN: TIBStringField;
    IBTableURKPP: TIBStringField;
    IBTableSotrudUR_NAME: TIBStringField;
    IBTableSotrudFIZ_NAME: TIBStringField;
    IBTableSotrudD_NAME: TIBStringField;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  f,i: Integer;//f - флаг запущена форма или нет

implementation
uses Unit2,Unit3,Unit4,Unit5,Unit6;
{$R *.dfm}

procedure TMainForm.N2Click(Sender: TObject);
begin
f:=0;
//проверка активности формы
  if ActiveMDIChild.Caption<>'Физические лица' then
    begin
      //если нет ищем в неактивных, если находим - показать
      for i:=0 to MainForm.MDIChildCount-1 do
        if MainForm.MDIChildren[i].Caption='Физические лица' then
          begin
            MDIChildren[i].Show;
            f:=1;
          end;
    end
    else f:=1;
    //если форма еще не создана - создать
    if f<>1 then TFizicForm.Create(Application);
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
  N4.Visible:=True;
  f:=0;
//проверка активности формы
  if ActiveMDIChild.Caption<>'Юридические лица' then
    begin
      //если нет ищем в неактивных, если находим - показать
      for i:=0 to MainForm.MDIChildCount-1 do
        if MainForm.MDIChildren[i].Caption='Юридические лица' then
          begin
            MDIChildren[i].Show;
            f:=1;
          end;
    end
    else f:=1;
    //если форма еще не создана - создать
    if f<>1 then TUrForm.Create(Application)
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
      f:=0;
//проверка активности формы
  if ActiveMDIChild.Caption<>'Сотрудники' then
    begin
      //если нет ищем в неактивных, если находим - показать
      for i:=0 to MainForm.MDIChildCount-1 do
        if MainForm.MDIChildren[i].Caption='Сотрудники' then
          begin
            MDIChildren[i].Show;
            f:=1;
          end;
    end
    else f:=1;
    //если форма еще не создана - создать
    if f<>1 then TSotrudForm.Create(Application)
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
       f:=0;
//проверка активности формы
  if ActiveMDIChild.Caption<>'Список должностей' then
    begin
      //если нет ищем в неактивных, если находим - показать
      for i:=0 to MainForm.MDIChildCount-1 do
        if MainForm.MDIChildren[i].Caption='Список должностей' then
          begin
            MDIChildren[i].Show;
            f:=1;
          end;
    end
    else f:=1;
    //если форма еще не создана - создать
    if f<>1 then TDoljnostiForm.Create(Application)
end;





end.
