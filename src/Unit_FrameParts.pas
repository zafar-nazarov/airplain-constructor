unit Unit_FrameParts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel;

type
  TFrame_Parts = class(TFrame)
    sWebLabel_Add: TsWebLabel;
    sWebLabel_Edit: TsWebLabel;
    sWebLabel_Delete: TsWebLabel;
    procedure sWebLabel_AddClick(Sender: TObject);
    procedure sWebLabel_EditClick(Sender: TObject);
    procedure sWebLabel_DeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses Unit_Main;

{$R *.dfm}

procedure TFrame_Parts.sWebLabel_AddClick(Sender: TObject);
begin
  Form_Main.sSpeedButton_AddClick(Sender);
end;

procedure TFrame_Parts.sWebLabel_EditClick(Sender: TObject);
begin
  Form_Main.sSpeedButton_EditClick(Sender);
end;

procedure TFrame_Parts.sWebLabel_DeleteClick(Sender: TObject);
begin
  Form_Main.sSpeedButton_DeleteClick(Sender);
end;

end.
