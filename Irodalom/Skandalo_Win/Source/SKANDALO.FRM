VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form skandalo 
   BackColor       =   &H0000CCFF&
   Caption         =   "Skandáló 2.0 - Muráti Ákos"
   ClientHeight    =   9510
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   11130
   Icon            =   "skandalo.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9510
   ScaleWidth      =   11130
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox nyil 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   3240
      Picture         =   "skandalo.frx":1CFA
      ScaleHeight     =   285
      ScaleWidth      =   300
      TabIndex        =   43
      Top             =   4680
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.PictureBox kilep 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   330
      Left            =   3720
      Picture         =   "skandalo.frx":1E81
      ScaleHeight     =   330
      ScaleWidth      =   330
      TabIndex        =   42
      Top             =   4680
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Frame vezerlok 
      BackColor       =   &H0000CCFF&
      BorderStyle     =   0  'None
      Height          =   735
      Left            =   -120
      TabIndex        =   16
      Top             =   3720
      Width           =   4815
      Begin VB.CommandButton eloz 
         BackColor       =   &H0000CCFF&
         Caption         =   "&Elõzõ"
         DisabledPicture =   "skandalo.frx":20E3
         Height          =   735
         Left            =   120
         Picture         =   "skandalo.frx":2339
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   0
         Width           =   1335
      End
      Begin VB.CommandButton kov 
         BackColor       =   &H0000CCFF&
         Caption         =   "&Következõ"
         Height          =   735
         Left            =   3480
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   0
         Width           =   1335
      End
   End
   Begin VB.PictureBox logo 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3450
      Left            =   0
      Picture         =   "skandalo.frx":258F
      ScaleHeight     =   3450
      ScaleWidth      =   2250
      TabIndex        =   14
      Top             =   0
      Width           =   2250
   End
   Begin VB.Frame lap 
      BorderStyle     =   0  'None
      Height          =   3855
      Index           =   3
      Left            =   120
      TabIndex        =   11
      Top             =   5160
      Width           =   5655
      Begin VB.CommandButton ujra 
         BackColor       =   &H0000CCFF&
         Height          =   855
         Left            =   600
         Picture         =   "skandalo.frx":4431
         Style           =   1  'Graphical
         TabIndex        =   44
         Top             =   1920
         Width           =   1455
      End
      Begin VB.TextBox stat 
         BackColor       =   &H00B3F0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   12
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   360
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   27
         Text            =   "skandalo.frx":4DF5
         Top             =   3240
         Visible         =   0   'False
         Width           =   5175
      End
      Begin VB.CommandButton stat_mut 
         BackColor       =   &H0000CCFF&
         Caption         =   "Statisztika mutatása"
         Height          =   375
         Left            =   360
         Style           =   1  'Graphical
         TabIndex        =   25
         Top             =   2760
         Visible         =   0   'False
         Width           =   1815
      End
      Begin VB.CommandButton nyomtat 
         BackColor       =   &H0000CCFF&
         Height          =   855
         Left            =   600
         Picture         =   "skandalo.frx":4E04
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   960
         Width           =   1455
      End
      Begin VB.CommandButton ment 
         BackColor       =   &H0000CCFF&
         Height          =   855
         Left            =   600
         Picture         =   "skandalo.frx":538D
         Style           =   1  'Graphical
         TabIndex        =   12
         Top             =   0
         Width           =   1455
      End
      Begin VB.Label tipp 
         BackStyle       =   0  'Transparent
         Caption         =   "Kattintson ide, ha a most skandált szöveggel nem akar már foglalkozni és új szöveget akar elemezni!"
         ForeColor       =   &H00000080&
         Height          =   795
         Index           =   6
         Left            =   2160
         TabIndex        =   45
         Top             =   1920
         Width           =   3420
      End
      Begin VB.Label tipp 
         BackStyle       =   0  'Transparent
         Caption         =   "Ha kíváncsi a statisztikai adatokra, akkor kattintson ide!"
         ForeColor       =   &H00000080&
         Height          =   675
         Index           =   5
         Left            =   2400
         TabIndex        =   26
         Top             =   2520
         Visible         =   0   'False
         Width           =   2820
      End
      Begin VB.Label tipp 
         BackStyle       =   0  'Transparent
         Caption         =   "A skandált szöveg elmentéséhez kattintson erre a gombra!"
         ForeColor       =   &H00000080&
         Height          =   675
         Index           =   4
         Left            =   2160
         TabIndex        =   24
         Top             =   120
         Width           =   3300
      End
      Begin VB.Label tipp 
         BackStyle       =   0  'Transparent
         Caption         =   "Ha ki szeretné nyomtatni a skandált szöveget, akkor kattintson ide!"
         ForeColor       =   &H00000080&
         Height          =   795
         Index           =   3
         Left            =   2160
         TabIndex        =   23
         Top             =   960
         Width           =   3300
      End
   End
   Begin MSComDlg.CommonDialog pb 
      Left            =   2760
      Top             =   2400
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.Frame lap 
      BorderStyle     =   0  'None
      Height          =   3855
      Index           =   2
      Left            =   5880
      TabIndex        =   2
      Top             =   5160
      Width           =   7335
      Begin VB.TextBox kesz 
         BackColor       =   &H00B3F0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   12
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   360
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   4
         Text            =   "skandalo.frx":5699
         Top             =   0
         Width           =   6615
      End
      Begin VB.Frame verslabak 
         Appearance      =   0  'Flat
         BackColor       =   &H0000CCFF&
         BorderStyle     =   0  'None
         Caption         =   "Verslábak"
         ForeColor       =   &H80000008&
         Height          =   1575
         Left            =   120
         TabIndex        =   28
         Top             =   1680
         Width           =   7095
         Begin VB.Line Line1 
            Index           =   9
            X1              =   0
            X2              =   0
            Y1              =   120
            Y2              =   1320
         End
         Begin VB.Label vlsor 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Hat morások"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000080&
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   41
            Top             =   960
            Width           =   1080
         End
         Begin VB.Label vlsor 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Négy morások"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000080&
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   40
            Top             =   600
            Width           =   1215
         End
         Begin VB.Label vlsor 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Három morások"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000080&
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   39
            Top             =   360
            Width           =   1320
         End
         Begin VB.Label vlsor 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Két morás"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000080&
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   38
            Top             =   120
            Width           =   855
         End
         Begin VB.Line Line1 
            Index           =   8
            X1              =   1480
            X2              =   1480
            Y1              =   120
            Y2              =   1320
         End
         Begin VB.Line Line1 
            Index           =   7
            X1              =   7080
            X2              =   7080
            Y1              =   120
            Y2              =   1320
         End
         Begin VB.Line Line1 
            Index           =   6
            X1              =   4920
            X2              =   4920
            Y1              =   120
            Y2              =   1320
         End
         Begin VB.Line Line1 
            Index           =   5
            X1              =   3240
            X2              =   3240
            Y1              =   120
            Y2              =   1320
         End
         Begin VB.Line Line1 
            Index           =   4
            X1              =   0
            X2              =   7080
            Y1              =   120
            Y2              =   120
         End
         Begin VB.Line Line1 
            Index           =   3
            X1              =   0
            X2              =   7080
            Y1              =   1320
            Y2              =   1320
         End
         Begin VB.Line Line1 
            Index           =   2
            X1              =   0
            X2              =   7080
            Y1              =   840
            Y2              =   840
         End
         Begin VB.Line Line1 
            Index           =   1
            X1              =   0
            X2              =   7080
            Y1              =   600
            Y2              =   600
         End
         Begin VB.Line Line1 
            Index           =   0
            X1              =   0
            X2              =   7080
            Y1              =   360
            Y2              =   360
         End
         Begin VB.Label verslab 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "-oo- chorriambos"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   8
            Left            =   5040
            TabIndex        =   37
            Top             =   840
            Width           =   1920
         End
         Begin VB.Label verslab 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "--oo ionicus a maiore"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   480
            Index           =   7
            Left            =   3360
            TabIndex        =   36
            Top             =   840
            Width           =   1440
            WordWrap        =   -1  'True
         End
         Begin VB.Label verslab 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "oo-- ionicus a minore"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   480
            Index           =   6
            Left            =   1560
            TabIndex        =   35
            Top             =   840
            Width           =   1560
            WordWrap        =   -1  'True
         End
         Begin VB.Label verslab 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "-- spondeus"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   5
            Left            =   5040
            TabIndex        =   34
            Top             =   600
            Width           =   1320
         End
         Begin VB.Label verslab 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "-oo daktilus"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   4
            Left            =   3360
            TabIndex        =   33
            Top             =   600
            Width           =   1440
         End
         Begin VB.Label verslab 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "oo- anapestus"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   3
            Left            =   1560
            TabIndex        =   32
            Top             =   600
            Width           =   1560
         End
         Begin VB.Label verslab 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "o- jambus"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   1
            Left            =   1560
            TabIndex        =   31
            Top             =   360
            Width           =   1080
         End
         Begin VB.Label verslab 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "-o trocheus"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   2
            Left            =   3360
            TabIndex        =   30
            Top             =   360
            Width           =   1320
         End
         Begin VB.Label verslab 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "oo pirrichius"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9.75
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   0
            Left            =   1560
            TabIndex        =   29
            Top             =   120
            Width           =   1560
         End
      End
   End
   Begin VB.Frame lap 
      BorderStyle     =   0  'None
      Height          =   3855
      Index           =   1
      Left            =   5880
      TabIndex        =   1
      Top             =   5160
      Width           =   5655
      Begin VB.TextBox alap 
         BackColor       =   &H00B3F0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   12
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3855
         Left            =   0
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   3
         Text            =   "skandalo.frx":56B5
         Top             =   0
         Width           =   5655
      End
   End
   Begin VB.Frame lap 
      BorderStyle     =   0  'None
      Height          =   4455
      Index           =   0
      Left            =   5160
      TabIndex        =   0
      Top             =   240
      Width           =   5655
      Begin VB.OptionButton forras 
         BackColor       =   &H0000CCFF&
         Caption         =   "Én szeretném begépelni az elemezni kívánt szöveget."
         Height          =   495
         Index           =   2
         Left            =   120
         TabIndex        =   10
         Top             =   120
         Width           =   5415
      End
      Begin VB.CommandButton talloz 
         BackColor       =   &H00B3F0FF&
         Caption         =   ">"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   1680
         Width           =   255
      End
      Begin VB.TextBox eleres 
         Appearance      =   0  'Flat
         BackColor       =   &H00B3F0FF&
         Height          =   285
         Left            =   720
         Locked          =   -1  'True
         TabIndex        =   8
         Top             =   1680
         Width           =   4815
      End
      Begin VB.CommandButton mek 
         BackColor       =   &H0000CCFF&
         Caption         =   "Felkeresem a Magyar Elektronikus könyvtárat és azután eldöntöm, hogy mit teszek."
         Height          =   495
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   3960
         Width           =   3975
      End
      Begin VB.OptionButton forras 
         BackColor       =   &H0000CCFF&
         Caption         =   "A Vágólapon elhelyezett szöveget szeretném elemezni."
         Height          =   495
         Index           =   1
         Left            =   120
         TabIndex        =   6
         Top             =   2760
         Width           =   5415
      End
      Begin VB.OptionButton forras 
         BackColor       =   &H0000CCFF&
         Caption         =   "Már meglévõ fájlból szertném betölteni a szöveget. A fájl kiválasztásához kattintson a gombra!"
         Height          =   495
         Index           =   0
         Left            =   120
         TabIndex        =   5
         Top             =   1200
         Value           =   -1  'True
         Width           =   5415
      End
      Begin VB.Label tipp 
         BackStyle       =   0  'Transparent
         Caption         =   "Ez az opció csak akkor mûködik, ha korábban már elhelyezett a Vágólapon egy szöveget!"
         ForeColor       =   &H00000080&
         Height          =   555
         Index           =   2
         Left            =   720
         TabIndex        =   22
         Top             =   3240
         Width           =   4860
      End
      Begin VB.Label tipp 
         BackStyle       =   0  'Transparent
         Caption         =   $"skandalo.frx":56C8
         ForeColor       =   &H00000080&
         Height          =   555
         Index           =   1
         Left            =   720
         TabIndex        =   21
         Top             =   2040
         Width           =   4860
      End
      Begin VB.Label tipp 
         BackStyle       =   0  'Transparent
         Caption         =   "Akkor érdemes ezt az opciót választani, ha nincs meg a szövegünk digitális változatban"
         ForeColor       =   &H00000080&
         Height          =   435
         Index           =   0
         Left            =   720
         TabIndex        =   20
         Top             =   600
         Width           =   4860
      End
   End
   Begin VB.Label szoveg 
      BackStyle       =   0  'Transparent
      Caption         =   "Kiegészítõ szövegek"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2280
      TabIndex        =   19
      Top             =   240
      Width           =   2295
   End
   Begin VB.Label copyright 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Copyright 2003, Muráti Ákos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   360
      TabIndex        =   15
      Top             =   4800
      Width           =   2415
   End
   Begin VB.Image csik 
      Height          =   60
      Left            =   0
      Picture         =   "skandalo.frx":577D
      Top             =   4680
      Visible         =   0   'False
      Width           =   2250
   End
