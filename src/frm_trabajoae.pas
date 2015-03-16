unit frm_TrabajoAE;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, dbdateedit, rxlookup, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ExtCtrls, DbCtrls, Buttons, ComCtrls,
  dmgeneral;

const
  MOV_INGRESO = 1;
  MOV_EGRESO = 2;


type

  { TfrmTrabajoAE }

  TfrmTrabajoAE = class(TForm)
    btnSalir: TBitBtn;
    BitBtn2: TBitBtn;
    btnCancelar: TBitBtn;
    ckBusPrincipio: TCheckBox;
    cbMarcas: TComboBox;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo2: TDBMemo;
    dbDetalleTrabajo: TDBMemo;
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
    PCDatosMovimiento: TPageControl;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    tabIngreso: TTabSheet;
    tabEgreso: TTabSheet;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure dbNombreKeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    _movimiento: integer;
    _trabajo_id: integer;
    procedure Buscar(dato, componente: string);
    procedure MostrarResultadosBusCliente;
  public
    property idTrabajo: integer read _trabajo_id write _trabajo_id;
    property movimiento: integer read _movimiento write _movimiento;

  end;

var
  frmTrabajoAE: TfrmTrabajoAE;

implementation
{$R *.lfm}
uses
  dmtrabajos
  ,frm_resultadosClientes
  ,frm_editarMarcas
  ;

const
  _BusApyNom = 'dbNombre';
  _BusOrganismo = 'dbOrganismo';
  _BusDocumento = 'dbDocumento';
  _BusTelefono = 'dbTelefono';
  _BusEmail = 'dbEmail';

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
   With DM_Trabajos.Equipos do
   begin
    Edit;
    FieldByName('marca_id').asInteger:= DM_General.obtenerIDIntComboBox(cbMarcas);
    Post;
   end;
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
  DM_General.CargarComboBox(cbMarcas, 'marca','id',DM_Trabajos.qLevantarMarcas);
  if idTrabajo = ID_NULO then
  begin
    DM_Trabajos.TrabajoInsertar;
  end
  else
  begin
    DM_Trabajos.TrabajoEditar (idTrabajo);
  end;
  DM_Trabajos.LevantarMarcas;
  cbMarcas.ItemIndex:= DM_General.obtenerIdxCombo(cbMarcas, DM_Trabajos.Equiposmarca_id.AsInteger);
  if _movimiento = MOV_EGRESO then
  begin
    PCDatosMovimiento.ActivePage:= tabEgreso;
    With DM_Trabajos, Trabajos do
    begin
      Edit;
      TrabajosfEgreso.AsDateTime:= Now;
      TrabajosbEgreso.AsInteger:= 1;
      Post;
    end;
    dbDetalleTrabajo.SetFocus;
  end;
end;

procedure TfrmTrabajoAE.SpeedButton1Click(Sender: TObject);
var
  pant: TfrmEditarMarcas;
begin
  pant:= TfrmEditarMarcas.Create(self);
  try
    pant.ShowModal;
    DM_General.CargarComboBox(cbMarcas, 'marca','id',DM_Trabajos.qLevantarMarcas);
  finally
    pant.Free;
  end;
end;


procedure TfrmTrabajoAE.Buscar(dato, componente: string);
var
  consulta: string;
begin
  dato := TRIM(dato);
  if dato <> EmptyStr then
  begin
    if componente = _BusApyNom then
     DM_Trabajos.BuscarApyNombre (dato, ckBusPrincipio.Checked);
    if componente = _BusOrganismo then
     DM_Trabajos.BuscarOrganismo (dato, ckBusPrincipio.Checked);
    if componente = _BusTelefono then
     DM_Trabajos.BuscarTelefono (dato, ckBusPrincipio.Checked);
    if componente = _BusDocumento then
     DM_Trabajos.BuscarApyNombre (dato, ckBusPrincipio.Checked);
    if componente = _BusEmail then
     DM_Trabajos.BuscarEmail (dato, ckBusPrincipio.Checked);
  end;

  case DM_Trabajos.qBUSClientes.RecordCount of
      0: ShowMessage('No encontré nada en la base de datos');
      1: DM_Trabajos.CargarClienteID (DM_Trabajos.qBUSClientesid.asInteger);
      else
        MostrarResultadosBusCliente;
   end;

end;

procedure TfrmTrabajoAE.MostrarResultadosBusCliente;
var
  pant: TfrmResultadosClientes;
begin
  pant:= TfrmResultadosClientes.Create (self);
  try
    if pant.ShowModal = mrOK then
     DM_Trabajos.CargarClienteID (pant.idCliente);
  finally
    pant.Free;
  end;
end;

end.

