VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form2 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Számok tulajdonságai"
   ClientHeight    =   5670
   ClientLeft      =   750
   ClientTop       =   2985
   ClientWidth     =   3855
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   238
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "tulszám1.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5670
   ScaleWidth      =   3855
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   120
      TabIndex        =   17
      Top             =   5280
      Width           =   3615
      _ExtentX        =   6376
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   4095
      Left            =   4440
      TabIndex        =   16
      Top             =   600
      Width           =   4455
      _ExtentX        =   7858
      _ExtentY        =   7223
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"tulszám1.frx":0442
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1320
      MultiLine       =   -1  'True
      TabIndex        =   15
      Top             =   4320
      Width           =   2415
   End
   Begin VB.TextBox Text4 
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
      Left            =   1440
      TabIndex        =   13
      Top             =   3840
      Width           =   2295
   End
   Begin VB.TextBox Text3 
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
      Left            =   2160
      TabIndex        =   11
      Top             =   3360
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1080
      MultiLine       =   -1  'True
      ScrollBars      =   1  'Horizontal
      TabIndex        =   9
      Top             =   2280
      Width           =   2655
   End
   Begin VB.Frame Frame1 
      Caption         =   "Beállítások"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   3615
      Begin VB.CheckBox Check5 
         Caption         =   "Pozitív egész oszóinak száma"
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
         TabIndex        =   7
         Top             =   480
         Width           =   2415
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Pozitív egész oszóinak kiírása"
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
         TabIndex        =   6
         Top             =   240
         Width           =   2655
      End
      Begin VB.CheckBox Check4 
         Caption         =   "Tökéletes szám -e ?"
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
         TabIndex        =   5
         Top             =   960
         Width           =   2415
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Prím szám-e?"
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
         TabIndex        =   4
         Top             =   1200
         Width           =   3135
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Tõle különbözõ pozitív osztók összege"
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
         Top             =   720
         Width           =   3135
      End
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
      Height          =   375
      Left            =   2400
      TabIndex        =   1
      Top             =   1800
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
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label Label4 
      Caption         =   "Egyéb:"
      Height          =   255
      Left            =   240
      TabIndex        =   14
      Top             =   4320
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "T.K.P.O.Ö:"
      Height          =   255
      Left            =   240
      TabIndex        =   12
      Top             =   3840
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Oszóinak száma:"
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   3360
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Osztói:"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   2280
      Width           =   855
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo hiba
ProgressBar1.Min = 1
Text2 = "": Text3 = "": Text4 = "": Text5 = ""
Rem *** Számok tulajdonságai ***
Dim SZAM As Double, osz As Double, e As String
Rem *** Ellenõrzõ ***
    If Text1 = "" Then MsgBox "Adj meg egy számot!", vbCritical, "Hiba": Exit Sub
    If Text1 < 0 Then MsgBox "Negatív számok nem engedélyezve!", vbCritical, "Hiba!": Exit Sub
    If Text1 = 0 Then MsgBox "A nulla tulajdonságait nem tudom megadni!", vbCritical, "Hiba!": Exit Sub
    If Text1 > 7.2574E+306 Then MsgBox " Túl nagy szám!", vbCritical, "Hiba!": Exit Sub
Rem *** Program ***
    SZAM = Text1
    ProgressBar1.Max = SZAM
    For oszt = 1 To SZAM - 1
        ProgressBar1 = oszt
        If SZAM / oszt = Int(SZAM / oszt) Then összeg = összeg + oszt: osz = osz + 1
        If SZAM / oszt = Int(SZAM / oszt) And Check1 = 1 Then Text2.Text = Text2.Text & oszt & "; "
    Next oszt
    If SZAM = 1 Then összeg = 0
    If Check1 = 1 Then Text2.Text = Text2.Text & SZAM
    If Check2 = 1 Then Text4.Text = összeg
    If Check3 = 1 And összeg <> 1 Then Text5.Text = "Nem prímszám" & Chr$(13) & Chr$(10)
    If Check3 = 1 And összeg = 1 Then Text5.Text = "Prímszám" & Chr$(13) & Chr$(10)
    If Check4 = 1 And összeg = SZAM Then Text5.Text = Text5.Text & "Tökéletes szám" & Chr$(13) & Chr$(10)
    If Check4 = 1 And összeg <> SZAM Then Text5.Text = Text5.Text & "Nem tökéletes szám" & Chr$(13) & Chr$(10)
    If Check5 = 1 Then Text3.Text = osz + 1
ProgressBar1 = 1
e = Chr$(13) & Chr$(10)
RichTextBox1.Text = Text1.Text & " tulajdonságai:" & e & e
If Check1 = 1 Then RichTextBox1.Text = RichTextBox1.Text & "Osztói: " & Text2.Text & e
If Check5 = 1 Then RichTextBox1.Text = RichTextBox1.Text & "Osztóinak száma: " & Text3.Text & e
If Check2 = 1 Then RichTextBox1.Text = RichTextBox1.Text & "Tõle különbözõ pozitív osztóinak osszege: " & Text4.Text & e
If Check3 = 1 Or Check4 = 1 Then RichTextBox1.Text = RichTextBox1.Text & "Egyéb: " & Text5
Exit Sub
hiba:
    MsgBox "Hibás értéket adott meg!", vbCritical, "Hiba!"
End Sub

Private Sub Form_Load()
Check1 = 1
Check2 = 1
Check3 = 1
Check4 = 1
Check5 = 1
Check6 = 1
End Sub
