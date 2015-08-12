unit Unit_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sScrollBox, sFrameBar, StdCtrls, sLabel, ExtCtrls, sPanel,
  sSkinManager, sSkinProvider, ImgList, acAlphaImageList, DB, ADODB,
  sSplitter, GridsEh, DBGridEh, sButton, DBCtrls, Buttons, sSpeedButton, EhLibADO,
  sComboBox, ComObj;

type
  TForm_Main = class(TForm)
    sSkinProvider_Main: TsSkinProvider;
    sSkinManager_Main: TsSkinManager;
    sPanel_Top: TsPanel;
    sLabelFX1: TsLabelFX;
    sFrameBar_mMenu: TsFrameBar;
    sPanel_Parts: TsPanel;
    sPanel_Bottom: TsPanel;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sSplitter1: TsSplitter;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBImage1: TDBImage;
    sAlphaImageList1: TsAlphaImageList;
    sSpeedButton_Add: TsSpeedButton;
    sSpeedButton_Edit: TsSpeedButton;
    sSpeedButton_Delete: TsSpeedButton;
    sPanel3: TsPanel;
    Grid_Parts: TDBGridEh;
    sPanel_Details: TsPanel;
    sPanel_PartsTop: TsPanel;
    sSpeedButton_Report: TsSpeedButton;
    sPanel_DetailsTop: TsPanel;
    sComboBox_Parts: TsComboBox;
    sLabel1: TsLabel;
    sPanel_Details_Bottom: TsPanel;
    sPanel4: TsPanel;
    sPanel5: TsPanel;
    Grid_Details: TDBGridEh;
    sSpeedButton_AddDetail: TsSpeedButton;
    sSpeedButton_EditDetail: TsSpeedButton;
    sSpeedButton_DeleteDetail: TsSpeedButton;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    sPanel_Details2: TsPanel;
    sPanel7: TsPanel;
    sLabel2: TsLabel;
    sComboBox_Details2: TsComboBox;
    sPanel8: TsPanel;
    sSpeedButton_AddDetail2: TsSpeedButton;
    sSpeedButton_EditDetail2: TsSpeedButton;
    sSpeedButton_DelDetail2: TsSpeedButton;
    sPanel9: TsPanel;
    sPanel10: TsPanel;
    Grid_Details2: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton_AddClick(Sender: TObject);
    procedure sSpeedButton_EditClick(Sender: TObject);
    procedure sSpeedButton_DeleteClick(Sender: TObject);
    procedure sFrameBar_mMenuItems0Click(Sender: TObject);
    procedure sFrameBar_mMenuItems1Click(Sender: TObject);
    procedure sFrameBar_mMenuItems0CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure sFrameBar_mMenuItems1CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure sComboBox_PartsChange(Sender: TObject);
    procedure sSpeedButton_AddDetailClick(Sender: TObject);
    procedure sSpeedButton_EditDetailClick(Sender: TObject);
    procedure RefreshParts(Sender: TObject);
    procedure sSpeedButton_DeleteDetailClick(Sender: TObject);
    procedure sSpeedButton_ReportClick(Sender: TObject);
    procedure sComboBox_Details2Change(Sender: TObject);
    procedure sSpeedButton_AddDetail2Click(Sender: TObject);
    procedure sSpeedButton_EditDetail2Click(Sender: TObject);
    procedure sSpeedButton_DelDetail2Click(Sender: TObject);
    procedure sFrameBar_mMenuItems2Click(Sender: TObject);
    procedure sFrameBar_mMenuItems2CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Main: TForm_Main;
  mode, p_path, st: string;
  ExcelApp, Workbook, Range, Cell1, Cell2, ArrayData,emp_otr,emp_norm  : Variant;

implementation

uses Unit_AddPart, Unit_FrameParts, Unit_FrameDetails, Unit_Splash, Unit_AddDetail,
     Unit_FrameDetails2, Unit_AddDetail2;

{$R *.dfm}

procedure TForm_Main.FormCreate(Sender: TObject);
begin
  p_path := ExtractFilePath(Application.ExeName);
  st := 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+p_path+'\data.mdb;'+
    'Mode=ReadWrite;Extended Properties="";Jet OLEDB:System database="";'+
    'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;'+
    'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
    'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
    'Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
  ADOConnection1.ConnectionString := st;
  ADOConnection1.Connected := true;
  ADOTable1.Active := true;
  ADOTable2.Active := true;
  ADOTable3.Active := true;

  Grid_Parts.FixedColor:=$FEF9EA;
  Grid_Parts.EvenRowColor:=$F2EFEF;
  Grid_Parts.FooterColor:=$FEF9EA;
  Grid_Details.FixedColor:=$FEF9EA;
  Grid_Details.EvenRowColor:=$F2EFEF;
  Grid_Details.FooterColor:=$FEF9EA;
  Grid_Details2.FixedColor:=$FEF9EA;
  Grid_Details2.EvenRowColor:=$F2EFEF;
  Grid_Details2.FooterColor:=$FEF9EA;
  RefreshParts(Sender);
  sFrameBar_mMenuItems0Click(Sender);
  sFrameBar_mMenu.OpenItem(0,true);
  Form_Splash := TForm_Splash.Create(Application);
  try
    Form_Splash.ShowModal;
  finally
    Form_Splash.Free;
    Form_Splash := nil;
  end;
