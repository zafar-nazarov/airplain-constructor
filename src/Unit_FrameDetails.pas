unit Unit_FrameDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel;

type
  TFrame_Details = class(TFrame)
    sWebLabel_Add: TsWebLabel;
    sWebLabel_Edit: TsWebLabel;
    sWebLabel_Delete: TsWebLabel;
    procedure sWebLabel_DeleteClick(Sender: TObject);
    procedure sWebLabel_AddClick(Sender: TObject);
    procedure sWebLabel_EditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses Unit_Main;

{$R *.dfm}

procedure TFrame_Details.sWebLabel_DeleteClick(Sender: TObject);
begin
  Form_Main.sSpeedButton_DeleteDetailClick(Sender);
end;

procedure TFrame_Details.sWebLabel_AddClick(Sender: TObject);
begin
  Form_Main.sSpeedButton_AddDetailClick(Sender);
end;

procedure TFrame_Details.sWebLabel_EditClick(Sender: TObject);
begin
  Form_Main.sSpeedButton_EditDetailClick(Sender);
end;

end.
