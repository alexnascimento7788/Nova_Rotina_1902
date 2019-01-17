object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tela Inicial'
  ClientHeight = 508
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lb_2: TLabel
    Left = 189
    Top = 48
    Width = 73
    Height = 19
    Caption = 'Num. Ped.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_3: TLabel
    Left = 26
    Top = 113
    Width = 102
    Height = 19
    Caption = 'Resp. Abertura'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_4: TLabel
    Left = 189
    Top = 113
    Width = 96
    Height = 19
    Caption = 'Data Abertura'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_1: TLabel
    Left = 24
    Top = 48
    Width = 104
    Height = 19
    Caption = 'Num. Nota (F3)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 369
    Height = 185
    Caption = 'Consulta Nfe'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object txt_Nfe: TEdit
    Left = 24
    Top = 64
    Width = 145
    Height = 33
    TabOrder = 0
  end
  object txt_Nped: TEdit
    Left = 189
    Top = 64
    Width = 156
    Height = 33
    TabOrder = 1
  end
  object txt_Usu: TEdit
    Left = 26
    Top = 130
    Width = 143
    Height = 33
    Color = clInactiveCaption
    TabOrder = 2
  end
  object txt_dt: TEdit
    Left = 189
    Top = 130
    Width = 156
    Height = 33
    Color = clInactiveCaption
    TabOrder = 3
  end
end