end;

procedure TForm_Main.sSpeedButton_AddClick(Sender: TObject);
begin
  mode := 'add';
  ADOTable1.Append;
  Form_AddPart := TForm_AddPart.Create(Application);
  Form_AddPart.Caption := 'Добавить новую часть';
  try
    Form_AddPart.ShowModal;
  finally
    Form_AddPart.Free;
    Form_AddPart := nil;
  end;
end;

procedure TForm_Main.sSpeedButton_EditClick(Sender: TObject);
begin
  if ADOTable1.RecordCount > 0 then
  begin
    mode := 'edit';
    Form_AddPart := TForm_AddPart.Create(Application);
    Form_AddPart.Caption := 'Изменить '+ADOTable1.FieldByName('P_Name').AsString;
    ADOTable1.Edit;
    try
      Form_AddPart.ShowModal;
    finally
      Form_AddPart.Free;
      Form_AddPart := nil;
    end;
  end;
end;

procedure TForm_Main.sSpeedButton_DeleteClick(Sender: TObject);
begin
  if ADOTable1.RecordCount > 0 then
  begin
    if MessageDlg('Действительно хотите удалить '+ADOTable1.FieldByName('P_Name').AsString+'?',mtConfirmation,[mbYes,mbNo],1)=mrYes then
    begin
      ADOTable1.Delete;
      RefreshParts(Sender);
    end;
  end;
end;

procedure TForm_Main.sFrameBar_mMenuItems0Click(Sender: TObject);
begin
  sPanel_Parts.BringToFront;
end;

procedure TForm_Main.sFrameBar_mMenuItems1Click(Sender: TObject);
begin
  sPanel_Details.BringToFront;
end;

procedure TForm_Main.sFrameBar_mMenuItems0CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame := TFrame_Parts.Create(nil);
end;

procedure TForm_Main.sFrameBar_mMenuItems1CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame := TFrame_Details.Create(nil);
end;

procedure TForm_Main.sComboBox_PartsChange(Sender: TObject);
begin
  ADOTable2.Filtered := false;
  ADOTable2.Filter := 'Part_id='+IntToStr(integer(sComboBox_Parts.Items.Objects[sComboBox_Parts.ItemIndex]));
  ADOTable2.Filtered := true;
end;

procedure TForm_Main.sSpeedButton_AddDetailClick(Sender: TObject);
begin
  ADOTable2.Append;
  Form_AddDetail := TForm_AddDetail.Create(Application);
  Form_AddDetail.Caption := 'Добавить новую деталь к '+sComboBox_Parts.Text;
  try
    Form_AddDetail.ShowModal;
  finally
    Form_AddDetail.Free;
    Form_AddDetail := nil;
  end;
end;

procedure TForm_Main.sSpeedButton_EditDetailClick(Sender: TObject);
begin
  if ADOTable2.RecordCount > 0 then
  begin
    Form_AddDetail := TForm_AddDetail.Create(Application);
    Form_AddDetail.Caption := 'Изменить '+ADOTable2.FieldByName('D_Name').AsString;
    ADOTable2.Edit;
    try
      Form_AddDetail.ShowModal;
    finally
      Form_AddDetail.Free;
      Form_AddDetail := nil;
    end;
  end;
end;

procedure TForm_Main.RefreshParts(Sender: TObject);
var rec, ind: integer;
begin
  with Form_Main.ADOTable1 do
  begin
    rec:=RecNo;
    First;
    Form_Main.sComboBox_Parts.Items.Clear;
    while not Eof do
    begin
      Form_Main.sComboBox_Parts.Items.AddObject(FieldByName('P_Name').AsString,TObject(FieldByName('ID_P').AsInteger));
      Form_Main.sComboBox_Details2.Items.AddObject(FieldByName('P_Name').AsString,TObject(FieldByName('ID_P').AsInteger));
      Next;
    end;
    RecNo:=rec;
  end;
  Form_Main.sComboBox_Parts.ItemIndex := 0;
  Form_Main.sComboBox_Details2.ItemIndex := 0;
  Form_Main.sComboBox_PartsChange(Sender);
  Form_Main.sComboBox_Details2Change(Sender);
