unit Unit_AddPart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, acAlphaImageList, ExtCtrls, sPanel, StdCtrls, sMemo,
  sEdit, sLabel, Buttons, sSpeedButton, ExtDlgs, sButton, DBCtrls, sDBMemo,
  Mask, sDBEdit;

type
  TForm_AddPart = class(TForm)
    sPanel1: TsPanel;
    sAlphaImageList_Small: TsAlphaImageList;
    sSpeedButton_Cancel: TsSpeedButton;
    sSpeedButton_OK: TsSpeedButton;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sButton1: TsButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Shape1: TShape;
    sDBEdit_Name: TsDBEdit;
    sDBMemo_Desc: TsDBMemo;
    DBImage1: TDBImage;
    procedure sButton1Click(Sender: TObject);
    procedure sSpeedButton_OKClick(Sender: TObject);
    procedure sSpeedButton_CancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_AddPart: TForm_AddPart;

implementation

uses Unit_Main;

{$R *.dfm}

procedure TForm_AddPart.sButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TForm_AddPart.sSpeedButton_OKClick(Sender: TObject);
begin
  Form_Main.ADOTable1.Post;
  Form_AddPart.Close;
  Form_Main.RefreshParts(Sender);
end;

procedure TForm_AddPart.sSpeedButton_CancelClick(Sender: TObject);
begin
  Form_Main.ADOTable1.Cancel;
  Form_AddPart.Close;
end;

procedure TForm_AddPart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_Main.ADOTable1.Cancel;
end;

end.
