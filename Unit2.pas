unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TSotrudForm = class(TForm)
    DBNavigator1: TDBNavigator;
    btnZakrit: TButton;
    btnDobavitZapis: TButton;
    btnUdalitZapis: TButton;
    DBGridSOTRUD: TDBGrid;
    procedure btnDobavitZapisClick(Sender: TObject);
    procedure btnUdalitZapisClick(Sender: TObject);
    procedure btnZakritClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SotrudForm: TSotrudForm;

implementation
uses Unit1,Unit3,Unit4;
{$R *.dfm}

procedure TSotrudForm.btnDobavitZapisClick(Sender: TObject);
begin
MainForm.IBTableSotrud.Append;
DBGridSOTRUD.SetFocus;
end;

procedure TSotrudForm.btnUdalitZapisClick(Sender: TObject);
begin
  if DBGridSOTRUD.DataSource.DataSet.RecordCount<>0 then
    begin
      if(MessageBox(Handle, 'Удаление записей может привести к нарушению базы данных.Продолжить?','Внимание',MB_YESNO)=IDYES)then
        MainForm.IBTableSotrud.Delete;

    end
    else ShowMessage('Нет записей');
end;

procedure TSotrudForm.btnZakritClick(Sender: TObject);
begin
Close;
end;

end.
