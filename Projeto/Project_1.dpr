program Project_1;

uses
  Vcl.Forms,
  Tela_Inicial in 'Tela_Inicial.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
