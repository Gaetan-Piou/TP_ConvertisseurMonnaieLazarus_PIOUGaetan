unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  MaskEdit, Spin, ExtCtrls, Menus;

type

  { TConv_Monnaie }

  TConv_Monnaie = class(TForm)
    FSE_Saisie: TFloatSpinEdit;
    RDG_Choix: TRadioGroup;
    FSE_Resultat: TFloatSpinEdit;
    procedure RDG_ChoixClick(Sender: TObject);
    procedure FSE_SaisieChange(Sender: TObject);
  private

  public

  end;

var
  Conv_Monnaie: TConv_Monnaie;

implementation

{$R *.lfm}

{ TConv_Monnaie }

procedure TConv_Monnaie.FSE_SaisieChange(Sender: TObject);
var
  modificateur:DOUBLE;

begin
  IF RDG_Choix.ItemIndex=0 THEN
  begin
    modificateur:=1.14;
  end
  ELSE
  begin
    IF RDG_Choix.ItemIndex=1 THEN
    begin
      modificateur:=0.88;
    end
    ELSE
    begin
      IF RDG_Choix.ItemIndex=2 THEN
      begin
        modificateur:=126.76;
      end
      else
      begin
        modificateur:=0.0079;
      end;
    end;
  end;
  FSE_Resultat.Value:=FSE_Saisie.Value*modificateur;
end;

procedure TConv_Monnaie.RDG_ChoixClick(Sender: TObject);
begin
  SaisieChange(Sender);
end;


end.

