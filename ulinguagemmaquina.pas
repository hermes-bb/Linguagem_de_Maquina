unit uLinguagemMaquina;

{$mode objfpc}{$H+}

interface

uses
 Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
 ExtCtrls, ComCtrls, rxswitch, strutils;

type

 { TForm1 }

 TForm1 = class(TForm)
   BtnConverter: TButton;
   Button2: TButton;
   Button3: TButton;
   Button4: TButton;
   Edit1: TEdit;
   Edit2: TEdit;
   EdtCaracter: TEdit;
   EdtCaracter1: TEdit;
   EdtCaracter2: TEdit;
   EdtPalavra8Bit: TEdit;
   EdtPalavraHexa: TEdit;
   Edt_bit_0: TEdit;
   Edt_bit_1: TEdit;
   Edt_bit_9: TEdit;
   Edt_bit_2: TEdit;
   Edt_bit_3: TEdit;
   Edt_bit_4: TEdit;
   Edt_bit_5: TEdit;
   Edt_bit_6: TEdit;
   Edt_bit_7: TEdit;
   Edt_bit_8: TEdit;
   Edt_bit_10: TEdit;
   Label1: TLabel;
   Label10: TLabel;
   Label11: TLabel;
   Label12: TLabel;
   Label13: TLabel;
   Label14: TLabel;
   Label2: TLabel;
   Lbl_bit_0: TLabel;
   Lbl_bit_1: TLabel;
   Lbl_bit_9: TLabel;
   Lbl_bit_2: TLabel;
   Lbl_bit_3: TLabel;
   Lbl_bit_4: TLabel;
   Lbl_bit_5: TLabel;
   Lbl_bit_6: TLabel;
   Lbl_bit_7: TLabel;
   Lbl_bit_8: TLabel;
   Lbl_bit_10: TLabel;
   Memo1: TMemo;
   PageControl1: TPageControl;
   Panel1: TPanel;
   Panel10: TPanel;
   Panel11: TPanel;
   Panel12: TPanel;
   Panel13: TPanel;
   Panel2: TPanel;
   Panel21: TPanel;
   Panel22: TPanel;
   Panel3: TPanel;
   Panel4: TPanel;
   Panel5: TPanel;
   Panel6: TPanel;
   Panel7: TPanel;
   Panel8: TPanel;
   Panel9: TPanel;
   RxSw_bit_0: TRxSwitch;
   RxSw_bit_1: TRxSwitch;
   RxSw_bit_9: TRxSwitch;
   RxSw_bit_2: TRxSwitch;
   RxSw_bit_3: TRxSwitch;
   RxSw_bit_4: TRxSwitch;
   RxSw_bit_5: TRxSwitch;
   RxSw_bit_6: TRxSwitch;
   RxSw_bit_7: TRxSwitch;
   RxSw_bit_8: TRxSwitch;
   RxSw_bit_10: TRxSwitch;
   ScrollBox1: TScrollBox;
   Shape1: TShape;
   Shape10: TShape;
   Shape9: TShape;
   StringGrid1: TStringGrid;
   StringGrid2: TStringGrid;
   StringGrid3: TStringGrid;
   StringGrid4: TStringGrid;
   TabSheet1: TTabSheet;
   TabSheet2: TTabSheet;
   TabSheet3: TTabSheet;
   TabSheet4: TTabSheet;
   procedure BtnConverterClick(Sender: TObject);
   procedure Button2Click(Sender: TObject);
   procedure Button3Click(Sender: TObject);
   procedure Button4Click(Sender: TObject);
   procedure RxSw_bit_0Click(Sender: TObject);
   procedure RxSw_bit_0Off(Sender: TObject);
   procedure RxSw_bit_0On(Sender: TObject);
   procedure RxSw_bit_10Off(Sender: TObject);
   procedure RxSw_bit_10On(Sender: TObject);
   procedure RxSw_bit_9Click(Sender: TObject);
   procedure RxSw_bit_1Off(Sender: TObject);
   procedure RxSw_bit_1On(Sender: TObject);
   procedure RxSw_bit_2Off(Sender: TObject);
   procedure RxSw_bit_2On(Sender: TObject);
   procedure RxSw_bit_8Click(Sender: TObject);
   procedure RxSw_bit_8Off(Sender: TObject);
   procedure RxSw_bit_8On(Sender: TObject);
   procedure RxSw_bit_10Click(Sender: TObject);
   procedure RxSw_bit_9Off(Sender: TObject);
   procedure RxSw_bit_9On(Sender: TObject);
   procedure StringGrid1Click(Sender: TObject);
 private

 public

 end;

