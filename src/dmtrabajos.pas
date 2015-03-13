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
    Equipos: TRxMemoryData;
    ClientesbVisible: TLongintField;
    Clientesdocumento: TStringField;
    ClientesDomicilio: TStringField;
    Clientesid: TLongintField;
    Clientesmail: TStringField;
    ClientesNombre: TStringField;
    ClientesNotras: TStringField;
    ClientesOrganizacion: TStringField;
    ClientesTelefono: TStringField;
    Marcas: TRxMemoryData;
    EquiposbVisible: TLongintField;
    EquiposbVisible1: TLongintField;
    Equiposid: TLongintField;
    Equiposid1: TLongintField;
    EquiposMarca: TStringField;
    EquiposMarca1: TStringField;
    Equiposmarca_id: TLongintField;
    Equiposmarca_id1: TLongintField;
    Equiposmodelo: TStringField;
    Equiposmodelo1: TStringField;
    Equiposnotas: TStringField;
    Equiposnotas1: TStringField;
    EquiposnSerie: TStringField;
    EquiposnSerie1: TStringField;
    qSELTrabajobEgreso: TLargeintField;
    qSELTrabajobVisible: TLargeintField;
    qSELTrabajocliente_id: TLargeintField;
    qSELTrabajoDetalle: TStringField;
    qSELTrabajoDiagnostico: TStringField;
    qSELTrabajoequipo_id: TLargeintField;
    qSELTrabajofCompromiso: TDateField;
    qSELTrabajofEgreso: TDateField;
    qSELTrabajofIngreso: TDateField;
    qSELTrabajoid: TLargeintField;
    Trabajos: TRxMemoryData;
    qDELEquipos: TZQuery;
    qDELMarcas: TZQuery;
    qDELMarcas1: TZQuery;
    qINSEquipos: TZQuery;
    qINSMarcas: TZQuery;
    qINSTrabajos: TZQuery;
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
    qSELClientesbVisible10: TLargeintField;
    qSELClientesbVisible12: TLargeintField;
    qSELClientesbVisible13: TLargeintField;
    qSELClientesbVisible8: TLargeintField;
    qSELClientesbVisible9: TLargeintField;
    qSELClientesdocumento10: TStringField;
    qSELClientesdocumento12: TStringField;
    qSELClientesdocumento13: TStringField;
    qSELClientesdocumento8: TStringField;
    qSELClientesdocumento9: TStringField;
    qSELClientesDomicilio10: TStringField;
    qSELClientesDomicilio12: TStringField;
    qSELClientesDomicilio13: TStringField;
    qSELClientesDomicilio8: TStringField;
    qSELClientesDomicilio9: TStringField;
    qSELClientesemail10: TStringField;
    qSELClientesemail12: TStringField;
    qSELClientesemail13: TStringField;
    qSELClientesemail8: TStringField;
    qSELClientesemail9: TStringField;
    qSELClientesid10: TLargeintField;
    qSELClientesid12: TLargeintField;
    qSELClientesid13: TLargeintField;
    qSELClientesid8: TLargeintField;
    qSELClientesid9: TLargeintField;
    qSELClientesNombre10: TStringField;
    qSELClientesNombre12: TStringField;
    qSELClientesNombre13: TStringField;
    qSELClientesNombre8: TStringField;
    qSELClientesNombre9: TStringField;
    qSELClientesnotas10: TStringField;
    qSELClientesnotas12: TStringField;
    qSELClientesnotas13: TStringField;
    qSELClientesnotas8: TStringField;
    qSELClientesnotas9: TStringField;
    qSELClientesOrganizacion10: TStringField;
    qSELClientesOrganizacion12: TStringField;
    qSELClientesOrganizacion13: TStringField;
    qSELClientesOrganizacion8: TStringField;
    qSELClientesOrganizacion9: TStringField;
    qSELClientesTelefono10: TStringField;
    qSELClientesTelefono12: TStringField;
    qSELClientesTelefono13: TStringField;
    qSELClientesTelefono8: TStringField;
    qSELClientesTelefono9: TStringField;
    qSELEquipos: TZQuery;
    qSELClientesbVisible3: TLargeintField;
    qSELClientesbVisible5: TLargeintField;
    qSELClientesbVisible6: TLargeintField;
    qSELClientesbVisible7: TLargeintField;
    qSELClientesdocumento3: TStringField;
    qSELClientesdocumento5: TStringField;
    qSELClientesdocumento6: TStringField;
    qSELClientesdocumento7: TStringField;
    qSELClientesDomicilio3: TStringField;
    qSELClientesDomicilio5: TStringField;
    qSELClientesDomicilio6: TStringField;
    qSELClientesDomicilio7: TStringField;
    qSELClientesemail3: TStringField;
    qSELClientesemail5: TStringField;
    qSELClientesemail6: TStringField;
    qSELClientesemail7: TStringField;
    qSELClientesid3: TLargeintField;
    qSELClientesid5: TLargeintField;
    qSELClientesid6: TLargeintField;
    qSELClientesid7: TLargeintField;
    qSELClientesNombre3: TStringField;
    qSELClientesNombre5: TStringField;
    qSELClientesNombre6: TStringField;
    qSELClientesNombre7: TStringField;
    qSELClientesnotas3: TStringField;
    qSELClientesnotas5: TStringField;
    qSELClientesnotas6: TStringField;
    qSELClientesnotas7: TStringField;
    qSELClientesOrganizacion3: TStringField;
    qSELClientesOrganizacion5: TStringField;
    qSELClientesOrganizacion6: TStringField;
    qSELClientesOrganizacion7: TStringField;
    qSELClientesTelefono3: TStringField;
    qSELClientesTelefono5: TStringField;
    qSELClientesTelefono6: TStringField;
    qSELClientesTelefono7: TStringField;
    qSELMarcas: TZQuery;
    qSELEquiposbVisible: TLargeintField;
    qSELEquiposid: TLargeintField;
    qSELEquiposMarca: TStringField;
    qSELEquiposmarca_id: TLargeintField;
    qSELEquiposmodelo: TStringField;
    qSELEquiposnotas: TStringField;
    qSELEquiposnSerie: TStringField;
    qSELTrabajo: TZQuery;
    qSELMarcasbVisible: TLargeintField;
    qSELMarcasid: TLargeintField;
    qSELMarcasMarca: TStringField;
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
    qUPDEquipos: TZQuery;
    qUPDMarcas: TZQuery;
    qUPDTrabajos: TZQuery;
    TrabajosbEgreso: TLongintField;
    TrabajosbVisible: TLongintField;
    Trabajoscliente_id: TLongintField;
    TrabajosDetalle: TStringField;
    TrabajosDiagnostico: TStringField;
    Trabajosequipo_id: TLongintField;
    TrabajosfCompromiso: TDateTimeField;
    TrabajosfEgreso: TDateTimeField;
    TrabajosfIngreso: TDateTimeField;
    Trabajosid: TLongintField;
    procedure ClientesAfterInsert(DataSet: TDataSet);
    procedure EquiposAfterInsert(DataSet: TDataSet);
    procedure MarcasAfterInsert(DataSet: TDataSet);
    procedure TrabajosAfterInsert(DataSet: TDataSet);

  private
    procedure AbrirTablas;
  public
    procedure EquiposPendientes;
    procedure TrabajoInsertar;
    procedure TrabajoEditar (id: Integer);
    procedure TrabajoGrabar;
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

