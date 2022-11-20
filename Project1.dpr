program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Unit3 in 'Unit3.pas' {FizicForm},
  Unit4 in 'Unit4.pas' {UrForm},
  Unit2 in 'Unit2.pas' {SotrudForm},
  Unit5 in 'Unit5.pas' {DoljnostiForm},
  Unit6 in 'Unit6.pas' {PageControlForm};

{$R *.res}


begin
  Application.Initialize;
  Application.CreateForm(TPageControlForm, PageControlForm);
  Application.CreateForm(TMainForm, MainForm);
  //Application.CreateForm(TSotrudForm, SotrudForm);

  Application.Run;
end.