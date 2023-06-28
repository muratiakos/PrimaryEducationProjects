VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form plumin 
   BackColor       =   &H00E2A552&
   Caption         =   "Természetes számok összeadása, kivonása"
   ClientHeight    =   5520
   ClientLeft      =   165
   ClientTop       =   510
   ClientWidth     =   11130
   Icon            =   "osszeadas.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   5520
   ScaleWidth      =   11130
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox vezerlo_tarto 
      Appearance      =   0  'Flat
      BackColor       =   &H00E2A552&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   1560
      ScaleHeight     =   495
      ScaleWidth      =   7875
      TabIndex        =   15
      Top             =   120
      Width           =   7875
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Beállítások"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   4
         Left            =   3240
         TabIndex        =   20
         Top             =   120
         Width           =   975
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Ellenõrzés"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   1800
         TabIndex        =   19
         Top             =   120
         Width           =   975
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Új feladat"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   240
         TabIndex        =   18
         Top             =   120
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   6
         Left            =   6360
         Top             =   0
         Width           =   1095
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Kilépés"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   6
         Left            =   6360
         TabIndex        =   17
         Top             =   120
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   4
         Left            =   3240
         Top             =   0
         Width           =   1095
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   3
         Left            =   1680
         Top             =   0
         Width           =   1095
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   2
         Left            =   120
         Top             =   0
         Width           =   1095
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Névjegy"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   5
         Left            =   4800
         TabIndex        =   16
         Top             =   120
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   5
         Left            =   4800
         Top             =   0
         Width           =   1095
      End
   End
   Begin VB.Frame beallitasok 
      Appearance      =   0  'Flat
      BackColor       =   &H0080CEF4&
      Caption         =   "Beállítások:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   2055
      Left            =   3360
      TabIndex        =   6
      Top             =   1920
      Visible         =   0   'False
      Width           =   4455
      Begin VB.ComboBox szint_cmb 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   360
         Width           =   1815
      End
      Begin VB.TextBox minimum 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   3480
         MaxLength       =   7
         TabIndex        =   9
         Text            =   "1"
         Top             =   360
         Width           =   735
      End
      Begin VB.CheckBox kivon_chk 
         Appearance      =   0  'Flat
         BackColor       =   &H0080CEF4&
         Caption         =   "Kivonások"
         ForeColor       =   &H00000080&
         Height          =   435
         Left            =   240
         TabIndex        =   8
         Top             =   720
         Width           =   1815
      End
      Begin VB.TextBox maximum 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   3480
         MaxLength       =   7
         TabIndex        =   7
         Text            =   "20"
         Top             =   840
         Width           =   735
      End
      Begin VB.Line sep 
         BorderColor     =   &H00FFFFFF&
         X1              =   2160
         X2              =   2160
         Y1              =   240
         Y2              =   1080
      End
      Begin VB.Label cimke 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Minimális érték:"
         ForeColor       =   &H00000080&
         Height          =   255
         Index           =   2
         Left            =   2280
         TabIndex        =   14
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Mégse"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   1
         Left            =   2520
         TabIndex        =   13
         Top             =   1560
         Width           =   975
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "OK"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   0
         Left            =   600
         TabIndex        =   12
         Top             =   1560
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   0
         Left            =   600
         Top             =   1440
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   1
         Left            =   2400
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label cimke 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Maximális érték:"
         ForeColor       =   &H00000080&
         Height          =   255
         Index           =   1
         Left            =   2280
         TabIndex        =   11
         Top             =   840
         Width           =   1455
      End
   End
   Begin VB.Frame feladat_lap 
      BackColor       =   &H00E2A552&
      BorderStyle     =   0  'None
      Height          =   1335
      Left            =   3960
      TabIndex        =   0
      Top             =   1560
      Width           =   2535
      Begin VB.Shape racs 
         BorderColor     =   &H00000000&
         BorderStyle     =   0  'Transparent
         FillColor       =   &H00404040&
         FillStyle       =   7  'Diagonal Cross
         Height          =   855
         Index           =   1
         Left            =   0
         Top             =   -120
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.Label c_lb 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackColor       =   &H00E2A552&
         Caption         =   "c"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Index           =   0
         Left            =   2280
         TabIndex        =   4
         Top             =   960
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Line vonal 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   3
         X1              =   0
         X2              =   2400
         Y1              =   720
         Y2              =   720
      End
      Begin VB.Label muvelet 
         AutoSize        =   -1  'True
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
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Left            =   0
         TabIndex        =   3
         Top             =   360
         Width           =   195
      End
      Begin VB.Label b_lb 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "b"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Index           =   0
         Left            =   2280
         TabIndex        =   2
         Top             =   360
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label a_lb 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "a"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   300
         Index           =   0
         Left            =   2280
         TabIndex        =   1
         Top             =   0
         Visible         =   0   'False
         Width           =   165
      End
   End
   Begin MSComctlLib.ImageList gombok 
      Left            =   9960
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483645
      ImageWidth      =   100
      ImageHeight     =   30
      MaskColor       =   16711935
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "osszeadas.frx":5642
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "osszeadas.frx":79BC
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "osszeadas.frx":9D36
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label cimsor 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Rendezd a számokat csökkenõ sorrendbe!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   735
      Left            =   1680
      TabIndex        =   22
      Top             =   840
      Width           =   7455
   End
   Begin VB.Shape racs 
      BorderColor     =   &H00000000&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00404040&
      FillStyle       =   7  'Diagonal Cross
      Height          =   855
      Index           =   0
      Left            =   120
      Top             =   0
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label lepel 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00808080&
      Height          =   855
      Left            =   0
      TabIndex        =   21
      Top             =   480
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00E2A552&
      Caption         =   "INFORMÁCIÓS CIMKE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   420
      Left            =   2640
      TabIndex        =   5
      Top             =   3240
      Width           =   4050
   End
   Begin VB.Menu menu 
      Caption         =   "menu"
      Visible         =   0   'False
      Begin VB.Menu uj_mnu 
         Caption         =   "Új feladat"
         Shortcut        =   ^U
      End
      Begin VB.Menu ellenor_mnu 
         Caption         =   "Ellenõrzés"
      End
      Begin VB.Menu beall_mnu 
         Caption         =   "Beállítások"
      End
   End
