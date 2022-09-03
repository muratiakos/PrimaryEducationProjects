VERSION 5.00
Begin VB.Form osszeg 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   Caption         =   "Hullámok összegzése - Muráti Ákos"
   ClientHeight    =   4185
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7335
   ForeColor       =   &H0000C000&
   LinkTopic       =   "Form1"
   ScaleHeight     =   4185
   ScaleWidth      =   7335
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame menusor 
      BackColor       =   &H00808080&
      Height          =   735
      Left            =   0
      TabIndex        =   0
      Top             =   -120
      Width           =   7335
      Begin VB.CommandButton osszegez 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Hullámok összegzése"
         Default         =   -1  'True
         Height          =   375
         Left            =   3600
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   240
         Width           =   1935
      End
      Begin VB.CommandButton uj 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Új Hullám felvétele"
         Height          =   375
         Left            =   5640
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   240
         Width           =   1575
      End
      Begin VB.ComboBox otag 
         BackColor       =   &H00C0C0C0&
         Height          =   315
         Index           =   1
         Left            =   1920
         Style           =   2  'Dropdown List
         TabIndex        =   2
         Top             =   240
         Width           =   1215
      End
      Begin VB.ComboBox otag 
         BackColor       =   &H00C0C0C0&
         Height          =   315
         Index           =   0
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label cimke 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1560
         TabIndex        =   5
         Top             =   240
         Width           =   255
      End
   End
End
Attribute VB_Name = "osszeg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ablak(1 To 256) As hullam

Public Sub kirajzol()
On Error Resume Next
If otag(0).Text = "" Or otag(1).Text = "" Then Exit Sub
Cls
For t = 1 To Me.ScaleWidth
    Me.Circle (t, (Me.Height - menusor.Height) / 2 + (ablak(otag(0).ListIndex + 1).fgv(t) * 10) + (ablak(otag(1).ListIndex + 1).fgv(t) * 10)), 1, Me.ForeColor
Next t
End Sub



Private Sub osszegez_Click()
    kirajzol
End Sub

Private Sub uj_Click()
Static id As Long
id = id + 1
Set ablak(id) = New hullam
ablak(id).Show
ablak(id).Caption = id & ". Hullám"
ablak(id).azonosito = id
otag(0).AddItem id & ". Hullám"
otag(1).AddItem id & ". Hullám"
End Sub

Private Sub Form_Resize()
    menusor.Width = Me.ScaleWidth
    kirajzol
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
For i = 1 To id
    ablak(i).kinyir
    Set ablak(i) = Nothing
Next i
End
End Sub
'Public Sub torol(azonosito)
    'otag(0).RemoveItem azonosito - 1
    'otag(1).RemoveItem azonosito - 1
'End Sub
