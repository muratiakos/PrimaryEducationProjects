VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form4 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tökéletesszámkeresõ"
   ClientHeight    =   3390
   ClientLeft      =   5340
   ClientTop       =   855
   ClientWidth     =   7005
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   238
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "kertök.frx":0000
   LinkTopic       =   "Form4"
   MDIChild        =   -1  'True
   ScaleHeight     =   3390
   ScaleWidth      =   7005
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   3000
      Width           =   6735
      _ExtentX        =   11880
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H8000000B&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   5640
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   120
      Width           =   1095
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   2175
      Left            =   240
      TabIndex        =   5
      Top             =   720
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   3836
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   3
      DisableNoScroll =   -1  'True
      TextRTF         =   $"kertök.frx":0442
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
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1095
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
      Left            =   3120
      TabIndex        =   1
      Top             =   120
      Width           =   1335
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
      Left            =   1440
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "Találatok:"
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
      Left            =   4680
      TabIndex        =   6
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "eddig fogok keresni."
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
      Left            =   1440
      TabIndex        =   4
      Top             =   480
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "E számtól ,"
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
      Left            =   240
      TabIndex        =   3
      Top             =   480
      Width           =   855
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo hiba
ProgressBar1.Min = 1
RichTextBox1.Text = ""
Rem *** Tökéletesszám keresõ ***
Dim maximum As Double, Tol As Double
Rem *** Ellenõrzõ ***
    If Text1 = "" Or Text2 = "" Then MsgBox "Adj meg egy számot!", vbCritical, "Hiba!": GoTo 10
    If Text1 < 0 Or Text2 < 0 Then MsgBox "Csak pozitív egész számmal kezdõdhet!", vbCritical, "Hiba!": GoTo 10
    If Text1 > 7.2574E+306 Or Text2 > 7.2574E+306 Then MsgBox "Túl nagy szám!", vbCritical, "Hiba!": GoTo 10
    If Text1 - Text2 > 5000 Then GoSub 2
Rem *** Program ***
    RichTextBox1.Visible = False
    Tol = Text2
    If Tol = 0 Then Tol = 1
    maximum = Text1
    ProgressBar1.Max = maximum
    For probaszám = Tol To maximum
        ProgressBar1 = probaszám
        For probaosztó = 1 To probaszám / 2
            If probaszám / probaosztó = Int(probaszám / probaosztó) Then összeg = összeg + probaosztó
        Next probaosztó
        If összeg = probaszám Then RichTextBox1.Text = RichTextBox1.Text & probaszám & " ; ": tokt = tokt + 1
        összeg = 0
    Next probaszám
    If tokt = "" Then tokt = 0
    Text3 = tokt
1     GoTo 10
2     vi = MsgBox("Valószínûleg sokáig fog tartani és nem fog kiférni! Biztos folytatni akarja?", vbYesNo, "Folytatja?")
    If vi = vbYes Then Return
10     RichTextBox1.Visible = True
ProgressBar1 = 1
Exit Sub
hiba:
    MsgBox "Hibás értéket adott meg!", vbCritical, "Hiba!"
End Sub

Private Sub Form_Resize()
On Error Resume Next
RichTextBox1.Move 2, 500, ScaleWidth - 4, ScaleHeight - 850
ProgressBar1.Move 5, ScaleHeight - 300, ScaleWidth - 10
End Sub