End
Attribute VB_Name = "skandalo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private aktualis As Integer
Private fajl As String


Private Sub eloz_Click()
    aktualis = aktualis - 1
    Oldal (aktualis)
End Sub

Private Sub Form_Load()
On Error Resume Next
Dim i As Integer
    aktualis = 0
    Me.Height = 7200
    Me.Width = 9600
    Oldal (aktualis)
End Sub


Private Sub Form_Paint()
Dim i As Integer
    'csíkozás kirajzolása
    For i = 3450 To Me.ScaleHeight Step 60
        Me.PaintPicture csik.Picture, 0, i
    Next i
End Sub


Private Sub Form_Resize()
On Error Resume Next
    If Me.Width < 9600 Then Me.Width = 9600
    If Me.Height < 7200 Then Me.Height = 7200
Dim i As Integer
    'lapok méretezése
    For i = 0 To lap.Count - 1
        lap(i).Move 2250, szoveg.Top + szoveg.Height, Me.ScaleWidth - 2250, Me.ScaleHeight - szoveg.Top - szoveg.Height - vezerlok.Height - copyright.Height
        lap(i).BackColor = &HCCFF&
    Next i
    
    'Szövegdobozok méretezése
    alap.Move 0, 0, lap(0).Width, lap(0).Height
    kesz.Move 0, 0, lap(0).Width, lap(0).Height - verslabak.Height
    verslabak.Move (lap(0).Width - verslabak.Width) / 2, kesz.Height + 10
    
    szoveg.Width = lap(0).Width
    
    mek.Width = lap(0).Width - 2 * mek.Left
    For i = 0 To 2
        forras(i).Width = lap(0).Width - 2 * forras(i).Left
        tipp(i).Width = lap(0).Width - tipp(i).Left
    Next i
    
    vezerlok.Move lap(0).Left + (lap(0).Width - vezerlok.Width) / 2, lap(0).Top + lap(0).Height + 50
    copyright.Move 0, Me.ScaleHeight - copyright.Height - 100 '(Me.ScaleWidth - copyright.Width) / 2
