unit TocarBloco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl, OleCtrls, AMovie_TLB, ExtCtrls, Buttons, Grids,
  DBGrids, Db, DBTables, ComCtrls, Mask, Gauges;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    DCB: TDriveComboBox;
    DLB: TDirectoryListBox;
    FLB: TFileListBox;
    tbDados: TTable;
    dsDados: TDataSource;
    Timer2: TTimer;
    Timer1: TTimer;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SBTocar: TSpeedButton;
    Panel7: TPanel;
    SpeedButton3: TSpeedButton;
    QDados: TQuery;
    dsQDados: TDataSource;
    ComboBox1: TComboBox;
    QDadosCodigo: TIntegerField;
    QDadosEndereco: TStringField;
    QDadosNome: TStringField;
    QDadosTempo: TStringField;
    tbDadosCodigo: TAutoIncField;
    tbDadosEndereco: TStringField;
    tbDadosNome: TStringField;
    tbDadosTempo: TStringField;
    Panel2: TPanel;
    AM1: TActiveMovie;
    AM2: TActiveMovie;
    Progress1: TGauge;
    TimerFadeOut: TTimer;
    Panel9: TPanel;
    Stop: TSpeedButton;
    Button1: TSpeedButton;
    Retroceder: TSpeedButton;
    Avancar: TSpeedButton;
    Pause: TSpeedButton;
    Panel11: TPanel;
    MEDisplay: TMaskEdit;
    Panel8: TPanel;
    TAumenta: TTimer;
    TDiminui: TTimer;
    FilterComboBox1: TFilterComboBox;
    procedure Adicionar(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SBTocarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AM1OpenComplete(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure AM2OpenComplete(Sender: TObject);
    procedure TimerFadeOutTimer(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure TAumentaTimer(Sender: TObject);
    procedure TDiminuiTimer(Sender: TObject);
    procedure RetrocederMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RetrocederMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AvancarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AvancarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RetrocederClick(Sender: TObject);
    procedure AvancarClick(Sender: TObject);
    procedure StopClick(Sender: TObject);
    procedure PauseClick(Sender: TObject);
    procedure FilterComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Area_Minutes, Area_Seconds: integer;
  FadeOut: integer;
implementation

{$R *.DFM}

procedure TForm1.Adicionar(Sender: TObject);
begin
  With QDados do
    begin
      close;
      Sql.Clear;
      Sql.Add('Select * from Dados');
      Sql.Add('Where Nome='''+Edit2.text+'''');
      open;
      If Fields[0].isNull then
        begin
          tbDados.Last;
          tbDados.Insert;
          tbDadosEndereco.Value := FLB.Directory;
          tbDadosNome.Value := Edit2.text;
          tbDados.Post;
          tbDados.Refresh;
        end
      else
        begin
          if messagedlg('Esta música ou vinheta já foi inclusa no bloco.'#13'Deseja incluir novamente?',mtConfirmation,[mbyes,mbno],0)=mryes Then
            begin
              tbDados.Last;
              tbDados.Insert;
              tbDadosEndereco.Value := FLB.Directory;
              tbDadosNome.Value := Edit2.text;
              tbDados.Post;
              tbDados.Refresh;
            end;

        end;
   end;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  if messagedlg('Deseja realmente excluir este SOM do bloco?',mtconfirmation,[mbyes,mbno],0)=mryes then
    begin
      tbDados.Delete;
    end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('Deseja realmente limpar este Bloco?',mtconfirmation,[mbyes,mbno],0)=mryes then
    begin
      tbDados.First;
      While not tbDados.Eof do
        begin
          tbDados.Delete;
          tbDados.next;
        end;
      tbDados.delete;
    end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.SBTocarClick(Sender: TObject);
begin
  Button1.enabled:=true;
  AM1.FileName := tbDadosEndereco.value+'\'+tbDadosNome.Value;
  FadeOut:=1;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  resto, multiplica, total: real;
  strMinutes, StrSeconds: String;
  varresto: integer;
begin
  resto:=((round(Am1.SelectionEnd))-(round(Am1.currentposition)));
  multiplica:=(resto*100) /(round(Am1.SelectionEnd));
  total:=(100-multiplica);
  Progress1.Progress:=trunc(total);

  if panel8.BevelOuter=bvraised then
    begin
      Area_Minutes:=((round(Am1.CurrentPosition)) div 60);
      Area_Seconds:=((round(Am1.CurrentPosition)) mod 60);
    end
  else
    begin
      varresto:=trunc(resto);
      Area_Minutes:=varresto div 60;
      Area_Seconds:=varresto mod 60;
    end;

  StrMinutes:=inttostr(Area_Minutes);
  StrSeconds:=inttostr(Area_Seconds);

  if (length (StrMinutes) < 2) and (length (StrSeconds) < 2) then
    begin
      MeDisplay.text:= '0' + StrMinutes + ':' + '0' +StrSeconds;
    end
  else
    begin
      if length (StrMinutes) < 2 then
        begin
          MeDisplay.text:= '0' + StrMinutes + ':' + StrSeconds;
        end
      else
        begin
          if length(StrSeconds) < 2 then
            begin
              MeDisplay.text:= StrMinutes + ':' + '0' + StrSeconds;
            end
          else
            begin
              MeDisplay.Text:= StrMinutes + ':' + StrSeconds;
            end;
        end;
    end;

  If ((Am1.CurrentPosition)  >= (Am1.Duration) - (strtoint(ComboBox1.Text)) / 1000) then
    Begin
      TbDados.Next;
      if Tbdados.Eof then
        begin
          Progress1.Progress:=0;
          MeDisplay.Text:='00:00';
          Timer1.Enabled:=false;
          Sbtocar.Enabled:=true;
        end
      else
        begin
          if FileExists(tbDadosEndereco.value+'\'+tbDadosNome.Value) then
            begin
              AM2.FileName:=tbDadosEndereco.value+'\'+tbDadosNome.Value;
              FadeOut:=2;
              Timer1.Enabled:=false;
            end;
         end;
     end;




end;

procedure TForm1.AM1OpenComplete(Sender: TObject);
var
  minuto, segundo: string;
begin
  minuto:=floattostr((round(Am1.SelectionEnd))div 60);
  segundo:=floattostr((round(Am1.SelectionEnd))mod 60);
  if length (Minuto) < 2 then
    begin
      Minuto:= '0' + Minuto;
    end;
  if length (Segundo) < 2 then
    begin
      Segundo:= '0' + Segundo;
    end;
  Tbdados.edit;
  TbdadosTempo.Asstring:=minuto+':'+segundo;
  Tbdados.post;


  timer1.Enabled := true;

end;

procedure TForm1.Panel8Click(Sender: TObject);
begin
  if Panel8.BevelOuter=bvraised then
    begin
      Panel8.BevelOuter:=bvLowered;
      Panel8.Caption:='-';
    end
  else
    begin
      Panel8.BevelOuter:=bvraised;
      Panel8.Caption:='+';
    end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  resto, multiplica, total: real;
  strMinutes, StrSeconds: String;
  varresto: integer;
begin
  resto:=((round(Am2.SelectionEnd))-(round(Am2.currentposition)));
  multiplica:=(resto*100) /(round(Am2.SelectionEnd));
  total:=(100-multiplica);
  Progress1.Progress:=trunc(total);

  if panel8.BevelOuter=bvraised then
    begin
      Area_Minutes:=((round(Am2.CurrentPosition)) div 60);
      Area_Seconds:=((round(Am2.CurrentPosition)) mod 60);
    end
  else
    begin
      varresto:=trunc(resto);
      Area_Minutes:=varresto div 60;
      Area_Seconds:=varresto mod 60;
    end;

  StrMinutes:=inttostr(Area_Minutes);
  StrSeconds:=inttostr(Area_Seconds);

  if (length (StrMinutes) < 2) and (length (StrSeconds) < 2) then
    begin
      MeDisplay.text:= '0' + StrMinutes + ':' + '0' +StrSeconds;
    end
  else
    begin
      if length (StrMinutes) < 2 then
        begin
          MeDisplay.text:= '0' + StrMinutes + ':' + StrSeconds;
        end
      else
        begin
          if length(StrSeconds) < 2 then
            begin
              MeDisplay.text:= StrMinutes + ':' + '0' + StrSeconds;
            end
          else
            begin
              MeDisplay.Text:= StrMinutes + ':' + StrSeconds;
            end;
        end;
    end;

  If ((Am2.CurrentPosition)  >= (Am2.Duration) - (strtoint(ComboBox1.Text)) / 1000) then
    Begin
      TbDados.Next;
      if Tbdados.Eof then
        begin
          Progress1.Progress:=0;
          MeDisplay.Text:='00:00';
          Timer2.Enabled:=false;
          SbTocar.Enabled:=true;
        end
      else
        begin
          if FileExists(tbDadosEndereco.value+'\'+tbDadosNome.Value) then
            begin
              AM1.FileName:=tbDadosEndereco.value+'\'+tbDadosNome.Value;
              FadeOut:=1;
              Timer2.Enabled:=false;
            end;
         end;
     end;




end;

procedure TForm1.AM2OpenComplete(Sender: TObject);
var
  minuto, segundo: string;
begin
  minuto:=floattostr((round(Am2.SelectionEnd))div 60);
  segundo:=floattostr((round(Am2.SelectionEnd))mod 60);
  if length (Minuto) < 2 then
    begin
      Minuto:= '0' + Minuto;
    end;
  if length (Segundo) < 2 then
    begin
      Segundo:= '0' + Segundo;
    end;
  Tbdados.edit;
  TbdadosTempo.Asstring:=minuto+':'+segundo;
  Tbdados.post;


  timer2.Enabled := true;

end;

procedure TForm1.TimerFadeOutTimer(Sender: TObject);
begin
  if FadeOut=1 then
    begin
      if AM1.Volume<>-5000 then
        begin
          AM1.volume:=AM1.volume-100;
        end
      else
        begin
          AM1.Stop;
          AM1.volume:=0;
          Timer1.Enabled:=false;
          MeDisplay.text:='00:00';
          Progress1.progress:=0;
          timerFadeOut.Enabled:=false;
        end;
    end
  else
    begin
      if AM2.Volume<>-5000 then
        begin
          AM2.volume:=AM2.volume-100;
        end
      else
        begin
          AM2.Stop;
          AM2.volume:=0;
          MeDisplay.text:='00:00';
          Progress1.progress:=0;
          Timer2.Enabled:=false;
          timerFadeOut.Enabled:=false;
        end;
    end;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  TimerFadeOut.enabled:=true;

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text='' then
  combobox1.text:='0';

end;

procedure TForm1.TAumentaTimer(Sender: TObject);
begin
  if FadeOut=1 then
    begin
      am1.CurrentPosition:=am1.CurrentPosition+1;
    end
  else
    begin
      am2.CurrentPosition:=am2.CurrentPosition+1;
    end;

end;

procedure TForm1.TDiminuiTimer(Sender: TObject);
begin
  if fadeOut=1 then
    begin
      am1.CurrentPosition:=am1.CurrentPosition-1;
    end
  else
    begin
      am2.CurrentPosition:=am2.CurrentPosition-1;
    end;
end;

procedure TForm1.RetrocederMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TDiminui.Enabled:=true;
end;

procedure TForm1.RetrocederMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TDiminui.Enabled:=false;

end;

procedure TForm1.AvancarMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TAumenta.Enabled:=true;

end;

procedure TForm1.AvancarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TAumenta.Enabled:=false;

end;

procedure TForm1.RetrocederClick(Sender: TObject);
begin
  if FadeOut=1 then
    begin
      am1.CurrentPosition:=am1.CurrentPosition-10;
    end
  else
    begin
      am2.CurrentPosition:=am2.CurrentPosition-10;
    end;
end;

procedure TForm1.AvancarClick(Sender: TObject);
begin
  if FadeOut=1 then
    begin
      am1.CurrentPosition:=am1.CurrentPosition+10;
    end
  else
    begin
      am2.CurrentPosition:=am2.CurrentPosition+10;
    end;

end;

procedure TForm1.StopClick(Sender: TObject);
begin
  if FadeOut=1 then
    begin
      am1.stop;
    end
  else
    begin
      am2.stop;
    end;
  progress1.progress:=0;
  MeDisplay.text:='00:00';
  Timer1.enabled:=false;
  Timer2.enabled:=false;
end;

procedure TForm1.PauseClick(Sender: TObject);
begin
  if FadeOut=1 then
    begin
      am1.pause;
    end
  else
    begin
      am2.pause;
    end;

end;

procedure TForm1.FilterComboBox1Exit(Sender: TObject);
begin
  FLB.Mask:=edit2.text;
end;

end.
