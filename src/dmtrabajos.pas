unit dmtrabajos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxmemds, ZDataset
  ,dmgeneral
  ;

type

  { TDM_Trabajos }

  TDM_Trabajos = class(TDataModule)
    qSELClientes: TZQuery;
    qPendientesCliente: TStringField;
    qPendientesCompromiso: TDateField;
    qPendientesDiagnostico: TStringField;
    qPendientesDocumento: TStringField;
    qPendientesDomicilio: TStringField;
    qPendientesEgreso: TDateField;
    qPendientesemail: TStringField;
    qPendientesEquipoMarca: TStringField;
    qPendientesEquipomodelo: TStringField;
    qPendientesEquipoNotas: TStringField;
    qPendientesEquipoSerie: TStringField;
    qPendientesIngreso: TDateField;
    qPendientesNotasCliente: TStringField;
    qPendientesOrganismo: TStringField;
    qPendientesReparacion: TStringField;
    qPendientesTelefono: TStringField;
    Clientes: TRxMemoryData;
    qPendientes: TZQuery;
    qINSClientes: TZQuery;
    qSELClientesbVisible3: TLargeintField;
    qSELClientesdocumento3: TStringField;
    qSELClientesDomicilio3: TStringField;
    qSELClientesemail3: TStringField;
    qSELClientesid3: TLargeintField;
    qSELClientesNombre3: TStringField;
    qSELClientesnotas3: TStringField;
    qSELClientesOrganizacion3: TStringField;
    qSELClientesTelefono3: TStringField;
    qUPDClientes: TZQuery;
    qSELClientesbVisible: TLargeintField;
    qSELClientesbVisible1: TLargeintField;
    qSELClientesbVisible2: TLargeintField;
    qSELClientesdocumento: TStringField;
    qSELClientesdocumento1: TStringField;
    qSELClientesdocumento2: TStringField;
    qSELClientesDomicilio: TStringField;
    qSELClientesDomicilio1: TStringField;
    qSELClientesDomicilio2: TStringField;
    qSELClientesemail: TStringField;
    qSELClientesemail1: TStringField;
    qSELClientesemail2: TStringField;
    qSELClientesid: TLargeintField;
    qSELClientesid1: TLargeintField;
    qSELClientesid2: TLargeintField;
    qSELClientesNombre: TStringField;
    qSELClientesNombre1: TStringField;
    qSELClientesNombre2: TStringField;
    qSELClientesnotas: TStringField;
    qSELClientesnotas1: TStringField;
    qSELClientesnotas2: TStringField;
    qSELClientesOrganizacion: TStringField;
    qSELClientesOrganizacion1: TStringField;
    qSELClientesOrganizacion2: TStringField;
    qSELClientesTelefono: TStringField;
    qSELClientesTelefono1: TStringField;
    qSELClientesTelefono2: TStringField;
    qDELClientes: TZQuery;
    procedure ClientesAfterInsert(DataSet: TDataSet);

  private
    { private declarations }
  public
    procedure EquiposPendientes;
  end;

var
  DM_Trabajos: TDM_Trabajos;

implementation
{$R *.lfm}

{ TDM_Trabajos }

procedure TDM_Trabajos.ClientesAfterInsert(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('bVisible').asInteger:= 1;
  end;
end;

procedure TDM_Trabajos.EquiposPendientes;
begin
  with qPendientes do
  begin
    if active then close;
    Open;
  end;
end;

end.

