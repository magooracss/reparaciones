program reparaciones;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, rxnew, zcomponent, frm_principal, dmgeneral, SD_Configuracion, 
dmtrabajos, frm_trabajoae
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Reparaciones';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TDM_General, DM_General);
  Application.CreateForm(TDM_Trabajos, DM_Trabajos);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTrabajoAE, frmTrabajoAE);
  Application.Run;
end.

