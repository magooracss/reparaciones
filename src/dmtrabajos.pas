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
    Clientesemail: TStringField;
    ClientesNotas: TStringField;
    Equipos: TRxMemoryData;
    ClientesbVisible: TLongintField;
    Clientesdocumento: TStringField;
    ClientesDomicilio: TStringField;
    Clientesid: TLongintField;
    ClientesNombre: TStringField;
    ClientesOrganizacion: TStringField;
    ClientesTelefono: TStringField;
    Marcas: TRxMemoryData;
    EquiposbVisible: TLongintField;
    Equiposid: TLongintField;
    EquiposMarca: TStringField;
    Equiposmarca_id: TLongintField;
    Equiposmodelo: TStringField;
    Equiposnotas: TStringField;
    EquiposnSerie: TStringField;
    MarcasbVisible: TLongintField;
    Marcasid: TLongintField;
    Marcasmarca: TStringField;
    qBUSClientes: TZQuery;
    qBUSClientesbVisible: TLargeintField;
    qBUSClientesdocumento: TStringField;
    qBUSClientesDomicilio: TStringField;
    qBUSClientesemail: TStringField;
    qBUSClientesid: TLargeintField;
    qBUSClientesNombre: TStringField;
    qBUSClientesnotas: TStringField;
    qBUSClientesOrganizacion: TStringField;
    qBUSClientesTelefono: TStringField;
    qPendientesTrabajoID: TLargeintField;
    qLevantarMarcas: TZQuery;
    qSELMarcasbVisible1: TLargeintField;
    qSELMarcasid1: TLargeintField;
    qSELMarcasMarca1: TStringField;
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
    qSELClientesbVisible12: TLargeintField;
    qSELClientesbVisible13: TLargeintField;
    qSELClientesdocumento12: TStringField;
    qSELClientesdocumento13: TStringField;
    qSELClientesDomicilio12: TStringField;
    qSELClientesDomicilio13: TStringField;
    qSELClientesemail12: TStringField;
    qSELClientesemail13: TStringField;
    qSELClientesid12: TLargeintField;
    qSELClientesid13: TLargeintField;
    qSELClientesNombre12: TStringField;
    qSELClientesNombre13: TStringField;
    qSELClientesnotas12: TStringField;
    qSELClientesnotas13: TStringField;
    qSELClientesOrganizacion12: TStringField;
    qSELClientesOrganizacion13: TStringField;
    qSELClientesTelefono12: TStringField;
    qSELClientesTelefono13: TStringField;
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
    procedure Buscar (elWhere: string);
  public
    procedure EquiposPendientes;
    procedure TrabajoInsertar;
    procedure TrabajoEditar (id: Integer);
    procedure TrabajoGrabar;

    procedure LevantarMarcas;

    procedure BuscarApyNombre (dato: string; DesdeElPrincipio: Boolean);
    procedure BuscarOrganismo (dato: string; DesdeElPrincipio: Boolean);
    procedure BuscarDocumento (dato: string; DesdeElPrincipio: Boolean);
    procedure BuscarTelefono (dato: string; DesdeElPrincipio: Boolean);
    procedure BuscarEmail (dato: string; DesdeElPrincipio: Boolean);

    procedure CargarClienteID (id: integer);

    procedure BorrarMarca;
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
    FieldByName('cliente_id').asInteger:= Clientesid.asInteger;
    FieldByName('equipo_id').asInteger:= Equiposid.asInteger;
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
  Trabajos.Insert;
end;

procedure TDM_Trabajos.TrabajoEditar(id: Integer);
begin
  AbrirTablas;

  With qSELTrabajo do
  begin
    if active then close;
    ParamByName('id').asInteger:= id;
    Open;
    Trabajos.LoadFromDataSet(qSELTrabajo, 0, lmAppend);
    close;
  end;
  With qSELClientes do
  begin
    if active then close;
    ParamByName('id').asInteger:= Trabajoscliente_id.asInteger;
    Open;
    Clientes.LoadFromDataSet(qSELClientes, 0, lmAppend);
    close;
  end;
  With qSELEquipos do
  begin
    if active then close;
    ParamByName('id').asInteger:= Trabajosequipo_id.asInteger;
    Open;
    Equipos.LoadFromDataSet(qSELEquipos, 0, lmAppend);
    close;
  end;
  Clientes.Edit;
  Equipos.Edit;
  Trabajos.Edit;
