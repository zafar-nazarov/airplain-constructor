unit Unit_FrameDetails2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, sLabel;

type
  TFrame_Details2 = class(TFrame)
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

procedure TFrame_Details2.sWebLabel_AddClick(Sender: TObject);
begin
  Form_Main.sSpeedButton_AddDetail2Click(Sender);
end;

procedure TFrame_Details2.sWebLabel_EditClick(Sender: TObject);
begin
  Form_Main.sSpeedButton_EditDetail2Click(Sender);
end;

procedure TFrame_Details2.sWebLabel_DeleteClick(Sender: TObject);
begin
  Form_Main.sSpeedButton_DelDetail2Click(Sender);
end;

end.
