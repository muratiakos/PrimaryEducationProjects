VERSION 5.00
Begin VB.Form dobas 
   AutoRedraw      =   -1  'True
   Caption         =   "Test hajítása..."
   ClientHeight    =   5625
   ClientLeft      =   165
   ClientTop       =   1110
   ClientWidth     =   8355
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   5625
   ScaleWidth      =   8355
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer ora 
      Left            =   360
      Top             =   840
   End
   Begin VB.Frame opciok 
      Caption         =   "Értékek:"
      Height          =   2295
      Left            =   2280
      TabIndex        =   1
      Top             =   1440
      Visible         =   0   'False
      Width           =   2775
      Begin VB.TextBox ertek 
         Height          =   285
         Index           =   3
         Left            =   1440
         MaxLength       =   3
         TabIndex        =   11
         Text            =   "10"
         Top             =   1560
         Width           =   375
      End
      Begin VB.CommandButton megse 
         Caption         =   "Mégse"
         Height          =   255
         Left            =   1440
         TabIndex        =   9
         Top             =   1920
         Width           =   735
      End
      Begin VB.CommandButton ok 
         Caption         =   "OK"
         Default         =   -1  'True
         Height          =   255
         Left            =   360
         TabIndex        =   8
         Top             =   1920
         Width           =   735
      End
      Begin VB.TextBox ertek 
         Height          =   285
         Index           =   2
         Left            =   1440
         MaxLength       =   3
         TabIndex        =   7
         Text            =   "1"
         Top             =   1200
         Width           =   375
      End
      Begin VB.TextBox ertek 
         Height          =   285
         Index           =   1
         Left            =   1440
         MaxLength       =   3
         TabIndex        =   5
         Text            =   "50"
         Top             =   840
         Width           =   375
      End
      Begin VB.TextBox ertek 
         Height          =   285
         Index           =   0
         Left            =   1440
         MaxLength       =   2
         TabIndex        =   3
         Text            =   "45"
         Top             =   480
         Width           =   375
      End
      Begin VB.Label cimke 
         Caption         =   "Nagyítás:"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   10
         Top             =   1560
         Width           =   1215
      End
      Begin VB.Label cimke 
         Caption         =   "Idõ intervallum:"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   6
         Top             =   1200
         Width           =   1335
      End
      Begin VB.Label cimke 
         Caption         =   "Kezdõ sebesség:"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   4
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label cimke 
         Caption         =   "£ szög fokban:"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   2
         Top             =   480
         Width           =   1095
      End
   End
   Begin VB.OptionButton test 
      Caption         =   "0 m/s"
      Height          =   195
      Left            =   120
      TabIndex        =   0
      Top             =   4200
      Width           =   5775
   End
   Begin VB.Line fold 
      X1              =   120
      X2              =   7200
      Y1              =   4440
      Y2              =   4440
   End
   Begin VB.Menu mnu 
      Caption         =   "&Hajítás - [ENTER]"
      Index           =   0
   End
   Begin VB.Menu mnu 
      Caption         =   "&Beállítások - [CTRL] + [B]"
      Index           =   1
   End
   Begin VB.Menu mnu 
      Caption         =   "&Újra kezd - [CTRL] + [U]"
      Index           =   2
   End
   Begin VB.Menu mnu 
      Caption         =   "&Törlés"
      Index           =   3
   End
   Begin VB.Menu mnu 
      Caption         =   "&Idõzítõ"
      Index           =   4
   End
   Begin VB.Menu mnu 
      Caption         =   "&Névjegy"
      Index           =   5
   End
   Begin VB.Menu mnu 
      Caption         =   "&Kilépés"
      Index           =   6
   End
End
Attribute VB_Name = "dobas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim v, a, t, g, c As Double
Dim i, j, torzit As Integer
Dim vege As Boolean
Dim szin As ColorConstants