end;

procedure TForm_Main.sSpeedButton_DeleteDetailClick(Sender: TObject);
begin
  if ADOTable2.RecordCount > 0 then
  begin
    if MessageDlg('Действительно хотите удалить '+ADOTable2.FieldByName('D_Name').AsString+'?',mtConfirmation,[mbYes,mbNo],1)=mrYes then
      ADOTable2.Delete;
  end;
end;

procedure TForm_Main.sSpeedButton_ReportClick(Sender: TObject);
var
  i, j, kol: integer;
begin
  i:=5; j:=1;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Application.EnableEvents := false;
  Workbook := ExcelApp.WorkBooks.Add(p_path + '\techcard.xls');
  WorkBook.WorkSheets[1].Cells[1,1]:='Технологическая карта сборки  '+ADOTable1.FieldByName('P_Name').AsString;
  with ADOQuery1 do
  begin
    st := 'Select * from Details Where Part_id='+ADOTable1.FieldByName('ID_P').AsString;
    Close;
    SQL.Clear;
    SQL.Add(st);
    Open;
    First;
    while not Eof do
    begin

      Cell1:=WorkBook.WorkSheets[1].Cells[i,1];
      Cell2:=WorkBook.WorkSheets[1].Cells[i,15];
      Range := WorkBook.WorkSheets[1].Range[Cell1, Cell2];
      Range.Verticalalignment:=2;
      Range.Borders.LineStyle:=1;
      WorkBook.WorkSheets[1].Rows[i].RowHeight:=60;

      st := 'Взять '+FieldByName('D_Name').AsString+' № '+FieldByName('Nomer').AsString+' в кол-ве 1 шт., перенести и установить на '+
        FieldByName('Baz_Elem').AsString+' по '+FieldByName('Met_Baz').AsString+', скрепить '+
        FieldByName('El_Krep').AsString+' в кол-ве '+FieldByName('Kol_El_Krep').AsString+' шт.';

      WorkBook.WorkSheets[1].Cells[i,1].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,3].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,4].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,5].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,6].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,7].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,10].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,11].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,1] := IntToStr(i-4);
      WorkBook.WorkSheets[1].Cells[i,3] := st;
      WorkBook.WorkSheets[1].Cells[i,4] := FieldByName('Naim_Obor').AsString;
      WorkBook.WorkSheets[1].Cells[i,5] := FieldByName('Shifr').AsString;
      WorkBook.WorkSheets[1].Cells[i,6] := FieldByName('Material').AsString;
      WorkBook.WorkSheets[1].Cells[i,7] := FieldByName('Gabarit').AsString;
      WorkBook.WorkSheets[1].Cells[i,10] := FieldByName('Udob').AsString;
      WorkBook.WorkSheets[1].Cells[i,11] := FieldByName('Kol_Rab').AsString;

      kol:=FieldByName('Kol').AsInteger;
      if kol>1 then
      begin
        i:=i+1;
        Cell1:=WorkBook.WorkSheets[1].Cells[i,1];
        Cell2:=WorkBook.WorkSheets[1].Cells[i,2];
        Range := WorkBook.WorkSheets[1].Range[Cell1, Cell2];
        Range.Verticalalignment:=2;
        Range.Borders.LineStyle:=1;
        WorkBook.WorkSheets[1].Cells[i,1]:= IntToStr(i-4);

        Cell1:=WorkBook.WorkSheets[1].Cells[i,3];
        Cell2:=WorkBook.WorkSheets[1].Cells[i,15];
        Range := WorkBook.WorkSheets[1].Range[Cell1, Cell2];
        Range.Interior.Color := clMedGray;
        Range.MergeCells:=True;
        Range.HorizontalAlignment:=2;
        WorkBook.WorkSheets[1].Cells[i,3]:='Повторить операцию №'+IntToStr(j)+' ещё '+IntToStr(kol-1)+' раз';
      end;

      i:=i+1;
      j:=j+1;
      Next;
    end;

    st := 'Select * from Details2 Where Part_id='+ADOTable1.FieldByName('ID_P').AsString;
    Close;
    SQL.Clear;
    SQL.Add(st);
    Open;
    First;
    while not Eof do
    begin
      j:=j+1;
      Cell1:=WorkBook.WorkSheets[1].Cells[i,1];
      Cell2:=WorkBook.WorkSheets[1].Cells[i,15];
      Range := WorkBook.WorkSheets[1].Range[Cell1, Cell2];
      Range.Borders.LineStyle:=1;
      Range.Verticalalignment:=2;
      WorkBook.WorkSheets[1].Rows[i].RowHeight:=40;

      Cell1:=WorkBook.WorkSheets[1].Cells[i+RecordCount,1];
      Cell2:=WorkBook.WorkSheets[1].Cells[i+RecordCount,15];
      Range := WorkBook.WorkSheets[1].Range[Cell1, Cell2];
      Range.Borders.LineStyle:=1;
      Range.Verticalalignment:=2;
      WorkBook.WorkSheets[1].Rows[i+RecordCount].RowHeight:=40;

      WorkBook.WorkSheets[1].Cells[i,1] := IntToStr(j);
      WorkBook.WorkSheets[1].Cells[i,3].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,3] := 'Сверлить отверстия диаметром '+ FloatToStr(FieldByName('Diametr').AsInteger+0.1)+
        ' в деталях '+FieldByName('Soedin').AsString+' по '+FieldByName('Baza_Sver').AsString+' в '+FieldByName('Baza_Detal').AsString;

      WorkBook.WorkSheets[1].Cells[i+RecordCount,1] := IntToStr(j+RecordCount);
      WorkBook.WorkSheets[1].Cells[i+RecordCount,3].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i+RecordCount,3] := 'Клепать детали '+FieldByName('Soedin').AsString+' заклепками '+ FieldByName('Material').AsString+
        '-'+FieldByName('Sh_tip').AsString+'-'+FieldByName('Diametr').AsString+'-'+FieldByName('Dlina').AsString;

      WorkBook.WorkSheets[1].Cells[i,4].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i,4] := FieldByName('Tip_Sver').AsString;
      WorkBook.WorkSheets[1].Cells[i,8] := FieldByName('Tolsh').AsString;
      WorkBook.WorkSheets[1].Cells[i,10] := 'У';
      WorkBook.WorkSheets[1].Cells[i,11] := '2';

      WorkBook.WorkSheets[1].Cells[i+RecordCount,4].WrapText := true;
      WorkBook.WorkSheets[1].Cells[i+RecordCount,4] := FieldByName('Tip_Klep').AsString;
      WorkBook.WorkSheets[1].Cells[i+RecordCount,8] := FieldByName('Tolsh').AsString;
      WorkBook.WorkSheets[1].Cells[i+RecordCount,10] := 'У';
      WorkBook.WorkSheets[1].Cells[i+RecordCount,11] := '2';
      i:=i+1;
      Next;
    end;

  end;
  ExcelApp.Visible := true;
  ExcelApp:=Unassigned;
