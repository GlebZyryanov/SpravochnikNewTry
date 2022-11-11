unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TDoljnostiForm = class(TForm)
    DBGridFormDolj: TDBGrid;
    btnZakrit: TButton;
    btnDobavitZapis: TButton;
    btnUdalitZapis: TButton;
    procedure btnZakritClick(Sender: TObject);
    procedure btnDobavitZapisClick(Sender: TObject);
    procedure btnUdalitZapisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DoljnostiForm: TDoljnostiForm;

implementation
  uses Unit1,Unit2,Unit3,Unit4;
{$R *.dfm}

procedure TDoljnostiForm.btnZakritClick(Sender: TObject);
begin
  Close;
end;

procedure TDoljnostiForm.btnDobavitZapisClick(Sender: TObject);
begin
  MainForm.IBTableDoljnost.Append;
DBGridFormDolj.SetFocus;
end;

procedure TDoljnostiForm.btnUdalitZapisClick(Sender: TObject);
begin
if DBGridFormDolj.DataSource.DataSet.RecordCount<>0 then
    begin
      if(MessageBox(Handle, 'Удаление записей может привести к нарушению базы данных.Продолжить?','Внимание',MB_YESNO)=IDYES)then
        MainForm.IBTableDoljnost.Delete;

    end
    else ShowMessage('Нет записей');
end;

end.
