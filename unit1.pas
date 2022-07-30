unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TCalculadora }

  TCalculadora = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Primeiro: TLabel;
    Segundo: TLabel;
    Divisao: TRadioButton;
    Multiplicacao: TRadioButton;
    Soma: TRadioButton;
    Subtracao: TRadioButton;
    procedure DivisaoChange(Sender: TObject);
    procedure MultiplicacaoChange(Sender: TObject);
    procedure SomaChange(Sender: TObject);
    procedure SubtracaoChange(Sender: TObject);
  private

  public

  end;

var
  Calculadora: TCalculadora;

implementation

{$R *.lfm}

{ TCalculadora }

procedure TCalculadora.DivisaoChange(Sender: TObject);
var n1,n2,calculo:real;
begin
n1 := StrToFloat(Edit1.text);
n2 := StrToFloat(Edit2.text);
calculo := n1 / n2;
Edit3.text := FloatToStr(calculo);
end;

procedure TCalculadora.MultiplicacaoChange(Sender: TObject);
var n1,n2,calculo:real;
begin
n1 := StrToFloat(Edit1.text);
n2 := StrToFloat(Edit2.text);
calculo := n1 * n2;
Edit3.text := FloatToStr(calculo);
end;

procedure TCalculadora.SomaChange(Sender: TObject);
var
  n1,n2,calculo:real;
begin
n1 := StrToFloat(Edit1.text);
n2 := StrToFloat(Edit2.text);
calculo := n1 + n2;
Edit3.text := FloatToStr(calculo);
end;

procedure TCalculadora.SubtracaoChange(Sender: TObject);
var
  n1,n2,calculo:real;
begin
n1 := StrToFloat(Edit1.text);
n2 := StrToFloat(Edit2.text);
calculo := n1 - n2;
Edit3.text := FloatToStr(calculo);
end;

end.

