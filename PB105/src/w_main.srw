$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_2 from commandbutton within w_main
end type
type cb_3 from commandbutton within w_main
end type
type st_1 from statictext within w_main
end type
type cb_addlib from commandbutton within w_main
end type
type sle_lib from singlelineedit within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 1989
integer height = 540
boolean titlebar = true
string title = "Dynamic Add Library"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_3 cb_3
st_1 st_1
cb_addlib cb_addlib
sle_lib sle_lib
cb_1 cb_1
end type
global w_main w_main

on w_main.create
this.cb_2=create cb_2
this.cb_3=create cb_3
this.st_1=create st_1
this.cb_addlib=create cb_addlib
this.sle_lib=create sle_lib
this.cb_1=create cb_1
this.Control[]={this.cb_2,&
this.cb_3,&
this.st_1,&
this.cb_addlib,&
this.sle_lib,&
this.cb_1}
end on

on w_main.destroy
destroy(this.cb_2)
destroy(this.cb_3)
destroy(this.st_1)
destroy(this.cb_addlib)
destroy(this.sle_lib)
destroy(this.cb_1)
end on

type cb_2 from commandbutton within w_main
integer x = 1353
integer y = 224
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Get Library"
end type

event clicked;String ls_lib
ls_lib = GetLibraryList()

messagebox("Warning", ls_lib)
end event

type cb_3 from commandbutton within w_main
integer x = 805
integer y = 224
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "window 2"
end type

event clicked;
ClassDefinition lcd_win
lcd_win = Findclassdefinition("w_2")
if Isnull(lcd_win) Then
	MessageBox("Warning", "Window 2 not found")
Else
	Open(w_2)
End If

end event

type st_1 from statictext within w_main
integer x = 73
integer y = 64
integer width = 215
integer height = 96
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Library:"
boolean focusrectangle = false
end type

type cb_addlib from commandbutton within w_main
integer x = 1353
integer y = 64
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Add Library"
end type

event clicked;

// already compiled 
If Handle(GetApplication()) <> 0 Then
	String ls_librarylist, ls_library
	Int li_FileNum
	ls_librarylist = GetLibraryList ()
	ls_library = sle_lib.Text
	If IsNull(ls_library) Then ls_library = ""
	If Len(ls_library) <= 0 Then Return
	If Pos(ls_librarylist,ls_library) > 0 Then Return
	AddToLibraryList(ls_library)
	
End If
end event

type sle_lib from singlelineedit within w_main
integer x = 293
integer y = 64
integer width = 1061
integer height = 96
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_main
integer x = 256
integer y = 224
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "window 1"
end type

event clicked;
ClassDefinition lcd_win
lcd_win = Findclassdefinition("w_1")
if Isnull(lcd_win) Then
	MessageBox("Warning", "Window 1 Not found")
Else
	Open(w_1)
End If

end event