End Sub

Private Sub forras_Click(Index As Integer)
    eleres.Enabled = forras(0).Value
    talloz.Enabled = eleres.Enabled
    Me.Refresh
End Sub

Private Sub forras_Validate(Index As Integer, Cancel As Boolean)
    forras_Click (Index)
End Sub

Private Sub kov_Click()
    Select Case aktualis
        Case 0
            If forras(0).Value Then
                    If eleres.Text = "" Then
                        MsgBox "A fájl kiválasztásához kattintson a tallózó gombra!", vbInformation, "Nem választott szöveget!"
                        Exit Sub
                    End If
                    Dim Sor As String
                    fajl = eleres.Text
                    alap.Text = ""
                    Open fajl For Input As 1
                        Do While Not EOF(1)
                            Line Input #1, Sor
                            alap.Text = alap.Text & Sor & vbCrLf
                        Loop
                    Close 1
            End If
            If forras(1).Value Then
                alap.Text = Clipboard.GetText
            End If
            If forras(2).Value Then
                alap.Text = ""
            End If
            aktualis = aktualis + 1
        Case 1
            Soronkent
            aktualis = aktualis + 1
        Case 2
            aktualis = aktualis + 1
        Case 3
            End
    End Select
    Oldal (aktualis)
End Sub

Private Sub mek_Click()
    Shell "explorer http://mek.oszk.hu", vbNormalFocus
