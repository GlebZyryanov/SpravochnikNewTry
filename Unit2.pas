unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TSotrudForm = class(TForm)
    DBGridSOTRUD: TDBGrid;
    CheckBoxFormSOTRUD: TCheckBox;
    EditFormSOTRUD: TEdit;
    DBNavigator1: TDBNavigator;
    btnZakrit: TButton;
    btnDobavitZapis: TButton;
    btnUdalitZapis: TButton;
    CB1: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure btnDobavitZapisClick(Sender: TObject);
    procedure btnUdalitZapisClick(Sender: TObject);
    procedure btnZakritClick(Sender: TObject);
    procedure CheckBoxFormSOTRUDClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
{   procedure Panel1Click(Sender: TObject);
    procedure EditFormSOTRUDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBoxFormSOTRUDClick(Sender: TObject);
    procedure DBGridSOTRUDCellClick(Column: TColumn);
    }
    
  private
    { Private declarations }
//    procedure FilterSOTRUD;
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
      if(MessageBox(Handle, '�������� ������� ����� �������� � ��������� ���� ������.����������?','��������',MB_YESNO)=IDYES)then
        MainForm.IBTableSotrud.Delete;

    end
    else ShowMessage('��� �������');
end;

procedure TSotrudForm.btnZakritClick(Sender: TObject);
begin
Close;
end;

{procedure TSotrudForm.FilterSOTRUD;
var
  strFilter:string; //������ �������
  fieldName:string;//��� ����
  fieldNumb:Integer;//����� ����
  fieldsString:Boolean;//���������� ��� �������� �� ���� ������
  i: Integer;//���������� ��� ������ ������ ��� �������������� ����
  tempReal:Real;//��������� ���������� ��� �������� ������
begin
   if (CheckBoxFormSOTRUD.Checked and (Length(EditFormSOTRUD.Text)>0))
    then //�������� �� ��������� � ������ ��� �������
   begin
    fieldName:=DBGridSOTRUD.SelectedField.FieldName;//�������� ��� ����
    fieldNumb:=MainForm.IBTableSotrud.FieldValues[fieldName].Index;//����� ����
    //�������� �� �����������
    if(MainForm.IBTableSotrud.Fields[fieldNumb].DataType in [String]) then
      fieldsString:=True;
      else
      begin
        fieldsString:=False;
        Val(EditFormSOTRUD.Text,tempReal,i);
        if i<>0 then
        begin
          MainForm.IBTableSotrud.Filtered:=False;
          Exit;
        end;
      end;

      //������ ������ ������������
      strFilter:=fieldName + '=';
      //�������� �������� �� ���� ������� � ������ ������ �������
      if fieldsString=True then
        strFilter:=strFilter+QuotedStr(EditFormSOTRUD.Text + '*')
        else
        strFilter:=strFilter+QuotedStr(EditFormSOTRUD.Text);
        MainForm.IBTableUR.Filtered:=False;
        MainForm.IBTableUR.Filter:=strFilter;
        MainForm.IBTableUR.Filtered:=True;
  end
  else
    MainForm.IBTableUR.Filtered:=False;
end;

procedure TSotrudForm.EditFormSOTRUDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
FilterSOTRUD;
end;

procedure TSotrudForm.CheckBoxFormSOTRUDClick(Sender: TObject);
begin
  FilterSOTRUD;
end;

procedure TSotrudForm.DBGridSOTRUDCellClick(Column: TColumn);
begin
FilterSOTRUD;
end;
}






procedure TSotrudForm.CheckBoxFormSOTRUDClick(Sender: TObject);
var
  t:Integer;
  temp:Integer;
begin
 MainForm.IBTableSotrud.Filtered:=False;

 //MainForm.IBTableSotrudur.KeyFields;
 //t:=MainForm.IBTableSotrudUR_NAME.KeyFields;
//MainForm.IBTableSotrud.Filter:='(DATE_WORK_START=''30.02.1998'')';//��� ���������
//MainForm.IBTableSotrud.Filter:='UR_NAME.KeyFields LIKE'+ #39 + '%' + EditFormSOTRUD.Text+'%'+#39;
//MainForm.IBQuerySotrud.Filter:='(UR_NAME=''INTEL'')';
temp:=CB1.KeyValue;
MainForm.IBTableSotrud.Filter:= 'IDUR LIKE'+ #39 + '%' + IntToStr(temp)+'%'+#39;
MainForm.IBTableSotrud.Filtered:=True;

end;

procedure TSotrudForm.Button1Click(Sender: TObject);
var
  temp:Integer;
begin
    temp:=CB1.KeyValue;
    ShowMessage(IntToStr(temp));
end;

procedure TSotrudForm.Button2Click(Sender: TObject);
begin
   MainForm.IBTableSotrud.Filtered:=False;
end;

end.
