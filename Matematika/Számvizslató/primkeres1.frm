VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form5 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Prímkeresõ"
   ClientHeight    =   3315
   ClientLeft      =   7455
   ClientTop       =   5640
   ClientWidth     =   6345
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   238
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "primkeres1.frx":0000
   LinkTopic       =   "Form5"
   MDIChild        =   -1  'True
   ScaleHeight     =   3315
   ScaleWidth      =   6345
   WindowState     =   2  'Maximized
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   3000
      Width           =   6135
      _ExtentX        =   10821
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H80000013&
      Height          =   285
      Left            =   5280
      TabIndex        =   6
      Top             =   120
      Width           =   975
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   1935
      Left            =   240
      TabIndex        =   4
      Top             =   840
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   3413
      _Version        =   393217
      ScrollBars      =   3
      DisableNoScroll =   -1  'True
      TextRTF         =   $"primkeres1.frx":0442
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
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Keresés"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
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
      Height          =   285
      Left            =   1320
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Találatok:"
      Height          =   255
      Left            =   4200
      TabIndex        =   5
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "E számtól ,        eddig fogok keresni."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   2655
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo hiba
Rem *** Prímkeresõ ***
RichTextBox1.Text = ""
Dim SZAM As Double, Tol As Double, prisz As Long
prisz = 0
Rem *** Ellenõrzõ ***
    If Text1 = "" Or Text2 = "" Then MsgBox "Adj meg egy számot!", vbCritical, "Hiba!": Exit Sub
    If Text1 < 0 Or Text2 < 0 Then MsgBox "Csak pozitív számokkkal tudok dolgozni!", vbCritical, "Hiba!": Exit Sub
    If Text1 > 7.2574E+306 Or Text2 > 7.2574E+306 Then MsgBox "Túl nagy szám!", vbCritical, "Hiba!": Exit Sub
    If Text1 - Text2 > 8000 Then GoSub 11
Rem *** Program ***
RichTextBox1.Visible = False
    SZAM = Text1: Tol = Text2
    If Tol / 2 = Int(Tol / 2) Then Tol = Tol + 1
    ProgressBar1.Min = Tol
    ProgressBar1.Max = SZAM / 2 + 10
    For i = Tol To SZAM Step 2
        ProgressBar1 = ProgressBar1 + 1
        For prim = 1 To Int(Sqr(i))
            If i / prim = Int(i / prim) Then össz = össz + 1
        Next prim
        If össz = 1 Then RichTextBox1.Text = RichTextBox1.Text & i & "; ": prisz = prisz + 1
        össz = 0
    Next i
    Text3 = prisz
    RichTextBox1.Visible = True
ProgressBar1 = Tol
10 Exit Sub
11                 va = MsgBox("Valószínûleg sokáig fog tartani és nem biztos ,hogy ki fog férni! Biztos folytatni akarja?", vbYesNo, "Folytatja?")
                    If va = vbYes Then Return
20 Exit Sub
hiba:
    MsgBox "Hibás értéket adott meg!", vbCritical, "Hiba!"
        RichTextBox1.Visible = True
End Sub

Private Sub Form_Resize()
RichTextBox1.Move 2, 500, ScaleWidth - 4, ScaleHeight - 800
ProgressBar1.Move 5, ScaleHeight - 300, ScaleWidth - 10
End Sub
