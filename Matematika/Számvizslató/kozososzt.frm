VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form6 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Közös osztók"
   ClientHeight    =   3465
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7110
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   238
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "kozososzt.frx":0000
   LinkTopic       =   "Form6"
   MDIChild        =   -1  'True
   ScaleHeight     =   3465
   ScaleWidth      =   7110
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   3120
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H80000013&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      TabIndex        =   5
      Top             =   120
      Width           =   1335
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   2295
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   4048
      _Version        =   393217
      ScrollBars      =   3
      DisableNoScroll =   -1  'True
      TextRTF         =   $"kozososzt.frx":0442
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
      Left            =   3240
      TabIndex        =   2
      Top             =   120
      Width           =   975
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
      Left            =   1680
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
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Osztók száma:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4320
      TabIndex        =   4
      Top             =   240
      Width           =   1335
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo hiba
ProgressBar1.Min = 1
RichTextBox1.Text = ""
Rem *** Össszes közös osztó ***
Dim sz1 As Double, sz21 As Double, proba As Double
Rem *** Ellenõrzõ ***
    If Text1 = "" Or Text2 = "" Then MsgBox "Adj meg egy számot!", vbCritical, "Hiba!": Exit Sub
    If Text1 < 0 Or Text2 < 0 Then MsgBox "Csak pozitív számokkal tudok dolgozni!", vbCritical, "Hiba!": Exit Sub
    If Text1 > 7.2574E+306 Or Text2 > 7.2574E+306 Then MsgBox "Túl nagy szám!", vbCritical, "Hiba!": Exit Sub
Rem *** Program ***
RichTextBox1.Visible = False
sz1 = Text1: sz2 = Text2
    If sz2 > sz1 Then c = sz1: sz1 = sz2: sz2 = c
    If sz1 = 0 And sz2 = 0 Then RichTextBox1.Text = "Minden szám az osztójuk!": Exit Sub
    If sz1 = 0 Then sz2 = sz2: GoTo 10
    If sz2 = 0 Then sz2 = sz1
    ProgressBar1.Max = sz2 + 1
10     For proba = 1 To sz2
            ProgressBar1 = ProgressBar1 + 1
            If sz1 / proba = Int(sz1 / proba) And sz2 / proba = Int(sz2 / proba) Then RichTextBox1.Text = RichTextBox1.Text & proba & "; ": oszo = oszo + 1
        Next proba
    Text3 = oszo
    RichTextBox1.Visible = True
ProgressBar1 = 1
Exit Sub
hiba:
    MsgBox "Hibás értéket adott meg!", vbCritical, "Hiba!"
    RichTextBox1.Visible = True
End Sub

Private Sub Form_Resize()
On Error Resume Next
RichTextBox1.Move 2, 500, ScaleWidth - 4, ScaleHeight - 800
ProgressBar1.Move 5, ScaleHeight - 300, ScaleWidth - 10
End Sub