End
Attribute VB_Name = "plumin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim szint As Byte, min As Long, max As Long
Dim a As Long, b As Long, c As Long, aktiv As Byte, kivonas As Boolean
Dim uccso_szint As Byte, uccso_vezerlo As Byte


Private Sub a_lb_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub

Private Sub b_lb_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub

Private Sub beall_mnu_Click()
    beallitasok.Visible = Not beallitasok.Visible
    racsoz
End Sub


Private Sub beallitasok_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub

Private Sub c_lb_Click(Index As Integer)
On Error GoTo ki
    c_lb(aktiv).BackColor = Me.BackColor
    c_lb(Index).BackColor = vbBlue
    aktiv = Index
ki:
End Sub


Private Sub ellenor_mnu_Click()
    Dim i As Integer, ec As String
    
    For i = 1 To c_lb.Count - 1
        If c_lb(i).Caption <> "_" Then
                ec = ec + c_lb(i).Caption
            Else
                ec = c * 2
        End If
    Next i
    
    If CLng(ec) = c Then
            info.Caption = "Gratulálok, ügyes vagy!"
        Else
            info.Caption = "Valamit elrontottál, próbáld újra!"
    End If
End Sub



Private Sub feladat_lap_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
If beallitasok.Visible Then Exit Sub

If IsNumeric(Chr(KeyAscii)) Then
    c_lb(aktiv).Caption = Chr(KeyAscii)
    If aktiv > 1 Then
        c_lb_Click (aktiv - 1)
    End If
End If

If KeyAscii = 13 Then ellenor_mnu_Click


End Sub

