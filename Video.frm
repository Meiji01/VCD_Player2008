VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Meij Video Player 2008"
   ClientHeight    =   5025
   ClientLeft      =   2085
   ClientTop       =   1905
   ClientWidth     =   6420
   Icon            =   "Video.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5025
   ScaleWidth      =   6420
   Begin WMPLibCtl.WindowsMediaPlayer player 
      Height          =   5040
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6420
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   0   'False
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "none"
      stretchToFit    =   -1  'True
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   0   'False
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   11324
      _cy             =   8890
   End
   Begin VB.Menu mnucontrols 
      Caption         =   "&Controls"
      Begin VB.Menu subshow 
         Caption         =   "&Showcontrols"
         Checked         =   -1  'True
         Shortcut        =   {F2}
      End
   End
   Begin VB.Menu mnuhelp 
      Caption         =   "&Help"
      Begin VB.Menu subabout 
         Caption         =   "&About"
         Shortcut        =   {F1}
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Resize()
player.Height = Form1.Height
player.Width = Form1.Width
If Form1.WindowState = 1 Then Form2.Hide
If Form1.WindowState = 0 Then Form2.Show
End Sub

Private Sub Form_Unload(cancel As Integer)
End
End Sub

Private Sub player_StatusChange()
If player.playState = wmppsStopped Then
Call playing("Stopped", False)
End If
If player.playState = wmppsPlaying Then
Call playing("Playing", True)
End If
End Sub

Private Sub subabout_Click()
MsgBox "Thanks for purchasing my work.... by: Meij", vbInformation, "About"
MsgBox "This program won't work without Windows Media Component installed on your computer", vbOKOnly, "!!!"
MsgBox "Created by: Mei Joure Racpan...", vbInformation, "Meij"
End Sub

Private Sub subshow_Click()
If Form2.Visible = True Then
Form2.Hide
subshow.Checked = False
Else
Form2.Show
subshow.Checked = True
End If
End Sub
