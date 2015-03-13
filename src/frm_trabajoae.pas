unit frm_TrabajoAE;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, DbCtrls;

type

  { TfrmTrabajoAE }

  TfrmTrabajoAE = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    ds_Clientes: TDataSource;
    gbCliente: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
  private
    _trabajo_id: integer;
    { private declarations }
  public
    property idTrabajo: integer read _trabajo_id write _trabajo_id;
  end;

var
  frmTrabajoAE: TfrmTrabajoAE;

implementation

{$R *.lfm}

end.

