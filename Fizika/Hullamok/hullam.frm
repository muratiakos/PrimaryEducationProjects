VERSION 5.00
Begin VB.Form hullam 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   Caption         =   "egyeni hullam"
   ClientHeight    =   3255
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4800
   ForeColor       =   &H0000C000&
   LinkTopic       =   "Form1"
   ScaleHeight     =   3255
   ScaleWidth      =   4800
   Begin VB.Frame menusor 
      BackColor       =   &H00808080&
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   -120
      Width           =   5175
      Begin VB.TextBox eltolas 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Height          =   285
         Left            =   3600
         MaxLength       =   5
         TabIndex        =   7
         Text            =   "0"
         Top             =   120
         Width           =   735
      End
      Begin VB.TextBox amplitudo 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Height          =   285
         Left            =   480
         MaxLength       =   5
         TabIndex        =   2
         Text            =   "10"
         Top             =   120
         Width           =   735
      End
      Begin VB.TextBox frekvencia 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Height          =   285
         Left            =   2040
         MaxLength       =   5
         TabIndex        =   1
         Text            =   "10"
         Top             =   120
         Width           =   735
      End
      Begin VB.Label cimke 
         BackStyle       =   0  'Transparent
         Caption         =   "fok"
         Height          =   255
         Index           =   5
         Left            =   4440
         TabIndex        =   9
         Top             =   120
         Width           =   255
      End
      Begin VB.Label cimke 
         BackStyle       =   0  'Transparent
         Caption         =   "£="
         Height          =   255
         Index           =   4
         Left            =   3360
         TabIndex        =   8
         Top             =   120
         Width           =   255
      End
      Begin VB.Label cimke 
         BackStyle       =   0  'Transparent
         Caption         =   "Hz"
         Height          =   255
         Index           =   3
         Left            =   2880
         TabIndex        =   6
         Top             =   120
         Width           =   255
      End
      Begin VB.Label cimke 
         BackStyle       =   0  'Transparent
         Caption         =   "f="
         Height          =   255
         Index           =   2
         Left            =   1800
         TabIndex        =   5
         Top             =   120
         Width           =   255
      End
      Begin VB.Label cimke 
         BackStyle       =   0  'Transparent
         Caption         =   "m"
         Height          =   255
         Index           =   1
         Left            =   1320
         TabIndex        =   4
         Top             =   120
         Width           =   255
      End
      Begin VB.Label cimke 
         BackStyle       =   0  'Transparent
         Caption         =   "A="
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   3
         Top             =   120
         Width           =   255
      End
   End
End
Attribute VB_Name = "hullam"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private a As Double, f As Double, w As Double, fok As Double
Public azonosito As Long

Private Sub amplitudo_change()
On Error Resume Next
a = CDbl(amplitudo.Text)
kirajzol
End Sub

Private Sub kirajzol()
On Error Resume Next
Cls
For t = 1 To Me.ScaleWidth
    Me.Circle (t, (Me.Height - menusor.Height) / 2 + (fgv(t) * 10)), 1, Me.ForeColor
Next t

'osszeg.valt
End Sub
Private Function radianba(fok As Double)
    radianba = (2 * 3.141592654 * fok) / 360
End Function



Private Sub Form_Load()
amplitudo_change
frekvencia_change
eltolas_Change
End Sub

Private Sub Form_Resize()
    menusor.Width = Me.ScaleWidth
    kirajzol
End Sub



Private Sub Form_Unload(Cancel As Integer)
    Cancel = 1
    If azonosito = 0 Then Cancel = 0
End Sub

'Private Sub Form_Unload(Cancel As Integer)
    'osszeg.torol (Me.azonosito)
'End Sub

Private Sub frekvencia_change()
On Error Resume Next
f = CDbl(frekvencia.Text)
w = 6.28 * f
kirajzol
End Sub

Public Function fgv(t) As Double
    fgv = a * Sin(radianba(w * t / 100) + fok)
End Function

Public Sub kinyir()
    azonosito = 0
    Unload Me
End Sub

Private Sub eltolas_Change()
On Error Resume Next
fok = CDbl(radianba(eltolas.Text))
kirajzol
End Sub