Private Sub Form_Load()
szint = 2
min = 1000
max = 10000
kivonas = True
probak = 1
    
    szint_cmb.AddItem "Kezdõ"
    szint_cmb.AddItem "Középhaladó"
    szint_cmb.AddItem "Haladó"
    szint_cmb.AddItem "Egyéni"
    
    szint_cmb.Text = szint_cmb.List(1)
    szint_cmb_Click
    uccso_szint = 1
    OK
    
    'nevjegy_cime.Caption = "Számok rendezése " & App.Major & "." & App.Minor & "." & App.Revision & ". névjegye - Muráti Ákos"
    
uj_mnu_Click
vezerlo_alap
pozicional
End Sub


Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub

Private Sub Form_Resize()
    pozicional
End Sub



Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

Private Sub szint_cmb_Click()
    minimum.Enabled = False
    maximum.Enabled = False
    
    Select Case szint_cmb.ListIndex
        Case 0
            minimum.Text = 100
            maximum.Text = 9999
        Case 1
            minimum.Text = 1000
            maximum.Text = 99999
        Case 2
            minimum.Text = 10000
            maximum.Text = 9999999
        Case 3
            minimum.Enabled = True
            maximum.Enabled = True
    End Select
End Sub

Private Sub uj_mnu_Click()
Dim i, k
torol
a = veletlen()
b = veletlen()
If b > a Then
    k = b
    b = a
    a = k
End If
If kivonas Then
        c = a - b
        muvelet.Caption = "-"
    Else
        c = a + b
        muvelet.Caption = "+"
End If

k = vonal.X2 - vonal.X1 - (Len(Str(a)) * 200)
For i = 1 To Len(Str(a))
    Load a_lb(i)
    a_lb(i).Caption = Mid(Str(a), i, 1)
    a_lb(i).Left = k
    a_lb(i).Top = 0
    a_lb(i).Visible = True
    k = k + 200
Next i

'MsgBox a
k = vonal.X2 - vonal.X1 - (Len(Str(b)) * 200)
For i = 1 To Len(Str(b))
    Load b_lb(i)
    b_lb(i).Caption = Mid(Str(b), i, 1)
    b_lb(i).Left = k
    b_lb(i).Top = a_lb(1).Height
    b_lb(i).Visible = True
    k = k + 200
Next i
'MsgBox b
'MsgBox c
k = vonal.X2 - vonal.X1 - ((Len(Str(c)) - 1) * 200)
For i = 1 To Len(Str(c)) - 1
    Load c_lb(i)
    c_lb(i).Caption = "_"
    c_lb(i).Left = k
    c_lb(i).Top = vonal.Y1 + vonal.BorderWidth
    c_lb(i).Visible = True
    k = k + 200
Next i
'Print c
info.Caption = ""
c_lb_Click (Len(Str(c)) - 1)

End Sub

Function veletlen()
    If ((max + 1) < min) Then
        veletlen = 0
        Exit Function
    End If
    Randomize (Second(Time))
    veletlen = (Int(Rnd(1) * ((max + 1) - min))) + min
End Function

Sub torol()
    On Error Resume Next
    aktiv = 1
    For i = 1 To Len(Str(CLng(a + b))) + 10
        Unload a_lb(i)
        Unload b_lb(i)
        Unload c_lb(i)
    Next i
End Sub

Private Sub pozicional()
    If Me.Width < vezerlo_tarto.Width + 200 Then Me.Width = vezerlo_tarto.Width + 200
    If Me.Height < feladat_lap.Height + info.Height + 200 + vezerlo_tarto.Height + cimsor.Height Then Me.Height = feladat_lap.Height + info.Height + 200 + vezerlo_tarto.Height + cimsor.Height
    
    vezerlo_tarto.Move (Me.ScaleWidth - vezerlo_tarto.Width) / 2, 100
    
    feladat_lap.Move (Me.Width - feladat_lap.Width) / 2, (Me.Height - info.Height - 200 - vezerlo_tarto.Height - feladat_lap.Height) / 2
        
    cimsor.Move (Me.Width - cimsor.Width) / 2, vezerlo_tarto.Top + vezerlo_tarto.Height + 100
    
    info.Move (Me.Width - info.Width) / 2, feladat_lap.Top + feladat_lap.Height + 100, Me.Width
    
    beallitasok.Move (Me.Width - beallitasok.Width) / 2, (Me.Height - beallitasok.Height) / 2
    'nevjegy.Move (szamsorok.ScaleWidth - nevjegy.Width) / 2, (szamsorok.ScaleHeight - nevjegy.Height) / 2
    
    'uzenet.Move beallitasok.Left, beallitasok.Top, beallitasok.Width, beallitasok.Height

    racsoz
    Me.Refresh
