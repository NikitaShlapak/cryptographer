unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  key,data,kur:String;
  i,s,j,n,w:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.lines.LoadfromFile('base.txt');
  Edit1.Text:=Memo1.Text;
  Memo1.clear;
  key:=Edit1.Text;
  //s:=strttoint(Memo1.Lines[0,1]);
  button4.Click;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.lines.LoadfromFile('base.txt');
  Edit1.Text:=Memo1.Text;
  Memo1.clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo2.Clear;
  Memo3.Clear;
  Memo4.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 // Memo2.text:='';
  Edit1.Text:=Memo1.Text;
  data:=Edit1.Text;
  j:=0;

  repeat

  if CheckBox1.Checked=FALSE then
  s:=strtoint(data[j+1]) else s:=Random(10);
  kur:=inttostr(s);
  j:=j+2; if CheckBox1.Checked=True then j:=j-1;
  repeat
   // if (j=2) or (data[j]=' ') then begin

      repeat //-----------search
             i:=i+1;
      until data[j]=key[i];

    //--------------coding
    n:=i+s*s;

    while n>key.Length do n:=n-key.Length;

    kur:=kur+key[n];

    j:=j+1;
    i:=1;
    s:=s+1;

    //end;
  until (data[j]=' ')  or (data[j]='.') or (j>data.Length);
  Memo2.text:=Memo2.Text+kur+' ';
  kur:='';


 until ((j>data.Length) or (data[j]='.'));

end;

procedure TForm1.Button2Click(Sender: TObject);
begin




 //---------------------------
      Edit1.Text:=Memo3.Text;
  data:=Edit1.Text;
  j:=0;
    // s:=strtoint(data[1]) ;
  repeat

  s:=strtoint(data[j+1]) ;
//  kur:=inttostr(s);
  j:=j+2;
  repeat


      repeat //-----------search
             i:=i+1;
      until data[j]=key[i];

    //--------------coding
    n:=i-s*s;

    while n<0 do n:=n+key.Length;

    kur:=kur+key[n];

    j:=j+1;
    i:=1;
    s:=s+1;

    //end;
  until (data[j]=' ')  or (data[j]='.') or (j>data.Length);
  Memo4.text:=Memo4.Text+kur+' ';
  kur:='';


 until ((j>data.Length) or (data[j]='.'));
 //---------------------------

end;

end.