end;

procedure TForm_Main.sComboBox_Details2Change(Sender: TObject);
begin
  ADOTable3.Filtered := false;
  ADOTable3.Filter := 'Part_id='+IntToStr(integer(sComboBox_Details2.Items.Objects[sComboBox_Details2.ItemIndex]));
  ADOTable3.Filtered := true;
end;

procedure TForm_Main.sSpeedButton_AddDetail2Click(Sender: TObject);
begin
  ADOTable3.Append;
  Form_AddDetail2 := TForm_AddDetail2.Create(Application);
  Form_AddDetail2.Caption := 'Добавить новый ТЗС к '+sComboBox_Details2.Text;
  try
    Form_AddDetail2.ShowModal;
  finally
    Form_AddDetail2.Free;
    Form_AddDetail2 := nil;
  end;
end;

procedure TForm_Main.sSpeedButton_EditDetail2Click(Sender: TObject);
begin
  if ADOTable3.RecordCount > 0 then
  begin
    Form_AddDetail2 := TForm_AddDetail2.Create(Application);
    Form_AddDetail2.Caption := 'Изменить '+ADOTable3.FieldByName('Tip_Zak').AsString;
    ADOTable3.Edit;
    try
      Form_AddDetail2.ShowModal;
    finally
      Form_AddDetail2.Free;
      Form_AddDetail2 := nil;
    end;
  end;
end;

procedure TForm_Main.sSpeedButton_DelDetail2Click(Sender: TObject);
begin
  if ADOTable3.RecordCount > 0 then
  begin
    if MessageDlg('Действительно хотите удалить '+ADOTable3.FieldByName('Tip_Zak').AsString+'?',mtConfirmation,[mbYes,mbNo],1)=mrYes then
      ADOTable3.Delete;
  end;
end;

procedure TForm_Main.sFrameBar_mMenuItems2Click(Sender: TObject);
begin
  sPanel_Details2.BringToFront;
end;

procedure TForm_Main.sFrameBar_mMenuItems2CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame := TFrame_Details2.Create(nil);
end;

end.
