unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    D1: TDataSource;
    Ordonateur: TTable;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
 chemin: string;
begin
 if not (DirectoryExists(ExtractFilePath(Application.exename)+'bdd'))
 then createDir(ExtractFilePath(Application.exename)+'bdd');
 chemin:=ExtractFilePath(Application.exename)+'bdd';

   with ordonateur do begin
    Active := False;
    DatabaseName :=(chemin);
    TableName :='ordonateur'; //
    TableType := ttParadox;
  end;

  if not ordonateur.Exists then
   with ordonateur do begin
    Active := False;
    DatabaseName :=(chemin);
    TableName :='ordonateur'; //
    TableType := ttParadox;
     with FieldDefs do
       begin
        Clear;
         Add('matricule', ftINTEGER,0 , true);
         Add('nom_prenom', ftstring, 50, FALSE);
         Add('ADRESSE', ftSTRING, 70, False);
         Add('RIB', ftSTRING, 20, False);
         Add('Banque', ftSTRING, 20, False);
         Add('IBAN', ftSTRING, 4, False);
      end;

     with IndexDefs do
       begin
       Clear;
       Add('', 'matricule', [ixPrimary, ixUnique]);
       end;

 CreateTable;
 ordonateur.Close;
 ordonateur.Open;
 ordonateur.EDIT;
 ordonateur.Append;
 ordonateur.fieldbyname('matricule').asinTEgER := 1 ;
 ordonateur.fieldbyname('rib').asstring := '00400412401152887127' ;
 ordonateur.fieldbyname('banque').asstring := 'CPA AIN TEMOUCHENT' ;
 ordonateur.fieldbyname('nom_prenom').asstring := 'MOI MEME AIN TEMOUCHENT' ;
 ordonateur.fieldbyname('Adresse').asstring := 'RUE LARBI BEN M HIDI N 02 AIN TEMOUCHENT' ;
 ordonateur.Post;
end;

 with ordonateur do begin
    Active := False;
    DatabaseName :=(chemin);
    TableName :='ordonateur';
    TableType := ttParadox;
    Open;
 end;

 ordonateur.Open;
 ordonateur.active;
 ordonateur.First;
 ordonateur.Edit;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 ordonateur.Close;
 close;
end;

end.
