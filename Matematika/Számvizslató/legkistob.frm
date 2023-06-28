VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form7 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Legkisebb közös többszörös"
   ClientHeight    =   945
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4470
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   238
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "legkistob.frx":0000
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   945
   ScaleWidth      =   4470
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   661
      _Version        =   393217
      TextRTF         =   $"legkistob.frx":0442
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Mehet!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   3000
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   1560
      TabIndex        =   1
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo hiba
Rem *** Legkisebb közös többsörös ***
Dim sz1 As Double, sz2 As Double, p As Double
Rem *** Ellenõrzõ ***
    If Text1 = "" Or Text2 = "" Then MsgBox "Adj meg egy számot!", vbCritical, "Hiba!": Exit Sub
    If Text1 > 7.2574E+306 Or Text2 > 7.2574E+306 Then MsgBox "Túl nagy szám!", vbCritical, "Hiba!": Exit Sub
    If Text1 < 0 Or Text2 < 0 Then MsgBox "Csak pozitív számokkal tudok dolgozni!", vbCritical, "Hiba!": Exit Sub
Rem *** Program ***
    If Text1 = 0 And Text2 = 0 Then RichTextBox1.Text = "{" & Text1 & " ; " & Text2 & "} = Minden szám! ": Exit Sub
    If Text1 = 0 Then RichTextBox1.Text = "{" & Text1 & " ; " & Text2 & "} = " & Text2: Exit Sub
    If Text2 = 0 Then RichTextBox1.Text = "{" & Text1 & " ; " & Text2 & "} = " & Text1: Exit Sub
    If Text1 = Text2 Then RichTextBox1.Text = "{" & Text1 & " ; " & Text2 & "} = " & Text1: Exit Sub
sz1 = Text1: sz2 = Text2
10     p = sz2
    sz2 = sz1 - sz2 * Int(sz1 / sz2)
    sz1 = p
    If sz2 = 0 Then GoTo fo
    GoTo 10
fo:
    ertek = (Text1 * Text2) / p
    RichTextBox1.Text = "[" & Text1 & "  ;  " & Text2 & "] = " & ertek
    Exit Sub
hiba:
    MsgBox "Hibás értéket adott meg!", vbCritical, "Hiba!"
End Sub