var
 Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.RxSw_bit_2Off(Sender: TObject);
begin
  Edt_bit_2.Text := '0';
end;

procedure TForm1.BtnConverterClick(Sender: TObject);
var
  // Variáveis do tipo inteiro
  tamanho, i: integer;

  // Variáveis do tipo String
  digito, palavra_8_b, palavra_16_b, palavra_32_b, palavra_64_b: String;

begin
  // Recebendo os valores dos bits para testar qual valor ASCII se refere
  palavra_8_b := Edt_bit_7.Text + Edt_bit_6.Text + Edt_bit_5.Text +
                 Edt_bit_4.Text + Edt_bit_3.Text + Edt_bit_2.Text +
                 Edt_bit_1.Text + Edt_bit_0.Text;

  //
  palavra_16_b := Edt_bit_7.Text + Edt_bit_6.Text + Edt_bit_5.Text +
                  Edt_bit_4.Text;
  //
  {
  palavra_16_b := Edt_bit_3.Text + Edt_bit_2.Text + Edt_bit_1.Text +
                  Edt_bit_0.Text;
  }
  //
  if (palavra_16_b = '0000') then
    palavra_16_b := '0'
  else
    if (palavra_16_b = '0001') then
      palavra_16_b := '1'
    else
      if (palavra_16_b = '0010') then
        palavra_16_b := '2'
      else
        if (palavra_16_b = '0011') then
          palavra_16_b := '3'
        else
          if (palavra_16_b = '0101') then
            palavra_16_b := '5'
          else
            if (palavra_16_b = '0110') then
              palavra_16_b := '6'
            else
              if (palavra_16_b = '0111') then
                palavra_16_b := '7'
              else
                if (palavra_16_b = '1000') then
                  palavra_16_b := '8'
                else
                  if (palavra_16_b = '1001') then
                    palavra_16_b := '9'
                  else
                    if (palavra_16_b = '1010') then
                      palavra_16_b := 'A'
                    else
                      if (palavra_16_b = '1011') then
                        palavra_16_b := 'B'
                      else
                        if (palavra_16_b = '1100') then
                          palavra_16_b := 'C'
                        else
                          if (palavra_16_b = '1101') then
                            palavra_16_b := 'D'
                          else
                            if (palavra_16_b = '1110') then
                              palavra_16_b := 'E'
                            else
                              if (palavra_16_b = '1111') then
                                palavra_16_b := 'F';

  //
  EdtPalavraHexa.Text := palavra_16_b;

  //
  //
  palavra_16_b := Edt_bit_3.Text + Edt_bit_2.Text + Edt_bit_1.Text +
                  Edt_bit_0.Text;

  //
  case AnsiIndexStr(UpperCase(palavra_16_b), ['0000',
                                              '0001',
                                              '0010',
                                              '0011',
                                              '0100',
                                              '0101',
                                              '0110',
                                              '0111',
                                              '1000',
                                              '1001',
                                              '1010',
                                              '1011',
                                              '1100',
                                              '1101',
                                              '1110',
                                              '1111']) of
    0 : palavra_16_b := ('0');
    1 : palavra_16_b := ('1');
    2 : palavra_16_b := ('2');
    3 : palavra_16_b := ('3');
    4 : palavra_16_b := ('4');
    5 : palavra_16_b := ('5');
    6 : palavra_16_b := ('6');
    7 : palavra_16_b := ('7');
    8 : palavra_16_b := ('8');
    9 : palavra_16_b := ('9');
    10: palavra_16_b := ('A');
    11: palavra_16_b := ('B');
    12: palavra_16_b := ('C');
    13: palavra_16_b := ('D');
    14: palavra_16_b := ('E');
    15: palavra_16_b := ('F');
  end;

  //
  EdtPalavraHexa.Text := EdtPalavraHexa.Text + ' ' + palavra_16_b;

  // Transferindo Palavra de 8 bits para a tela
  EdtPalavra8Bit.Text := copy(palavra_8_b,1,4) + ' ' + copy(palavra_8_b,5,4);

  // Teste para converter a palavra de 8 bits em caracter da tabela ASCII
  if (palavra_8_b = '00000000') then
    EdtCaracter.Text := '(nul)'
  else
    if (palavra_8_b = '00000001') then
      EdtCaracter.Text := '(soh)'
    else
      if (palavra_8_b = '00000010') then
        EdtCaracter.Text := '(stx)'
      else
        if (palavra_8_b = '00000011') then
          EdtCaracter.Text := '(etx)';


  // Voltando a palavra de 8 bits para valor nulo
  palavra_8_b := '';

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (Edt_bit_8.Text = '0') then
  begin
    EdtCaracter1.Text := 'D';
    Shape1.Brush.Color := clWhite;
  end else
  begin
    EdtCaracter1.Text := 'L';
    Shape1.Brush.Color := clYellow;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  tamanho, i: integer;
  digito: string;
