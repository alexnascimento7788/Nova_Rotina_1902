unit Tela_Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    lb_1: TLabel;
    txt_Nfe: TEdit;
    txt_Nped: TEdit;
    lb_2: TLabel;
    lb_3: TLabel;
    lb_4: TLabel;
    txt_Usu: TEdit;
    txt_dt: TEdit;
    GroupBox1: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
