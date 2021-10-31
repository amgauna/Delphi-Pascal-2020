program ImageView;

uses
   Form,
   ImageWiew in "imagewin.pas" {ImageForm},
   viewWin   in "viewwin.pas" {ViewForm};
   
   {R$ *.RES}  
   
   begin
      Application.CreateForm(TImageform, Imageform);
      Application.Createform(TViewform, Viewform);
      Application.Run
   end.
   