begin
  Edit2.Text := '';
  tamanho := Length(Edit1.Text);
  //
  for i := 1 to tamanho do
  begin
    digito := copy(Edit1.Text,i,1);
    //
    if ('*' = digito) then
      digito := 'asterisco';
    //
    if ('!' = digito) then
      digito := 'ponto de exclamação';
    //
    //
    if ('@' = digito) then
      digito := 'arroba';
    //
    if ('#' = digito) then
      digito := 'cerquilha ou cardinal ou hashtag ou jogo da velha';
    //
    //
    if ('$' = digito) then
      digito := 'dólar';
    //
    Edit2.Text := Edit2.Text + digito;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  //
  if (Edt_bit_10.Text = '0') then
  begin
    EdtCaracter2.Text := 'D';
    Shape10.Brush.Color := clWhite;
  end else
  begin
    EdtCaracter2.Text := 'L';
    Shape10.Brush.Color := clYellow;
  end;

  //
  if (Edt_bit_9.Text = '0') then
  begin
    EdtCaracter2.Text := EdtCaracter2.Text + 'D';
    Shape9.Brush.Color := clWhite;
  end else
  begin
    EdtCaracter2.Text := EdtCaracter2.Text + 'L';
    Shape9.Brush.Color := clYellow;
  end;

end;

procedure TForm1.RxSw_bit_0Click(Sender: TObject);
begin
  BtnConverter.Click;
end;

procedure TForm1.RxSw_bit_0Off(Sender: TObject);
begin
  Edt_bit_0.Text := '0';
end;

procedure TForm1.RxSw_bit_0On(Sender: TObject);
begin
  Edt_bit_0.Text := '1';
end;

procedure TForm1.RxSw_bit_10Off(Sender: TObject);
begin
  Edt_bit_10.Text := '0';
end;

procedure TForm1.RxSw_bit_10On(Sender: TObject);
begin
  Edt_bit_10.Text := '1';
end;

procedure TForm1.RxSw_bit_9Click(Sender: TObject);
begin
  Button4.Click;
end;

procedure TForm1.RxSw_bit_1Off(Sender: TObject);
begin
  Edt_bit_1.Text := '0';
end;

procedure TForm1.RxSw_bit_1On(Sender: TObject);
begin
  Edt_bit_1.Text := '1';
end;

procedure TForm1.RxSw_bit_2On(Sender: TObject);
begin
  Edt_bit_2.Text := '1';
end;

procedure TForm1.RxSw_bit_8Click(Sender: TObject);
begin
   Button2.Click;
end;

procedure TForm1.RxSw_bit_8Off(Sender: TObject);
begin
  Edt_bit_8.Text := '0';
end;

procedure TForm1.RxSw_bit_8On(Sender: TObject);
begin
  Edt_bit_8.Text := '1';
end;

procedure TForm1.RxSw_bit_10Click(Sender: TObject);
begin
  Button4.Click;
end;

procedure TForm1.RxSw_bit_9Off(Sender: TObject);
begin
  Edt_bit_9.Text := '0';
end;

procedure TForm1.RxSw_bit_9On(Sender: TObject);
begin
  Edt_bit_9.Text := '1';
end;

procedure TForm1.StringGrid1Click(Sender: TObject);
begin
  ShowMessage('Cliquei na linha da tabela');
end;

end.

