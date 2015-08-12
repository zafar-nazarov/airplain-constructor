program AirplainConstructor;

uses
  Forms,
  Unit_Main in 'Unit_Main.pas' {Form_Main},
  Unit_AddPart in 'Unit_AddPart.pas' {Form_AddPart},
  Unit_FrameParts in 'Unit_FrameParts.pas' {Frame_Parts: TFrame},
  Unit_FrameDetails in 'Unit_FrameDetails.pas' {Frame_Details: TFrame},
  Unit_Splash in 'Unit_Splash.pas' {Form_Splash},
  Unit_AddDetail in 'Unit_AddDetail.pas' {Form_AddDetail},
  Unit_FrameDetails2 in 'Unit_FrameDetails2.pas' {Frame_Details2: TFrame},
  Unit_AddDetail2 in 'Unit_AddDetail2.pas' {Form_AddDetail2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_Main, Form_Main);
  Application.CreateForm(TForm_AddDetail2, Form_AddDetail2);
  // Application.CreateForm(TForm_AddDetail, Form_AddDetail);
 // Application.CreateForm(TForm_AddPart, Form_AddPart);
 // Application.CreateForm(TForm_Splash, Form_Splash);
  Application.Run;
end.
