unit Unit_Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, Animate, GIFCtrl, ExtCtrls;

type
  TForm_Splash = class(TForm)
    RxGIFAnimator1: TRxGIFAnimator;
    sLabel1: TsLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Splash: TForm_Splash;

implementation

uses Unit_Main;

{$R *.dfm}

procedure TForm_Splash.Timer1Timer(Sender: TObject);
begin
  Form_Splash.Close;
end;

end.
