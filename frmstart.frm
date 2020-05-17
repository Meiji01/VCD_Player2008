VERSION 5.00
Begin VB.Form frmstart 
   BorderStyle     =   0  'None
   Caption         =   "Form3"
   ClientHeight    =   5400
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7545
   LinkTopic       =   "Form3"
   Picture         =   "frmstart.frx":0000
   ScaleHeight     =   5400
   ScaleWidth      =   7545
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   960
      Top             =   3600
   End
End
Attribute VB_Name = "frmstart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
Form1.Show
Form2.Show
Unload Me
End Sub
