unit frm_editarMarcas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DBGrids, Buttons
  ,dmtrabajos;

type

  { TfrmEditarMarcas }

  TfrmEditarMarcas = class(TForm)
    btnSalir: TBitBtn;
    btnBorrar: TBitBtn;
    ds_marcas: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    procedure btnBorrarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmEditarMarcas: TfrmEditarMarcas;

implementation
uses
  dmgeneral
  ;

{$R *.lfm}

{ TfrmEditarMarcas }

procedure TfrmEditarMarcas.btnBorrarClick(Sender: TObject);
begin
   if (MessageDlg ('ATENCION', 'Borro la marca seleccionada?', mtConfirmation, [mbYes, mbNo],0 ) = mrYes) then
    DM_Trabajos.BorrarMarca;

end;

procedure TfrmEditarMarcas.btnSalirClick(Sender: TObject);
begin
  DM_General.GrabarDatos(DM_Trabajos.qSELMarcas, DM_Trabajos.qINSMarcas, DM_Trabajos.qUPDMarcas, DM_Trabajos.Marcas, 'id');
  ModalResult:= mrOK;
end;

procedure TfrmEditarMarcas.FormShow(Sender: TObject);
begin
 // DM_Trabajos.Marcas.Insert;
end;

end.

