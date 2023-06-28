VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form webdoga 
   AutoRedraw      =   -1  'True
   ClientHeight    =   5310
   ClientLeft      =   60
   ClientTop       =   60
   ClientWidth     =   8535
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "webdoga.frx":0000
   LinkTopic       =   "Form1"
   MinButton       =   0   'False
   ScaleHeight     =   5310
   ScaleWidth      =   8535
   StartUpPosition =   2  'CenterScreen
   WindowState     =   1  'Minimized
   Begin InetCtlsObjects.Inet net 
      Left            =   480
      Top             =   4200
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.Timer idozito 
      Interval        =   1
      Left            =   360
      Top             =   1440
   End
   Begin VB.PictureBox vezerlo_tarto 
      Align           =   1  'Align Top
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   8505
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   0
      Width           =   8535
      Begin VB.PictureBox gomb 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   690
         Index           =   5
         Left            =   7800
         Picture         =   "webdoga.frx":08CA
         ScaleHeight     =   690
         ScaleWidth      =   720
         TabIndex        =   9
         ToolTipText     =   "Kilépés"
         Top             =   0
         Width           =   720
      End
      Begin VB.PictureBox gomb 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   645
         Index           =   4
         Left            =   3240
         Picture         =   "webdoga.frx":0F92
         ScaleHeight     =   645
         ScaleWidth      =   705
         TabIndex        =   8
         ToolTipText     =   "Stop"
         Top             =   0
         Visible         =   0   'False
         Width           =   705
      End
      Begin VB.PictureBox gomb 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   645
         Index           =   3
         Left            =   2400
         Picture         =   "webdoga.frx":2804
         ScaleHeight     =   645
         ScaleWidth      =   705
         TabIndex        =   7
         ToolTipText     =   "Következõ oldal"
         Top             =   0
         Visible         =   0   'False
         Width           =   705
      End
      Begin VB.PictureBox gomb 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   645
         Index           =   2
         Left            =   840
         Picture         =   "webdoga.frx":4076
         ScaleHeight     =   645
         ScaleWidth      =   705
         TabIndex        =   6
         ToolTipText     =   "Elõzõ oldal"
         Top             =   0
         Visible         =   0   'False
         Width           =   705
      End
      Begin VB.PictureBox gomb 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   645
         Index           =   1
         Left            =   1680
         Picture         =   "webdoga.frx":58E8
         ScaleHeight     =   645
         ScaleWidth      =   705
         TabIndex        =   5
         ToolTipText     =   "Frissítés"
         Top             =   0
         Visible         =   0   'False
         Width           =   705
      End
      Begin VB.PictureBox gomb 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   645
         Index           =   0
         Left            =   0
         Picture         =   "webdoga.frx":715A
         ScaleHeight     =   645
         ScaleWidth      =   705
         TabIndex        =   4
         ToolTipText     =   "Kezdõlap"
         Top             =   0
         Visible         =   0   'False
         Width           =   705
      End
      Begin VB.Label ido 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "00:00:00"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   6480
         TabIndex        =   2
         Top             =   165
         Visible         =   0   'False
         Width           =   1215
      End
   End
   Begin SHDocVwCtl.WebBrowser web 
      Height          =   4335
      Left            =   1800
      TabIndex        =   0
      Top             =   840
      Width           =   6495
      ExtentX         =   11456
      ExtentY         =   7646
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   1
      RegisterAsDropTarget=   0
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Label uzenet 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Csatlakozás..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   555
      Left            =   1320
      TabIndex        =   3
      Top             =   2640
      Width           =   3255
   End
End
Attribute VB_Name = "webdoga"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Type POINTAPI
   X As Long
   Y As Long
End Type

Const HWND_TOPMOST = -1
Const HWND_NOTOPMOST = -2

Const SWP_NOSIZE = &H1
Const SWP_NOMOVE = &H2
Const SWP_NOACTIVATE = &H10
Const SWP_SHOWWINDOW = &H40

Const SW_SHOWNORMAL = 1
Const DolgUrl = "http://www.gyakg.u-szeged.hu/elearning/meres.php"

