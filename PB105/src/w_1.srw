$PBExportHeader$w_1.srw
forward
global type w_1 from window
end type
type st_1 from statictext within w_1
end type
end forward

global type w_1 from window
integer width = 1751
integer height = 1268
boolean titlebar = true
string title = "Window 1 for lib1.pbd"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_1 st_1
end type
global w_1 w_1

on w_1.create
this.st_1=create st_1
this.Control[]={this.st_1}
end on

on w_1.destroy
destroy(this.st_1)
end on

type st_1 from statictext within w_1
integer x = 183
integer y = 224
integer width = 1097
integer height = 512
integer textsize = -28
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "window 1"
boolean focusrectangle = false
end type