procedure TDM_Trabajos.EquiposAfterInsert(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('marca_id').asInteger:= 0;
    FieldByName('bVisible').asInteger:= 1;
  end;
end;

procedure TDM_Trabajos.MarcasAfterInsert(DataSet: TDataSet);
begin
   with DataSet do
  begin
    FieldByName('bVisible').asInteger:= 1;
  end;
end;

procedure TDM_Trabajos.TrabajosAfterInsert(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('fIngreso').AsDateTime:= Now;
    FieldByName('bEgreso').asInteger:= 0;
    FieldByName('bVisible').asInteger:= 1;
  end;
end;

procedure TDM_Trabajos.AbrirTablas;
begin
  DM_General.ReiniciarTabla(Equipos);
  DM_General.ReiniciarTabla(Clientes);
  DM_General.ReiniciarTabla(Marcas);
  DM_General.ReiniciarTabla(Trabajos);
end;

procedure TDM_Trabajos.EquiposPendientes;
begin
  with qPendientes do
  begin
    if active then close;
    Open;
  end;
end;

procedure TDM_Trabajos.TrabajoInsertar;
begin
  AbrirTablas;

end;

procedure TDM_Trabajos.TrabajoEditar(id: Integer);
begin
  AbrirTablas;

end;

procedure TDM_Trabajos.TrabajoGrabar;
begin
  DM_General.GrabarDatos(qSELClientes, qINSClientes, qUPDClientes, Clientes, 'id');
  DM_General.GrabarDatos(qSELEquipos, qINSEquipos, qUPDEquipos, Equipos, 'id');
  DM_General.GrabarDatos(qSELMarcas, qINSMarcas, qUPDMarcas, Marcas, 'id');
  DM_General.GrabarDatos(qSELTrabajo, qINSTrabajos, qUPDTrabajos, Trabajos, 'id');
end;

end.

