unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  MaskEdit, Spin, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Saisie: TFloatSpinEdit;
    Choix: TRadioGroup;
    Resultat: TFloatSpinEdit;
    procedure ChoixClick(Sender: TObject);
    procedure SaisieChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.SaisieChange(Sender: TObject);
var
  modificateur:DOUBLE;

begin
  IF Choix.ItemIndex=0 THEN
  begin
    modificateur:=1.14;
  end
  ELSE
  begin
    IF Choix.ItemIndex=1 THEN
    begin
      modificateur:=0.88;
    end
    ELSE
    begin
      IF Choix.ItemIndex=2 THEN
      begin
        modificateur:=126.76;
      end
      else
      begin
        modificateur:=0.0079;
      end;
    end;
  end;
  Resultat.Value:=Saisie.Value*modificateur;
end;

procedure TForm1.ChoixClick(Sender: TObject);
begin
  SaisieChange(Sender);
end;


end.

