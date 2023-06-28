Attribute VB_Name = "modul"
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Public Sub FormDrag(TheForm As Form)
   ReleaseCapture
   SendMessage TheForm.hWnd, &HA1, 2, 0&
End Sub
