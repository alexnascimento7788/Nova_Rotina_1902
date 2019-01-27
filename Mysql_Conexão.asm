unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.FMXUI.Wait, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  Data.DB, FireDAC.Comp.Client, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    txt_idade: TEdit;
    label4: TLabel;
    txt_permissao: TEdit;
    Label3: TLabel;
    txt_sobrenome: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    txt_nome: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    FDConnection1: TFDConnection;
    Driver: TFDPhysMySQLDriverLink;
    btn_novo: TButton;
    btn_cancelar: TButton;
    btn_salvar: TButton;
    btn_editar: TButton;
    btn_excluir: TButton;
    tb_usuarios: TFDTable;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure tb_usuariosBeforePost(DataSet: TDataSet);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }

      procedure carregardados;
      procedure habilitarTxt;
      procedure limparcampos;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_cancelarClick(Sender: TObject);
begin
     tb_usuarios.Cancel;
     carregardados;
end;

procedure TForm1.btn_editarClick(Sender: TObject);
begin

      tb_usuarios.edit;
      habilitarTxt;

end;

procedure TForm1.btn_excluirClick(Sender: TObject);

begin

             tb_usuarios.delete;
             ShowMessage('Usuário Excluido');
             limparcampos;

end;

procedure TForm1.btn_novoClick(Sender: TObject);
begin
      tb_usuarios.Insert;
      habilitarTxt;
      limparcampos;

end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
    tb_usuarios.Post;

    ShowMessage('Usuário Salvo');
    limparcampos;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    tb_usuarios.Prior;
    carregardados;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     tb_usuarios.Next;
     carregardados;
end;

procedure TForm1.carregardados;
begin
   txt_nome.Text := tb_usuarios.FieldByName('nome').Value;
   txt_sobrenome.Text := tb_usuarios.FieldByName('sobrenome').Value;
   txt_permissao.Text := tb_usuarios.FieldByName('permissao').Value;
   txt_idade.Text := tb_usuarios.FieldByName('idade').Value;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin


        FDConnection1.Params.Database := 'dbTeste';
        FDConnection1.Params.UserName := 'root';
        FDConnection1.Params.Password := '';


        Driver.VendorLib := GetCurrentDir+'\libmysql\libmySQL.dll';

        FDConnection1.Connected := true;
        tb_usuarios.TableName := 'usuarios';
        tb_usuarios.Active := true;

        carregardados;
end;

procedure TForm1.habilitarTxt;
begin
      txt_nome.Enabled := true;
      txt_sobrenome.Enabled := true;
      txt_permissao.Enabled := true;
      txt_idade.Enabled := true;

end;

procedure TForm1.limparcampos;
begin

     txt_nome.Text := '';
     txt_sobrenome.Text := '';
     txt_permissao.Text := '';
     txt_idade.Text := '';
end;

procedure TForm1.tb_usuariosBeforePost(DataSet: TDataSet);
begin

      tb_usuarios.FieldByName('nome').Value := txt_nome.Text;
      tb_usuarios.FieldByName('sobrenome').Value := txt_sobrenome.Text;
      tb_usuarios.FieldByName('permissao').Value := txt_permissao.Text;
      tb_usuarios.FieldByName('idade').Value := txt_idade.Text;
end;

end.