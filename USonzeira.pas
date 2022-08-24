unit USonzeira;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, OleCtrls, AMovie_TLB, ComCtrls, ExtCtrls, Gauges,
  MPlayer, DBCtrls, QuickRpt, Qrctrls, jpeg, Elihint, GradBtn, Explform,
  DrLabel, TrayIcon, Db, DBTables, Menus, ShellAPI ;

const
  WM_MYMESSAGE = WM_USER+100;

type
  TForm1 = class(TForm)
    AM1: TActiveMovie;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Porcentagem: TGauge;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    TAumenta: TTimer;
    TDiminui: TTimer;
    TInterrompe: TTimer;
    Panel2: TPanel;
    Label8: TLabel;
    TNomeMusica: TTimer;
    BAbrir: TSpeedButton;
    BAbrir1: TSpeedButton;
    BParar: TSpeedButton;
    BParar1: TSpeedButton;
    BTocar: TSpeedButton;
    BTocar1: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton41: TSpeedButton;
    BInterrompe: TSpeedButton;
    Binterrompe1: TSpeedButton;
    Image1: TImage;
    Label7: TLabel;
    LTotal: TLabel;
    ME1: TLabel;
    ME2: TLabel;
    BPower1: TSpeedButton;
    BPower: TSpeedButton;
    EllipticHint1: TEllipticHint;
    TMusica: TTable;
    DSMusica: TDataSource;
    TMusicaTempo: TStringField;
    TimerTable: TTimer;
    TAutoPlayList: TTimer;
    TMusicaNomeCompleto: TStringField;
    IcSonzeira: TImage;
    TIcone: TTimer;
    IcSonzeira1: TImage;
    LSonzeira1: TLabel;
    LSonzeira: TLabel;
    TLabel: TTimer;
    TLabel1: TTimer;
    TMusicaNome: TStringField;
    procedure BTocarClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure BPararClick(Sender: TObject);
    procedure BAbrirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure AM1OpenComplete(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TAumentaTimer(Sender: TObject);
    procedure TDiminuiTimer(Sender: TObject);
    procedure SpeedButton3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BInterrompeClick(Sender: TObject);
    procedure TInterrompeTimer(Sender: TObject);
    procedure TNomeMusicaTimer(Sender: TObject);
    procedure BAbrir1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BParar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BTocar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton11MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton21MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton61MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton31MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton41MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Binterrompe1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BPower1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BPowerClick(Sender: TObject);
    procedure TimerTableTimer(Sender: TObject);
    procedure TAutoPlayListTimer(Sender: TObject);
    procedure TIconeTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TLabelTimer(Sender: TObject);
    procedure TLabel1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure TrayMessage(var Msg: TMessage); message WM_MYMESSAGE;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  hR: Thandle;
  NotifyStruc : PNotifyIconData;
  I           : integer;

implementation

uses UArquivo;


{$R *.DFM}

procedure TForm1.BTocarClick(Sender: TObject);
begin
  Binterrompe.Enabled:=true;
  Binterrompe1.Enabled:=true;
  SpeedButton1.Enabled:=true;
  SpeedButton11.Enabled:=true;
  SpeedButton21.Enabled:=true;
  SpeedButton2.Enabled:=true;
  SpeedButton31.Enabled:=true;
  SpeedButton3.Enabled:=true;
  SpeedButton41.Enabled:=true;
  SpeedButton4.Enabled:=true;
  SpeedButton61.Enabled:=true;
  SpeedButton6.Enabled:=true;
  bParar1.enabled:=true;
  bparar.enabled:=true;
  Me1.Caption:=floattostr(round(am1.Duration));
  am1.Run;
  timer1.Enabled:=true;
  BTocar1.Enabled:=false;
  BTocar.Enabled:=false;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  if trackBar1.Position=0 then
    begin
      am1.Volume:=0;
      trackbar1.Hint:='10';
    end;
  if trackbar1.position=1 then
    begin
      am1.volume:=0;
      am1.volume:=-400;
      trackbar1.Hint:='9';
    end;
  if trackbar1.position=2 then
    begin
      am1.volume:=0;
      am1.volume:=-800;
      trackbar1.Hint:='8';
    end;
  if trackbar1.position=3 then
    begin
      am1.volume:=0;
      am1.volume:=-1200;
      trackbar1.Hint:='7';
    end;
  if trackbar1.position=4 then
    begin
      am1.volume:=0;
      am1.volume:=-1600;
      trackbar1.Hint:='6';
    end;
  if trackbar1.position=5 then
    begin
      am1.volume:=0;
      am1.volume:=-2000;
      trackbar1.Hint:='5';
    end;
  if trackbar1.position=6 then
    begin
      am1.volume:=0;
      am1.volume:=-2400;
      trackbar1.Hint:='4';
    end;
  if trackbar1.position=7 then
    begin
      am1.volume:=0;
      am1.volume:=-2800;
      trackbar1.Hint:='3';
    end;
  if trackbar1.position=8 then
    begin
      am1.volume:=0;
      am1.volume:=-3200;
      trackbar1.Hint:='2';
    end;
  if trackbar1.position=9 then
    begin
      am1.volume:=0;
      am1.volume:=-3600;
      trackbar1.Hint:='1';
    end;
  if trackbar1.position=10 then
    begin
      am1.volume:=0;
      am1.volume:=-10000;
      trackbar1.Hint:='0';
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  resto: real;
  multiplica: real;
  total: real;
begin
  resto:=((round(am1.SelectionEnd))-(round(am1.currentposition)));
  multiplica:=(resto*100) /(round(am1.SelectionEnd));
  total:=(100-multiplica);
  porcentagem.Progress:=trunc(total);
  me2.Caption:=floattostr(round(am1.CurrentPosition));
  me1.Caption:=floattostr((round(am1.SelectionEnd))-(round(am1.currentposition)));
  if porcentagem.Progress=100 then
    if TAutoPlayList.Enabled=false then
      begin
        Binterrompe1.Enabled:=false;
        BInterrompe.Enabled:=false;
        TMusica.Next;
        if Tmusica.Eof then
          begin
            Tmusica.First;
            am1.filename:=Tmusica.fieldbyname('NomeCompleto').asstring;
            TAutoPlayList.Enabled:=true;
          end
        else
          begin
            am1.filename:=Tmusica.fieldbyname('NomeCompleto').asstring;
            TAutoPlayList.Enabled:=true;
         end;

       end;



end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  if trackBar2.Position=5 then
    begin
      am1.Balance:=0;
      trackbar2.Hint:='Ambas';
    end;
  if trackbar2.position=6 then
    begin
      am1.balance:=0;
      am1.balance:=600;
      trackbar2.Hint:='Direita 1';
    end;
  if trackbar2.position=7 then
    begin
      am1.balance:=0;
      am1.balance:=1200;
      trackbar2.Hint:='Direita 2';
    end;
  if trackbar2.position=8 then
    begin
      am1.balance:=0;
      am1.balance:=1800;
      trackbar2.Hint:='Direita 3';
    end;
  if trackbar2.position=9 then
    begin
      am1.balance:=0;
      am1.balance:=2400;
      trackbar2.Hint:='Direita 4';
    end;
  if trackbar2.position=10 then
    begin
      am1.balance:=0;
      am1.balance:=3000;
      trackbar2.Hint:='Direita 5';
    end;
  if trackbar2.position=4 then
    begin
      am1.balance:=0;
      am1.balance:=-600;
      trackbar2.Hint:='Esquerda 1';
    end;
  if trackbar2.position=3 then
    begin
      am1.balance:=0;
      am1.balance:=-1200;
      trackbar2.Hint:='Esquerda 2';
    end;
  if trackbar2.position=2 then
    begin
      am1.balance:=0;
      am1.balance:=-1800;
      trackbar2.Hint:='Esquerda 3';
    end;
  if trackbar2.position=1 then
    begin
      am1.balance:=0;
      am1.balance:=-2400;
      trackbar2.Hint:='Esquerda 4';
    end;
  if trackbar2.position=0 then
    begin
      am1.balance:=0;
      am1.balance:=-3000;
      trackbar2.Hint:='Esquerda 5';
    end;





end;

procedure TForm1.BPararClick(Sender: TObject);
begin
  porcentagem.Progress:=0;
  me2.Caption:='0';
  ltotal.caption:=floattostr(round(am1.SelectionEnd));
  bparar1.enabled:=false;
  bparar.enabled:=false;
  btocar1.enabled:=true;
  btocar.enabled:=true;
  am1.AutoRewind:=true;
  am1.Stop;
  me1.Caption:=floattostr(round(am1.duration));
  timer1.Enabled:=false;
  SpeedButton11.Enabled:=false;
  SpeedButton1.Enabled:=false;
  SpeedButton21.Enabled:=false;
  SpeedButton2.Enabled:=false;
  SpeedButton31.Enabled:=false;
  SpeedButton3.Enabled:=false;
  SpeedButton41.Enabled:=false;
  SpeedButton4.Enabled:=false;
  SpeedButton61.Enabled:=false;
  SpeedButton6.Enabled:=false;
  BInterrompe.Enabled:=false;
  Binterrompe1.Enabled:=false;
  am1.AutoRewind:=false;
end;


procedure TForm1.TrayMessage(var Msg: TMessage);
var
 hHandle2 : THandle;
begin
  if (Msg.LParam=WM_LBUTTONDOWN) then
     begin
        If Form1.visible=false then
           begin
              Form1.Visible:=true;
              ShowWindow(Application.Handle,SW_SHOW);
           end
        else
          begin
            Form1.visible:=false;
            ShowWindow(Application.Handle,SW_HIDE);
            hHandle2:= FindWindow( nil, 'form1');
            if hHandle2 <> 0 then
            SendMessage( hHandle2, WM_CLOSE, 0, 0);

          end;
     end;
end;


procedure TForm1.BAbrirClick(Sender: TObject);
begin
  form2.Show;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  hR := CreateEllipticRgn(0,0,400,300);
  SetWindowRgn(Handle,hR,True);
  New(NotifyStruc);
  NotifyStruc^.cbSize := SizeOf(NotifyStruc^);
  NotifyStruc^.Wnd := Handle;
  NotifyStruc^.uID := 1;
  NotifyStruc^.uFlags := NIF_ICON or NIF_TIP or NIF_MESSAGE;
  NotifyStruc^.uCallbackMessage := WM_MYMESSAGE;
  NotifyStruc^.hIcon :=IcSonzeira.Picture.Icon.Handle;
  NotifyStruc^.szTip := 'Sonzeira';
  I:=0;
  if (ParamStr(1)='auto') then Shell_NotifyIcon(NIM_ADD,NotifyStruc);
  ltotal.caption:='0';
  am1.FileName:='';


end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  am1.Pause;
  SpeedButton61.Enabled:=false;
  SpeedButton6.Enabled:=false;
  Btocar1.enabled:=true;
  btocar.enabled:=true;
  BTocar1.Visible:=true;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  if Tmusica.Eof then
    begin
      TMusica.First;
      BInterrompe.Enabled:=false;
      am1.filename:=Tmusica.fieldbyname('NomeCompleto').asstring;
    end
  else
    begin
      BInterrompe.Enabled:=false;
      TMusica.Next;
      am1.filename:=Tmusica.fieldbyname('NomeCompleto').asstring;
    end;
end;

procedure TForm1.AM1OpenComplete(Sender: TObject);
begin
  timer1.Enabled:=true;
  me1.Caption:=floattostr(round(am1.SelectionEnd));
  me2.Caption:=floattostr(am1.selectionstart);
  Tmusica.edit;
  Tmusica.fieldbyname('tempo').asstring:=floattostr(round(am1.selectionEnd));
  Tmusica.Post;
  ltotal.caption:=floattostr(round(am1.SelectionEnd));
  trackbar1.Enabled:=true;
  trackbar2.enabled:=true;
  Tnomemusica.Enabled:=true;
  Label8.Visible:=true;
  Label8.caption:=Tmusica.fieldbyname('nome').asstring;
  Binterrompe.Enabled:=true;
  Binterrompe1.Enabled:=true;
  SpeedButton1.Enabled:=true;
  SpeedButton11.Enabled:=true;
  SpeedButton21.Enabled:=true;
  SpeedButton2.Enabled:=true;
  SpeedButton31.Enabled:=true;
  SpeedButton3.Enabled:=true;
  SpeedButton41.Enabled:=true;
  SpeedButton4.Enabled:=true;
  SpeedButton61.Enabled:=true;
  SpeedButton6.Enabled:=true;
  bparar.enabled:=true;
  bparar1.enabled:=true;
  Me1.Caption:=floattostr(round(am1.Duration));
  am1.Run;
  BTocar1.Enabled:=false;
  BTocar.Enabled:=false;
  Application.Title:=Tmusica.fieldbyname('nome').asstring;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if me2.Caption<>'0' then
    begin
      am1.CurrentPosition:=am1.SelectionStart;
    end
  else
    begin
      BInterrompe.Enabled:=false;
      TMusica.prior;
      am1.filename:=Tmusica.fieldbyname('NomeCompleto').asstring;
    end;

end;

procedure TForm1.TAumentaTimer(Sender: TObject);
begin
  am1.CurrentPosition:=am1.CurrentPosition+1;
end;

procedure TForm1.TDiminuiTimer(Sender: TObject);
begin
  am1.CurrentPosition:=am1.CurrentPosition-1;
end;

procedure TForm1.SpeedButton3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Taumenta.Enabled:=true;
end;

procedure TForm1.SpeedButton3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Taumenta.Enabled:=false;
end;

procedure TForm1.SpeedButton2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Tdiminui.Enabled:=false;

end;

procedure TForm1.SpeedButton2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Tdiminui.Enabled:=true;

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  am1.CurrentPosition:=am1.CurrentPosition+10;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  am1.CurrentPosition:=am1.CurrentPosition-10;

end;

procedure TForm1.BInterrompeClick(Sender: TObject);
begin
  Tinterrompe.Enabled:=true;
end;

procedure TForm1.TInterrompeTimer(Sender: TObject);
begin
  if am1.Volume<>-5000 then
    begin
      am1.volume:=am1.volume-100;
    end
  else
    begin
      am1.Stop;
      am1.volume:=0;
      Tinterrompe.Enabled:=false;
      bparar1.enabled:=false;
      bparar.enabled:=false;
      btocar1.enabled:=true;
      btocar.enabled:=true;
      btocar1.visible:=true;
      SpeedButton11.Enabled:=false;
      SpeedButton1.Enabled:=false;
      SpeedButton21.Enabled:=false;
      SpeedButton2.Enabled:=false;
      SpeedButton31.Enabled:=false;
      SpeedButton3.Enabled:=false;
      SpeedButton41.Enabled:=false;
      SpeedButton4.Enabled:=false;
      SpeedButton61.Enabled:=false;
      SpeedButton6.Enabled:=false;
      Binterrompe1.Enabled:=false;
      BInterrompe.Enabled:=false;
      timer1.Enabled:=false;
    end;
end;

procedure TForm1.TNomeMusicaTimer(Sender: TObject);
begin
  label8.left:=label8.left-10;
  if label8.left <= -label8.width then
    begin
      label8.left:=ClientWidth;
    end;
end;

procedure TForm1.BAbrir1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Babrir1.visible:=false;
  Babrir.visible:=true;
end;

procedure TForm1.BParar1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Bparar1.Visible:=false;
  Bparar.Visible:=true;
end;

procedure TForm1.BTocar1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Btocar1.Visible:=false;
  Btocar.visible:=true;
end;

procedure TForm1.SpeedButton11MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton11.Visible:=false;
  SpeedButton1.Visible:=true;
end;

procedure TForm1.SpeedButton21MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton21.Visible:=false;
  SpeedButton2.Visible:=true;

end;

procedure TForm1.SpeedButton61MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton61.Visible:=false;
  SpeedButton6.Visible:=true;

end;

procedure TForm1.SpeedButton31MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton31.Visible:=false;
  SpeedButton3.Visible:=true;

end;

procedure TForm1.SpeedButton41MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton41.Visible:=false;
  SpeedButton4.Visible:=true;

end;

procedure TForm1.Binterrompe1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Binterrompe.visible:=true;
  Binterrompe1.visible:=false;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  babrir1.visible:=true;
  babrir.visible:=false;
  Bparar1.Visible:=true;
  Bparar.Visible:=false;
  Btocar1.Visible:=true;
  Btocar.visible:=false;
  SpeedButton11.Visible:=true;
  SpeedButton1.Visible:=false;
  SpeedButton21.Visible:=true;
  SpeedButton2.Visible:=false;
  SpeedButton61.Visible:=true;
  SpeedButton6.Visible:=false;
  SpeedButton31.Visible:=true;
  SpeedButton3.Visible:=false;
  SpeedButton41.Visible:=true;
  SpeedButton4.Visible:=false;
  Binterrompe.visible:=false;
  Binterrompe1.visible:=true;
  BPower1.visible:=true;
  BPower.visible:=false;




end;

procedure TForm1.BPower1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  BPower1.visible:=false;
  BPower.visible:=true;

end;

procedure TForm1.BPowerClick(Sender: TObject);
var
hHandle3 : THandle;
begin
  Application.terminate;
  hHandle3 := FindWindow( nil, 'form1');
  if hHandle3 <> 0 then
  SendMessage( hHandle3, WM_CLOSE, 0, 0);
end;



procedure TForm1.TimerTableTimer(Sender: TObject);
begin
  Tmusica.Refresh;
    if Tmusica.FieldByName('nome').asstring<>'' then
      if Porcentagem.Progress=0 then
        if me1.Caption='0' then
          if am1.filename='' then
            if TAutoPlayList.Enabled=false then
              begin
                am1.filename:=Tmusica.fieldbyname('NomeCompleto').asstring;
                TAutoPlayList.Enabled:=true;
              end;
    if Tmusica.FieldByName('nome').asstring='' then
      begin
        if am1.FileName<>'' then
          begin
            Bparar.Click;
            am1.FileName:='';
            Btocar.Enabled:=false;
            Btocar1.Enabled:=false;
            me1.Caption:='0';
            me2.Caption:='0';
            ltotal.Caption:='0';
            timer1.Enabled:=false;
            Application.Title:='Sonzeira';
            label8.Visible:=false;
          end;
      end;

end;

procedure TForm1.TAutoPlayListTimer(Sender: TObject);
begin
  if porcentagem.Progress=1 then
  TAutoPlayList.Enabled:=false;
end;

procedure TForm1.TIconeTimer(Sender: TObject);
begin
  Shell_NotifyIcon(NIM_ADD,NotifyStruc);
  Inc(I);
  If (I>2) then I:=1;
  case I of
    1  :   NotifyStruc^.hIcon :=  IcSonzeira.Picture.Icon.Handle;
    2  :   NotifyStruc^.hIcon :=  IcSonzeira1.Picture.Icon.Handle;
  end;
  Shell_NotifyIcon(NIM_MODIFY,NotifyStruc);

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  winexec('c:\Meusdo~1\Delphi\Programas\Sonzeira\PlayList.exe',sw_show);

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Shell_NotifyIcon(NIM_DELETE,NotifyStruc);
end;

procedure TForm1.TLabelTimer(Sender: TObject);
begin
  LSonzeira1.Visible:=false;
  IcSonzeira1.Visible:=false;
  LSonzeira.Visible:=true;
  IcSonzeira.Visible:=true;
  TLabel1.Enabled:=true;
  TLabel.Enabled:=false;

end;

procedure TForm1.TLabel1Timer(Sender: TObject);
begin
  LSonzeira.Visible:=false;
  IcSonzeira.Visible:=false;
  LSonzeira1.Visible:=true;
  IcSonzeira1.Visible:=true;
  TLabel.Enabled:=true;
  TLabel1.Enabled:=false;


end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Shell_NotifyIcon(NIM_DELETE,NotifyStruc);

end;

end.