Private Sub ertek_LostFocus(Index As Integer)
On Error Resume Next
    If ertek(Index).Text = "" Or ertek(Index) < 0 Or IsNumeric(ertek(Index).Text) = False Then
        MsgBox "Ide csak számot adhat meg!", vbInformation, "Hibás érték!"
        Select Case Index
            Case 0
                j = 45
            Case 1
                j = 50
            Case 2
                j = 1
            Case 3
                j = 10
        End Select
        ertek(Index).Text = j
    End If
    
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
'MsgBox KeyAscii
Select Case KeyAscii
    Case 13 And opciok.Visible = False
        ora.Enabled = True
        mozgat
    Case 32 And opciok.Visible = False
        mozgat
    Case 21 And opciok.Visible = False
        ok_Click
    Case 2
        opciok.Visible = True
End Select
End Sub


Private Sub Form_Load()
ok_Click
End Sub

Private Sub Form_Resize()
mnu_Click (3)
pozicional
ok_Click
End Sub
Private Sub mozgat()
Dim x0, y0, x1, y1 As Double
On Error Resume Next
If vege Then Exit Sub
If v > 0 Then
    x0 = Int(Cos(a) * v)
    y0 = Int(Sin(a) * v)
    
    For i = 0 To torzit
        
        test.Left = test.Left + x0
        test.Top = test.Top - y0
        Circle (test.Left, test.Top), 10, szin
        
        For j = 1 To 100000: Next j
        
        If test.Top >= fold.y1 - test.Height Then
            vege = True
            ora.Interval = False
            Exit Sub
        End If
    Next i
    test.Caption = v & " m/s"

    y1 = y0 - (g * t)
    
    a = Atn(y1 / x0)
    v = y1 / Sin(a)
    'v = v - (c * v ^ 2)
Else
    If v = 0 Then
            'MsgBox "v = 0"
        Else
           v = Mid(test.Caption, 1, Len(test.Caption) - 4)
           v = v - (g * t) / 3
            For i = 1 To torzit
                test.Top = test.Top + (g * t)
            Next i
            test.Caption = v & " m/s"
           
    End If
End If
End Sub

Private Sub megse_Click()
ertek(0) = (360 * a) / (2 * 3.141592654)
ertek(1) = v
ertek(2) = t
opciok.Visible = False
End Sub

Private Sub mnu_Click(Index As Integer)
Select Case Index
    Case 0
        Form_KeyPress (13)
    Case 1
        Form_KeyPress (2)
    Case 2
        Form_KeyPress (21)
    Case 3
        dobas.Cls
    Case 4
be:
        i = InputBox("Kérem adja meg az idõintervallumot miliszekundumokban:", "Idõzítõ:", ora.Interval)
        If i <> "" Or IsNumeric(i) = True Then
            ora.Interval = i
            'ora.Enabled = False
         Else
                GoTo be
        End If
    Case 5
        MsgBox "Test hajítása szorgalmi", vbInformation, "Muráti Ákos"
    Case 6
        Unload Me
End Select

End Sub

Private Sub ok_Click()
a = radianba(ertek(0).Text)
t = ertek(2).Text
v = ertek(1).Text
torzit = ertek(3)
g = 10
vege = False
opciok.Visible = False
ora.Enabled = False
pozicional
szin = RGB(Rnd * 255, Rnd * 255, Rnd * 255)
c = 0.02
'dobas.Cls
End Sub
Private Function radianba(fok As Double)
    radianba = (2 * 3.141592654 * fok) / 360
End Function

Private Sub ora_Timer()
mozgat
End Sub
Private Sub pozicional()
fold.x1 = 0
fold.X2 = Me.ScaleWidth
fold.y1 = Me.ScaleHeight - 100
fold.Y2 = Me.ScaleHeight - 100

test.Top = fold.y1 - test.Height
test.Left = 120
test.Caption = 0 & " m/s"
vege = False

opciok.Left = (Me.ScaleWidth - opciok.Width) / 2
opciok.Top = (Me.ScaleHeight - opciok.Height) / 2
End Sub
