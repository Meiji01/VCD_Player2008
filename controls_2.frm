VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form2 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Control Panel"
   ClientHeight    =   5355
   ClientLeft      =   8595
   ClientTop       =   1590
   ClientWidth     =   5280
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5355
   ScaleWidth      =   5280
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame3 
      Caption         =   "F&ile Manager"
      Height          =   1335
      Left            =   240
      TabIndex        =   8
      Top             =   3840
      Width           =   4815
      Begin VB.CommandButton cmdurl 
         Caption         =   "..."
         Height          =   255
         Left            =   4080
         TabIndex        =   10
         ToolTipText     =   "Browse file"
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label5 
         Caption         =   "This program uses Windows Media Player."
         Height          =   255
         Left            =   1680
         TabIndex        =   14
         Top             =   960
         Width           =   3015
      End
      Begin VB.Label lblurl 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "&URL"
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   480
         Width           =   3735
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "&Main Controls"
      Height          =   1215
      Left            =   240
      TabIndex        =   11
      Top             =   2520
      Width           =   4815
      Begin VB.CommandButton cmdrewind 
         Enabled         =   0   'False
         Height          =   735
         Left            =   2760
         Picture         =   "controls_2.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Rewind"
         Top             =   240
         Width           =   735
      End
      Begin VB.CommandButton cmdfast 
         Enabled         =   0   'False
         Height          =   735
         Left            =   3480
         Picture         =   "controls_2.frx":1DF2
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Forward"
         Top             =   240
         Width           =   735
      End
      Begin VB.CommandButton cmdstop 
         Enabled         =   0   'False
         Height          =   735
         Left            =   2040
         Picture         =   "controls_2.frx":3BE4
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Stop"
         Top             =   240
         Width           =   735
      End
      Begin VB.CommandButton cmdpause 
         Enabled         =   0   'False
         Height          =   735
         Left            =   1320
         Picture         =   "controls_2.frx":59D6
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Pause"
         Top             =   240
         Width           =   735
      End
      Begin VB.CommandButton cmdplay 
         Height          =   735
         Left            =   600
         Picture         =   "controls_2.frx":77C8
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Play"
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "&Audio Manager"
      Height          =   2295
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5055
      Begin ComctlLib.Slider Slider1 
         Height          =   255
         Left            =   840
         TabIndex        =   16
         Top             =   720
         Width           =   3855
         _ExtentX        =   6800
         _ExtentY        =   450
         _Version        =   327682
         LargeChange     =   2
         Min             =   -5
         Max             =   5
      End
      Begin VB.VScrollBar VScroll1 
         Height          =   1215
         Left            =   120
         Max             =   0
         Min             =   100
         TabIndex        =   15
         Top             =   720
         Value           =   100
         Width           =   255
      End
      Begin MSComDlg.CommonDialog dia 
         Left            =   1800
         Top             =   1200
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Label Label4 
         Caption         =   "Report a bug? E-mail me: mracpan@Yahoo.com"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   1320
         TabIndex        =   13
         Top             =   1920
         Width           =   3615
      End
      Begin VB.Label Label3 
         Caption         =   "Easy Playing Videos by: Mei Joure Racpan"
         Height          =   495
         Left            =   3240
         TabIndex        =   12
         Top             =   1320
         Width           =   1575
      End
      Begin VB.Label Label2 
         Caption         =   "&Volume"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "&Balance"
         Height          =   255
         Left            =   2400
         TabIndex        =   2
         Top             =   480
         Width           =   615
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdfast_Click()
Form1.player.Controls.fastForward
cmdplay.Enabled = True
cmdfast.Enabled = False
cmdstop.Enabled = False
cmdpause.Enabled = False
End Sub

Private Sub cmdpause_Click()
Form1.player.Controls.pause
Form1.Caption = "Meij Video Player 2008 (Paused)"
cmdplay.Enabled = True
cmdpause.Enabled = False
End Sub

Private Sub cmdplay_Click()
Form1.player.Controls.play
VScroll1.Value = Form1.player.settings.volume
End Sub

Private Sub cmdrewind_Click()
Form1.player.Controls.fastReverse
cmdplay.Enabled = True
cmdrewind.Enabled = False
cmdstop.Enabled = False
cmdpause.Enabled = False
End Sub

Private Sub cmdstop_Click()
Form1.player.Controls.stop
End Sub

Private Sub cmdurl_Click()
flt1 = "VCD files (*.dat) | *.dat"
flt2 = "MPEG files (*.mpeg) | *.mpeg"
flt3 = "Windows media Video files (*.wmv) | *.wmv"
flt4 = "DVD files (*.vob) | *.vob"
flt5 = "All files (*.*) | *.*"
dia.Filter = flt1 & "|" & flt2 & "|" & flt3 & "|" & flt4 & "|" & flt5
dia.ShowOpen
lblurl.Caption = dia.FileName
Form1.player.URL = lblurl.Caption
cmdplay.Enabled = True
End Sub

Private Sub Slider1_Click()
Form1.player.settings.balance = Slider1.Value
End Sub

Private Sub VScroll1_Change()
Form1.player.settings.volume = VScroll1.Value
End Sub

