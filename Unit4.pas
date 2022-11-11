unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TUrForm = class(TForm)
    btnZakritUR: TButton;
    DBGrid2URFORM: TDBGrid;
    DBNavigator2URFORM: TDBNavigator;
    btnDobavitZapis: TButton;
    btnUdalitZapis: TButton;
    procedure btnZakritURClick(Sender: TObject);
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
  UrForm: TUrForm;

implementation
 uses Unit1,Unit3;
{$R *.dfm}

procedure TUrForm.btnZakritURClick(Sender: TObject);
begin
Close;
MainForm.N4.Visible:=False;
end;



procedure TUrForm.FormActivate(Sender: TObject);
begin
  DBGrid2URFORM.SetFocus;
end;

procedure TUrForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TUrForm.btnDobavitZapisClick(Sender: TObject);
begin
   MainForm.IBTableUR.Append;
DBGrid2URFORM.SetFocus;
end;

procedure TUrForm.btnUdalitZapisClick(Sender: TObject);
begin
    if DBGrid2URFORM.DataSource.DataSet.RecordCount<>0 then
    begin
      if(MessageBox(Handle, 'Удаление записей может привести к нарушению базы данных.Продолжить?','Внимание',MB_YESNO)=IDYES)then
        MainForm.IBTableDoljnost.Delete;

    end
    else ShowMessage('Нет записей');
end;

end.