'Api-k deklarálása
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Declare Function WindowFromPoint Lib "user32" (ByVal xPoint As Long, ByVal yPoint As Long) As Long
Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Private Declare Function GetWindow Lib "user32" (ByVal hWnd As Long, ByVal wCmd As Long) As Long
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hWnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Private Declare Function SetWindowText Lib "user32" Alias "SetWindowTextA" (ByVal hWnd As Long, ByVal lpString As String) As Long

Private k_left As Single, k_top As Single

Private kezdolap As String, Megvan As Boolean
Private uccsogomb As Byte

'Közös változók

Private Sub Form_Load()
    SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
    Maximalizal
    
    web.Visible = False
    ido.Visible = True
    k_left = Me.Left
    k_top = Me.Top
    
    kezdolap = net.OpenURL(DolgUrl)
    
End Sub

Private Sub Form_LostFocus()
    Me.SetFocus
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    alaphelyzet
End Sub

Private Sub Form_Resize()
On Error Resume Next
    web.Move 25, vezerlo_tarto.Height, Me.ScaleWidth - 50, Me.ScaleHeight - 750
    
    gomb(5).Move vezerlo_tarto.Width - gomb(5).Width, 0
    ido.Move gomb(5).Left - ido.Width
    
    uzenet.Move (Me.ScaleWidth - uzenet.Width) / 2, (Me.ScaleHeight - uzenet.Height) / 2
    
   ' html.Move web.Left, web.Top, web.he
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

Private Sub gomb_Click(Index As Integer)
    On Error Resume Next
    alaphelyzet
    Select Case Index
        Case 0
            web.Navigate2 kezdolap
        Case 1
            web.Refresh2
        Case 2
        'On Error Resume Next
            'MsgBox web.LocationURL
            If (web.LocationURL <> kezdolap) And (web.LocationURL <> kezdolap & "/") Then
                web.GoBack
            End If
        Case 3
        'On Error Resume Next
            web.GoForward
        Case 4
            web.Stop
        Case 5
            If MsgBox("Valóban ki akarsz lépni a böngészõbõl?", vbYesNo + vbQuestion, "Kilépés...") = vbYes Then
                End
            End If
    End Select
End Sub

Private Sub gomb_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If uccsogomb <> 255 Then
        gomb(uccsogomb).Cls
    End If
    
    With gomb(Index)
        .Cls
        .PaintPicture .Picture, 30, 30
    End With
    uccsogomb = Index
End Sub

Private Sub ido_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    alaphelyzet
End Sub

Private Sub idozito_Timer()
Dim i As Integer

    If Me.Left <> k_left Or Me.Top <> k_top Then
        SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
        Maximalizal
    End If
        
        If net.StillExecuting And Megvan = False Then
                uzenet.Caption = "Csatlakozás..."
            Else
                If kezdolap <> "" Then
                    If Megvan = False Then
                        Megvan = True
                        web.Navigate2 kezdolap
                        uzenet.Caption = "Megnyitás..."
                    End If
                    If Not web.Busy Then
                        'A csatlakozás befejezõdött:
                        
                        web.Visible = True
                        For i = 0 To 4
                            gomb(i).Visible = True
                        Next i
                        'gomb(2).Enabled = False
                        'gomb(3).Enabled = False
                    End If
                    'web.Visible = True
                Else
                    uzenet.Caption = "A Csatlakozás nem lehetséges."
                    Form_Resize
                End If
        End If
    
    
    ido.Caption = Time()
End Sub

Private Sub Maximalizal()
On Error Resume Next
'Dim aktiv As Object
    Me.WindowState = vbNormal
    Me.Move 0, 0, Screen.Width, Screen.Height
    Me.WindowState = vbMaximized
    'Me.ActiveControl.SetFocus
    Me.SetFocus
End Sub

Private Sub alaphelyzet()
Dim i As Integer
    If uccsogomb <> 255 Then
        For i = 0 To gomb.Count - 1
            With gomb(i)
                .Cls
                '.PaintPicture .Picture, 0, 0
            End With
        Next i
        uccsogomb = 255
    End If
End Sub

Private Sub vezerlo_tarto_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    alaphelyzet
End Sub