end;

procedure TDM_Trabajos.TrabajoGrabar;
begin
  With Trabajos do
  begin
    Edit;
    Trabajosequipo_id.AsInteger:= Equiposid.AsInteger;
    Trabajoscliente_id.AsInteger:= Clientesid.AsInteger;
    Post;
  end;
  DM_General.GrabarDatos(qSELClientes, qINSClientes, qUPDClientes, Clientes, 'id');
  DM_General.GrabarDatos(qSELEquipos, qINSEquipos, qUPDEquipos, Equipos, 'id');
  DM_General.GrabarDatos(qSELMarcas, qINSMarcas, qUPDMarcas, Marcas, 'id');
  DM_General.GrabarDatos(qSELTrabajo, qINSTrabajos, qUPDTrabajos, Trabajos, 'id');
end;

procedure TDM_Trabajos.LevantarMarcas;
begin
  DM_General.ReiniciarTabla(Marcas);
  with qLevantarMarcas do
  begin
    if active then close;
    Open;
    Marcas.LoadFromDataSet(qLevantarMarcas, 0, lmAppend);
    close;
  end;
end;

(*******************************************************************************
*** Búsquedas
********************************************************************************)

procedure TDM_Trabajos.Buscar(elWhere: string);
var
  elSQL: string;
begin
  elSQL:= 'SELECT * FROM Clientes ';
  with qBUSClientes do
  begin
    if active then Close;
    SQL.Clear;
    SQL.Add(elSQL);
    SQL.Add(elWhere);
    Open;
  end;
end;


procedure TDM_Trabajos.BuscarApyNombre(dato: string; DesdeElPrincipio: Boolean);
begin
  if DesdeElPrincipio then
   Buscar ('WHERE Nombre LIKE ''' + dato + '%''')
  else
   Buscar ('WHERE Nombre LIKE ''%' + dato + '%''')
end;

procedure TDM_Trabajos.BuscarOrganismo(dato: string; DesdeElPrincipio: Boolean);
begin
  if DesdeElPrincipio then
   Buscar ('WHERE Organizacion LIKE ''' + dato + '%''')
  else
   Buscar ('WHERE Organizacion LIKE ''%' + dato + '%''')
end;

procedure TDM_Trabajos.BuscarDocumento(dato: string; DesdeElPrincipio: Boolean);
begin
  if DesdeElPrincipio then
   Buscar ('WHERE Documento LIKE ''' + dato + '%''')
  else
   Buscar ('WHERE Documento LIKE ''%' + dato + '%''')
end;

procedure TDM_Trabajos.BuscarTelefono(dato: string; DesdeElPrincipio: Boolean);
begin
  if DesdeElPrincipio then
   Buscar ('WHERE Telefono LIKE ''' + dato + '%''')
  else
   Buscar ('WHERE Telefono LIKE ''%' + dato + '%''')
end;

procedure TDM_Trabajos.BuscarEmail(dato: string; DesdeElPrincipio: Boolean);
begin
  if DesdeElPrincipio then
   Buscar ('WHERE Email LIKE ''' + dato + '%''')
  else
   Buscar ('WHERE Email LIKE ''%' + dato + '%''')
end;

(*******************************************************************************
*** Carga de datos
********************************************************************************)

procedure TDM_Trabajos.CargarClienteID(id: integer);
begin
  with qSELClientes do
  begin
    DM_General.ReiniciarTabla(Clientes);
    if Active then close;
    ParamByName('id').asInteger:= id;
    Open;
    Clientes.LoadFromDataSet(qSELClientes, 0, lmAppend);
    Close;
  end;
end;

(*******************************************************************************
*** Borrado
********************************************************************************)

procedure TDM_Trabajos.BorrarMarca;
begin
  with qDELMarcas do
  begin
    ParamByName('id').AsInteger:= Marcasid.asInteger;
    ExecSQL;
  end;
  Marcas.Delete;
end;

end.