End Sub
Private Sub Oldal(Szam As Integer)
Dim i As Integer
    If (Szam <= lap.Count - 1) And (Szam >= 0) Then
    For i = 0 To lap.Count - 1
        lap(i).Visible = False
    Next i
    Select Case Szam
        Case 0
            szoveg.Caption = "Kérem válassza ki az alábbi felsorolásból azt, amelyik Önnek leginkább megfelel, azután kattintson a 'Tovább' gombra! A barna szövegek segítséget nyújtanak a döntésben."
        Case 1
            szoveg.Caption = "Most lehetõsége nyílik módosítani a forrásszöveget a ritmikai elemzés elõtt. A skandáláshoz kattintson a 'Tovább'-ra!"
        Case 2
            szoveg.Caption = "Itt láthatja a kielemzett szöveget. Ha esetleg javítani, vagy módosítani akar a gép elemzésén, itt megteheti. A folytatáshoz kattintson a 'Tovább'-ra!"
        Case 3
            szoveg.Caption = "Kérem válassza ki, hogy mit akar tenni a skandált szöveggel. Ha befejezte a munkát, akkor kattintson a 'Kilépés' gombra!"
    End Select
    If Szam = 0 Then
            eloz.Enabled = False
        Else
            eloz.Enabled = True
    End If
    
    If Szam = 3 Then
            kov.Caption = "Kilépés"
            kov.Picture = kilep.Picture
        Else
            kov.Caption = "Következõ"
            kov.Picture = nyil.Picture
            
    End If
    
    lap(Szam).Visible = True
    End If
