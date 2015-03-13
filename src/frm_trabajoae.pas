unit frm_TrabajoAE;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, dbdateedit, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtCtrls, DbCtrls, Buttons, ComCtrls, dmgeneral;

type

  { TfrmTrabajoAE }

  TfrmTrabajoAE = class(TForm)
    btnSalir: TBitBtn;
    BitBtn2: TBitBtn;
    btnCancelar: TBitBtn;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    dbNombre: TDBEdit;
    dbOrganismo: TDBEdit;
    dbDocumento: TDBEdit;
    dbTelefono: TDBEdit;
    dbEmail: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    ds_Clientes: TDataSource;
    ds_Equipos: TDataSource;
    ds_Marcas: TDataSource;
    ds_Trabajos: TDataSource;
    gbCliente: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    tabIngreso: TTabSheet;
    tabEgreso: TTabSheet;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure dbNombreKeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
  private
    _trabajo_id: integer;
    procedure Buscar(dato, componente: string);
  public
    property idTrabajo: integer read _trabajo_id write _trabajo_id;
  end;

var
  frmTrabajoAE: TfrmTrabajoAE;

implementation
{$R *.lfm}
uses
  dmtrabajos;

{ TfrmTrabajoAE }

procedure TfrmTrabajoAE.dbNombreKeyPress(Sender: TObject; var Key: char);
var
  dato, componente: string;
begin
  if Key = #13 then
  begin
    dato:=(Sender as TDBEdit).Text;
    componente :=(Sender as TDBEdit).Name;
    Buscar (dato, componente);
  end;
end;

procedure TfrmTrabajoAE.btnSalirClick(Sender: TObject);
begin
  DM_Trabajos.TrabajoGrabar;
  ModalResult:= mrOK;
end;

procedure TfrmTrabajoAE.btnCancelarClick(Sender: TObject);
begin
  if (MessageDlg ('ATENCION', 'Cancela la carga y sale de la pantalla?', mtConfirmation, [mbYes, mbNo],0 ) = mrYes) then
    ModalResult:= mrCancel;
end;

procedure TfrmTrabajoAE.FormShow(Sender: TObject);
begin
  if idTrabajo = ID_NULO then
  begin
    DM_Trabajos.TrabajoInsertar;
  end
  else
  begin
    DM_Trabajos.TrabajoEditar (idTrabajo);
  end;
end;

procedure TfrmTrabajoAE.Buscar(dato, componente: string);
var
  consulta: string;
begin
  dato := TRIM(dato);
  if dato <> EmptyStr then
  begin

  end;
end;

end.

