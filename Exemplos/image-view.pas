program ImageView;

uses
    Forms,
    ImageView in "imagewin.pas' {ImageForm},
    ViewWin in 'viewwin.pas' {ViewForm};
    
{$R *.RES}
begin
     Application.CreateForm(TImageForm, ImageForm);
     Application.CreateForm(TViewForm, ViewForm);
     Application.Run;
end.
    