End Sub

Sub vezerlo_alap()
On Error Resume Next
If uccso_vezerlo = vezerlo.Count Then Exit Sub
    For i = 0 To vezerlo.Count - 1
        vezerlo(i).Picture = gombok.ListImages(1).Picture
        vezerlo_cimke(i).Move vezerlo(i).Left, vezerlo(i).Top + ((vezerlo(i).Height - vezerlo_cimke(i).Height) / 2), vezerlo(i).Width
        vezerlo_cimke(i).ZOrder (0)
    Next i
    
    uccso_vezerlo = vezerlo.Count
End Sub
Private Sub vezerlo_cimke_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_MouseDown Index, Button, Shift, X, Y
End Sub

Private Sub vezerlo_cimke_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_MouseMove Index, Button, Shift, X, Y
End Sub

Private Sub vezerlo_cimke_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_MouseUp Index, Button, Shift, X, Y
End Sub

Private Sub vezerlo_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_valt Index, 3
End Sub

Private Sub vezerlo_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_valt Index, 2
End Sub
Sub vezerlo_valt(Index As Integer, mire As Byte)
    If uccso_vezerlo = Index And mire = 2 Then Exit Sub
    
    vezerlo_alap
    vezerlo(Index).Picture = gombok.ListImages(mire).Picture
    
    uccso_vezerlo = Index
End Sub

Private Sub vezerlo_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    Select Case Index
        Case 0
            OK
        Case 1
            megse
        Case 2
            uj_mnu_Click
        Case 3
            ellenor_mnu_Click
        Case 4
            beall_mnu_Click
        Case 5
            MsgBox "Természetes számok összeadása, kivonása - Muráti Ákos", vbInformation, "Névjegy"
        Case 6
            Unload Me
    End Select
    vezerlo_valt Index, 1
End Sub

Private Sub vezerlo_tarto_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub
Public Sub racsoz()
    lepel.Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
    lepel.Visible = beallitasok.Visible ' Or nevjegy.Visible
    
    racs(0).Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
    racs(0).Visible = lepel.Visible
    
    racs(1).Move 7, 7, feladat_lap.Width + 10, feladat_lap.Height + 10
    racs(1).Visible = lepel.Visible
    
    feladat_lap.Enabled = Not lepel.Visible
    vezerlo_tarto.Enabled = Not lepel.Visible

    racs(0).ZOrder 0
    racs(1).ZOrder 0
    lepel.ZOrder 0
    beallitasok.ZOrder 0
End Sub
Private Sub OK()
    torol
    max = maximum
    min = minimum
    uccso_szint = szint_cmb.ListIndex
    kivonas = kivon_chk.Value
    
    megse
    uj_mnu_Click
End Sub
Private Sub megse()
    maximum = max
    minimum = min
    szint_cmb.Text = szint_cmb.List(uccso_szint)
    kivon_chk.Value = Abs(Int(kivonas))
    
    If kivon_chk.Value = 1 Then
            Me.Caption = "Természetes számok kivonása"
            cimsor.Caption = "Vondd ki egymásból a két számot!"
    Else
            Me.Caption = "Természetes számok összeadása"
            cimsor.Caption = "Add össze a két számot!"
    End If
    
    beallitasok.Visible = False
    racsoz
    vezerlo_tarto.Enabled = True
End Sub
