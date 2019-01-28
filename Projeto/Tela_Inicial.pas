unit Tela_Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  VCLTee.TeCanvas, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.Oracle, FireDAC.Phys.OracleDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    gpx_1: TGroupBox;
    lb_5: TLabel;
    gpx_2: TGroupBox;
    lb_6: TLabel;
    lb_7: TLabel;
    lb_8: TLabel;
    lb_9: TLabel;
    lb_10: TLabel;
    lb_11: TLabel;
    lb_12: TLabel;
    lb_13: TLabel;
    txt_nprot: TEdit;
    txt_codcli: TEdit;
    txt_cliente: TEdit;
    cbx_filial: TComboBox;
    txt_assunto: TEdit;
    txt_codmotivo: TEdit;
    txt_motivo: TEdit;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    txt_codtransp: TEdit;
    txt_transp: TEdit;
    txt_codmot: TEdit;
    txt_mot: TEdit;
    txt_usur: TEdit;
    txt_codusur: TEdit;
    btn_inserir: TButton;
    btn_apagar: TButton;
    ListBox1: TListBox;
    lb_14: TLabel;
    btn_gerar: TButton;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    btn_pesquisar: TButton;
    procedure btn_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_pesquisarClick(Sender: TObject);
begin
      FDQuery1.Close;
      FDQuery1.SQL.Clear;
      FDQuery1.SQL.Add('select p.numped,p.codcli,p.numnota,n.codmotorista,p.codusur,nf.codfornecfrete,p.numcar');
      FDQuery1.SQL.Add('from pcpedc p,pccarreg n,pcnfsaid nf');
      FDQuery1.SQL.Add('where P.numcar = N.numcar');
      FDQuery1.SQL.Add('and p.numnota = nf.numnota');
      FDQuery1.SQL.Add('and p.numnota = :numnota');
      FDQuery1.ParamByName('numnota').AsInteger := strtoint(txt_Nfe.Text);
      FDQuery1.Open();
      FDQuery1.Params.Clear;
      txt_Nped.Text := FDQuery1.FieldByName('numped').AsString;
      txt_codcli.Text := FDQuery1.FieldByName('codcli').AsString;
      txt_codmot.Text := FDQuery1.FieldByName('codmotorista').AsString;

end;

end.
