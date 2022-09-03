VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4380
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   6195
   ForeColor       =   &H000000FF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   4380
   ScaleWidth      =   6195
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton test 
      Caption         =   "2"
      CausesValidation=   0   'False
      Height          =   200
      Index           =   1
      Left            =   4320
      TabIndex        =   1
      Top             =   3480
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.OptionButton test 
      Caption         =   "1"
      CausesValidation=   0   'False
      Height          =   200
      Index           =   0
      Left            =   600
      TabIndex        =   0
      Top             =   2520
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.Shape tests 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FF0000&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   1
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   2160
      Width           =   135
   End
   Begin VB.Shape tests 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H000000FF&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   135
      Index           =   0
      Left            =   1920
      Shape           =   3  'Circle
      Top             =   2160
      Width           =   135
   End
   Begin VB.Menu testq 
      Caption         =   "1. test töltése"
      Index           =   0
   End
   Begin VB.Menu testq 
      Caption         =   "2. test töltése"
      Index           =   1
   End
   Begin VB.Menu pozicio 
      Caption         =   "Testek pozicionálása"
   End
   Begin VB.Menu kilep 
      Caption         =   "Kilépés"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim q, qt(0 To 1), i, ebe As Boolean
Private Function hossz(hossz1, hossz2) As Double
    If hossz1 > hossz2 Then
        If ebe Then
                hossz = -1 * e(hossz1 - hossz2)
            Else
                hossz = -1 * (hossz1 - hossz2)
        End If
     Else
        If ebe Then
                hossz = e(hossz2 - hossz1)
            Else
                hossz = (hossz2 - hossz1)
        End If
    End If
End Function

Private Function e(r) As Double
If r <> 0 Then e = -10000000# / Abs(r)
End Function

Private Sub Form_DblClick()
    ebe = Not ebe
End Sub

Private Sub Form_DragDrop(Source As Control, X As Single, Y As Single)
    Source.Move X, Y
End Sub

Private Sub Form_Load()
ebe = False
q = 10 ^ -9
qt(0) = 10 ^ 9
qt(1) = qt(0)
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Cls
For i = 0 To 1
    tests(i).Move test(i).Left, test(i).Top
    ex = rx
    ey = ry
    rx = hossz(test(i).Left, X)
    ry = hossz(test(i).Top, Y)
    'c = Sqr(rx ^ 2 + ry ^ 2)
    Me.ForeColor = RGB(i * 255, i * 255, 255)
    tests(i).FillColor = Me.ForeColor
    Me.Line (X, Y)-(X + rx, Y + ry)
Next i
    Me.ForeColor = vbRed
    Me.Line (X, Y)-(X + ex + rx, Y + ey + ry)
End Sub




Private Sub pozicio_Click()
    test_DblClick (0)
End Sub

Private Sub test_DblClick(Index As Integer)
    Dim j
    For j = 0 To 1
        test(j).Visible = Not test(j).Visible
        tests(j).Move test(j).Left, test(j).Top
    Next j
End Sub

Private Sub test_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    test(Index).Drag
End Sub

Private Sub testq_Click(Index As Integer)
    qt(Index) = InputBox("Kérem adja meg az " & Index + 1 & ". test töltést (C)", "Töltés megadása:", qt(Index))
End Sub
