unit UArquivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  GradBtn, ExtCtrls, StdCtrls, FileCtrl, jpeg;

type
  TForm2 = class(TForm)
    Drive: TDriveComboBox;
    Diretorios: TDirectoryListBox;
    Files: TFileListBox;
    TipoArquivo: TFilterComboBox;
    IcSonzeira: TImage;
    IcSonzeira1: TImage;
    LSonzeira: TLabel;
    LSonzeira1: TLabel;
    TLabel: TTimer;
    TLabel1: TTimer;
    Image1: TImage;
    GradBtn1: TGradBtn;
    GradBtn2: TGradBtn;
    procedure TLabelTimer(Sender: TObject);
    procedure TLabel1Timer(Sender: TObject);
    procedure GradBtn2Click(Sender: TObject);
    procedure GradBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FilesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  redondo: Thandle;

implementation

uses USonzeira;

{$R *.DFM}

procedure TForm2.TLabelTimer(Sender: TObject);
begin
  LSonzeira1.Visible:=false;
  IcSonzeira1.Visible:=false;
  LSonzeira.Visible:=true;
  IcSonzeira.Visible:=true;
  TLabel1.Enabled:=true;
  TLabel.Enabled:=false;

end;

procedure TForm2.TLabel1Timer(Sender: TObject);
begin
  LSonzeira.Visible:=false;
  IcSonzeira.Visible:=false;
  LSonzeira1.Visible:=true;
  IcSonzeira1.Visible:=true;
  TLabel.Enabled:=true;
  TLabel1.Enabled:=false;

end;

procedure TForm2.GradBtn2Click(Sender: TObject);
begin
  hide;
end;

procedure TForm2.GradBtn1Click(Sender: TObject);
begin
  with form1 do
    begin
      am1.FileName:=files.FileName;
      tmusica.Edit;
      tmusica.Last;
      tmusica.Insert;
      tmusica.FieldByName('NomeCompleto').asstring:=files.FileName;
      tmusica.FieldByName('nome').asstring:=files.Items.Strings[files.itemindex];
      tmusica.Post;
      tmusica.Refresh;
      form2.hide;
    end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Redondo := CreateEllipticRgn(0,0,400,280);
  SetWindowRgn(Handle,Redondo,True);
end;

procedure TForm2.FilesDblClick(Sender: TObject);
begin
    with form1 do
      begin
        am1.FileName:=files.FileName;
        tmusica.Edit;
        tmusica.Last;
        tmusica.Insert;
        tmusica.FieldByName('NomeCompleto').asstring:=files.FileName;
        tmusica.FieldByName('nome').asstring:=files.Items.Strings[files.itemindex];
        tmusica.Post;
        tmusica.Refresh;
        form2.hide;
      end;


end;

end.