End Sub
Private Sub Soronkent()
Dim i As Long
Dim Sor As String, parja As String
    alap.Text = alap.Text & vbCrLf
    kesz.Text = ""
    Sor = ""
    i = 1
    
    Do While i <= Len(alap.Text)
        If Mid(alap.Text, i, 1) = Chr(13) Then
            parja = GyorsSkandi(Sor)
            parja = Tabulal(Sor, parja)
            kesz.Text = kesz.Text & Sor & vbCrLf & parja & vbCrLf
            i = i + 1
            Sor = ""
        Else
            Sor = Sor & Mid(alap.Text, i, 1)
        End If
        i = i + 1
    Loop
End Sub

Private Sub ment_Click()
On Error GoTo megse
    pb.DialogTitle = "Szöveg mentése..."
    pb.Filter = "Csak szöveges fájlok | *.txt"
    pb.ShowSave
    Open pb.FileName For Output As 1
        Print #1, kesz.Text
    Close 1
megse:
End Sub

Private Sub nyomtat_Click()
    Printer.FontName = kesz.FontName
    Printer.Print kesz.Text
    Printer.EndDoc
End Sub

Private Sub talloz_Click()
On Error GoTo megse
    pb.DialogTitle = "Szöveg megnyitása..."
    pb.Filter = "Csak szöveges fájlok |*.txt|Minden fájl|*.*"
    pb.ShowOpen
    eleres.Text = pb.FileName
megse:
End Sub

Private Sub ujra_Click()
    Form_Load
End Sub
Private Function Tabulal(Sor As String, Skandalt As String) As String
Dim i As Long, Atnezve As String
For i = 1 To Len(Sor)
    If Mid(Sor, i, 1) = Chr(9) Then
            Atnezve = Atnezve & Chr(9)
        Else
            Atnezve = Atnezve & Mid(Skandalt, i, 1)
    End If
Next i
Tabulal = Atnezve
End Function
