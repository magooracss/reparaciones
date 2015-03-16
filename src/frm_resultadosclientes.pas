unit frm_resultadosClientes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DBGrids, Buttons, dmtrabajos;

type

  { TfrmResultadosClientes }

  TfrmResultadosClientes = class(TForm)
    btnCancelar: TBitBtn;
    btnSalir: TBitBtn;
    ds_resultados: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure FormShow(Sender: TObject);
  private
    _IdCliente: integer;
  public
    property idCliente: integer read _IdCliente;
  end;

var
  frmResultadosClientes: TfrmResultadosClientes;

implementation

{$R *.lfm}

{ TfrmResultadosClientes }

procedure TfrmResultadosClientes.btnCancelarClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TfrmResultadosClientes.btnSalirClick(Sender: TObject);
begin
  ModalResult:= mrOK;
end;

procedure TfrmResultadosClientes.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key= 13 then
  begin
    _IdCliente:= DM_Trabajos.qBUSClientesid.AsInteger;
    ModalResult:= mrOk;
  end;

end;

procedure TfrmResultadosClientes.FormShow(Sender: TObject);
begin
  _IdCliente:= DM_Trabajos.qBUSClientesid.AsInteger;
end;



end.

