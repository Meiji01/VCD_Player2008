Attribute VB_Name = "Module1"
Public Sub playing(comnt As String, disablebtn As Boolean)
Form1.Caption = "Meij Video Player 2008 " & comnt
Form2.cmdplay.Enabled = Not disablebtn
Form2.cmdpause.Enabled = disablebtn
Form2.cmdstop.Enabled = disablebtn
Form2.cmdfast.Enabled = disablebtn
Form2.cmdrewind.Enabled = disablebtn
Form2.cmdurl.Enabled = Not disablebtn
End Sub

