unit Unit_AddDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, sDBLookupComboBox, StdCtrls, Mask, sDBEdit, ImgList,
  acAlphaImageList, Buttons, sSpeedButton, sLabel, ExtCtrls, sPanel;

type
  TForm_AddDetail = class(TForm)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    sLabel10: TsLabel;
    sSpeedButton_Cancel: TsSpeedButton;
    sSpeedButton_OK: TsSpeedButton;
    sAlphaImageList_Small: TsAlphaImageList;
    sDBEdit_Name: TsDBEdit;
    sDBEdit_Kol: TsDBEdit;
    sDBEdit_Material: TsDBEdit;
    sDBEdit_Gabarit: TsDBEdit;
    sDBEdit_Ves: TsDBEdit;
    sDBEdit_BazEl: TsDBEdit;
    sDBEdit_MetBaz: TsDBEdit;
    sDBEdit_ElKrep: TsDBEdit;
    sDBEdit_KolElKrep: TsDBEdit;
    sDBLookupComboBox_Parts: TsDBLookupComboBox;
    sLabel11: TsLabel;
    sDBEdit_Code: TsDBEdit;
    sLabel12: TsLabel;
    sDBEdit_Nomer: TsDBEdit;
    sLabel13: TsLabel;
    sDBEdit1: TsDBEdit;
    sLabel14: TsLabel;
    sDBEdit2: TsDBEdit;
    sLabel15: TsLabel;
    sDBEdit3: TsDBEdit;
    sLabel16: TsLabel;
    sDBEdit4: TsDBEdit;
    sLabel17: TsLabel;
    procedure sSpeedButton_OKClick(Sender: TObject);
    procedure sSpeedButton_CancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_AddDetail: TForm_AddDetail;

implementation

uses Unit_Main;

{$R *.dfm}

procedure TForm_AddDetail.sSpeedButton_OKClick(Sender: TObject);
begin
  Form_Main.ADOTable2.Post;
  Form_AddDetail.Close;
end;

procedure TForm_AddDetail.sSpeedButton_CancelClick(Sender: TObject);
begin
  Form_Main.ADOTable2.Cancel;
  Form_AddDetail.Close;
end;

procedure TForm_AddDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_Main.ADOTable2.Cancel;
end;

end.
