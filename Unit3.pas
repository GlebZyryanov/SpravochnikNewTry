unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFizicForm = class(TForm)
    DBGrid1: TDBGrid;
    btnZakritFiz: TButton;
    DBNavigator1: TDBNavigator;
    btnDobavitZapis: TButton;
    btnUdalitZapis: TButton;
    procedure btnZakritFizClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDobavitZapisClick(Sender: TObject);
    procedure btnUdalitZapisClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FizicForm: TFizicForm;

implementation
 uses Unit1,Unit2,Unit4;
{$R *.dfm}



procedure TFizicForm.btnZakritFizClick(Sender: TObject);
begin
//Закрыть форму
Close;
end;

procedure TFizicForm.FormActivate(Sender: TObject);
begin
//установка фокуса при активации формы
DBGrid1.SetFocus;
end;

procedure TFizicForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//закрытие формы
Action:=caFree;
end;

procedure TFizicForm.btnDobavitZapisClick(Sender: TObject);
begin
MainForm.IBTableFiz.Append;
DBGrid1.SetFocus
end;

procedure TFizicForm.btnUdalitZapisClick(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.RecordCount<>0 then
    begin
      if(MessageBox(Handle, 'Удаление записей может привести к нарушению базы данных.Продолжить?','Внимание',MB_YESNO)=IDYES)then
        MainForm.IBTableFiz.Delete;

    end
    else ShowMessage('Нет записей');
end;

end.
