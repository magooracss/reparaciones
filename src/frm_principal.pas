unit frm_principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  DBGrids, ActnList, dmgeneral;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    TrEgreso: TAction;
    TrIngreso: TAction;
    ActionList1: TActionList;
    ds_pendientes: TDataSource;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure TrIngresoExecute(Sender: TObject);
  private
    procedure PantallaTrabajo(id: integer);
  public
    { public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
{$R *.lfm}
uses
  dmtrabajos
  ,frm_trabajoae
  ;

{ TfrmPrincipal }

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  DM_Trabajos.EquiposPendientes;
end;

procedure TfrmPrincipal.PantallaTrabajo(id: integer);
var
  pant: TfrmTrabajoAE;
begin
  pant:= TfrmTrabajoAE.Create(self);
  try
    pant.idTrabajo:= id;
    pant.ShowModal;
  finally
    pant.free;
  end;
end;

(*Ingreso de un nuevo equipo al taller*)
procedure TfrmPrincipal.TrIngresoExecute(Sender: TObject);
begin
  PantallaTrabajo(ID_NULO);
end;


end.

