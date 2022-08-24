unit UPlayLista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  GradBtn, ExtCtrls, Grids, DBGrids, Buttons, Db, DBTables, StdCtrls,
  DBCtrls, OleCtrls, AMovie_TLB;

type
  TForm1 = class(TForm)
    Playlist: TGradBtn;
    Timer1: TTimer;
    Timer2: TTimer;
    GradBtn1: TGradBtn;
    GradBtn2: TGradBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    GradBtn4: TGradBtn;
    GradBtn5: TGradBtn;
    GradBtn6: TGradBtn;
    TMusica: TTable;
    DSMusica: TDataSource;
    TMusicaTempo: TStringField;
    Timer3: TTimer;
    TMusicaNomeCompleto: TStringField;
    AM1: TActiveMovie;
    TMusicaNome: TStringField;
    procedure PlaylistClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GradBtn4Click(Sender: TObject);
    procedure GradBtn5Click(Sender: TObject);
    procedure GradBtn6Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure AM1OpenComplete(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UArquivoPlayLista;


{$R *.DFM}

procedure TForm1.PlaylistClick(Sender: TObject);
begin
  playlist.Enabled:=false;
  if playlist.top=0 then
    begin
      timer1.Enabled:=true;
    end
  else
    begin
      timer2.enabled:=true;
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  begin
    if playlist.top<152 then
      begin
        form1.Height:=form1.height+4;
        playlist.top:=playlist.top+4;
      end
    else
      begin
        timer1.Enabled:=false;
        playlist.Enabled:=true;
      end;
    end;
end;



procedure TForm1.Timer2Timer(Sender: TObject);
begin
  if playlist.top>0 then
    begin
      form1.Height:=form1.height-4;
      playlist.Top:=playlist.top-4;
    end
  else
    timer2.enabled:=false;
    playlist.Enabled:=true;
  end;






procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.GradBtn4Click(Sender: TObject);
begin
  form2.show;
end;

procedure TForm1.GradBtn5Click(Sender: TObject);
begin
  TMusica.edit;
  Tmusica.delete;
end;

procedure TForm1.GradBtn6Click(Sender: TObject);
begin
  Tmusica.Last;
  while not Tmusica.Bof do
    begin
      Tmusica.Last;
      Tmusica.Delete;
    end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
//  Tmusica.Edit;
  Tmusica.Refresh;
end;

procedure TForm1.AM1OpenComplete(Sender: TObject);
begin
  TMusica.Edit;
  Tmusica.FieldByName('tempo').asstring:=floattostr(round(am1.selectionEnd));
  Tmusica.Post;
end;

end.
