$PBExportHeader$w_2.srw
forward
global type w_2 from window
end type
type st_1 from statictext within w_2
end type
end forward

global type w_2 from window
integer width = 1477
integer height = 616
boolean titlebar = true
string title = "window 2 for lib 2"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_1 st_1
end type
global w_2 w_2

on w_2.create
this.st_1=create st_1
this.Control[]={this.st_1}
end on

on w_2.destroy
destroy(this.st_1)
end on

type st_1 from statictext within w_2
integer x = 219
integer y = 160
integer width = 1061
integer height = 192
integer textsize = -26
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "window 2"
boolean focusrectangle = false
end type

