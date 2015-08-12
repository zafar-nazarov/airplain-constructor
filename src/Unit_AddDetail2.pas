unit Unit_AddDetail2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sGroupBox, ImgList, acAlphaImageList, Buttons,
  sSpeedButton, DBCtrls, sDBLookupComboBox, Mask, sDBEdit, sLabel,
  ExtCtrls, sPanel;

type
  TForm_AddDetail2 = class(TForm)
    sPanel1: TsPanel;
    sLabel2: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    sLabel13: TsLabel;
    sDBEdit_Ves: TsDBEdit;
    sDBEdit_BazEl: TsDBEdit;
    sDBEdit_MetBaz: TsDBEdit;
    sDBEdit_ElKrep: TsDBEdit;
    sDBEdit_KolElKrep: TsDBEdit;
    sDBLookupComboBox_Parts: TsDBLookupComboBox;
    sDBEdit_Code: TsDBEdit;
    sDBEdit1: TsDBEdit;
    sSpeedButton_OK: TsSpeedButton;
    sSpeedButton_Cancel: TsSpeedButton;
    sAlphaImageList_Small: TsAlphaImageList;
    sGroupBox1: TsGroupBox;
    sLabel1: TsLabel;
    sDBEdit_Name: TsDBEdit;
    sDBEdit_Nomer: TsDBEdit;
    sLabel12: TsLabel;
    sLabel3: TsLabel;
    sDBEdit_Kol: TsDBEdit;
    sDBEdit_Material: TsDBEdit;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sDBEdit2: TsDBEdit;
    procedure sSpeedButton_OKClick(Sender: TObject);
    procedure sSpeedButton_CancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_AddDetail2: TForm_AddDetail2;

implementation

uses Unit_Main;

{$R *.dfm}

procedure TForm_AddDetail2.sSpeedButton_OKClick(Sender: TObject);
begin
  Form_Main.ADOTable3.Post;
  Form_AddDetail2.Close;
end;

procedure TForm_AddDetail2.sSpeedButton_CancelClick(Sender: TObject);
begin
  Form_Main.ADOTable3.Cancel;
  Form_AddDetail2.Close;
end;

procedure TForm_AddDetail2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_Main.ADOTable3.Cancel;
end;

end.
