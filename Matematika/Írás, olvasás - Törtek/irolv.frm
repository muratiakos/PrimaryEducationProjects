VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form irolv 
   Appearance      =   0  'Flat
   BackColor       =   &H00A46E54&
   Caption         =   "Tizedes törtek írása, olvasása, helyesírása"
   ClientHeight    =   5220
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   7635
   Icon            =   "irolv.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5220
   ScaleWidth      =   7635
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame nevjegy 
      Appearance      =   0  'Flat
      BackColor       =   &H0080FF80&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   3015
      Left            =   2880
      TabIndex        =   23
      Top             =   2520
      Visible         =   0   'False
      Width           =   5655
      Begin VB.TextBox nevjegy_szoveg 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H0080FF80&
         BorderStyle     =   0  'None
         ForeColor       =   &H00000000&
         Height          =   855
         Left            =   720
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   24
         Text            =   "irolv.frx":1CFA
         Top             =   720
         Width           =   3975
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "OK"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   7
         Left            =   4320
         TabIndex        =   27
         Top             =   2520
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   7
         Left            =   4320
         Top             =   2400
         Width           =   975
      End
      Begin VB.Label nevjegy_cime 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Tizedes törtek írása, olvasása, helyesírása"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   238
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   300
         Left            =   165
         TabIndex        =   26
         Top             =   120
         Width           =   5385
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00FFFFFF&
         X1              =   240
         X2              =   5280
         Y1              =   2280
         Y2              =   2280
      End
      Begin VB.Label nevjegy_cr 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Muráti Ákos 2003 - SZTE Ságvári Endre Gyakorló Gimnázium"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   0
         Left            =   360
         TabIndex        =   25
         Top             =   2400
         Width           =   3585
         WordWrap        =   -1  'True
      End
   End
   Begin VB.PictureBox vezerlo_tarto 
      Appearance      =   0  'Flat
      BackColor       =   &H00A46E54&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   600
      ScaleHeight     =   615
      ScaleWidth      =   6075
      TabIndex        =   14
      Top             =   360
      Width           =   6075
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
         Left            =   2400
         TabIndex        =   19
         Top             =   360
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
         Left            =   1320
         TabIndex        =   18
         Top             =   360
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
         Left            =   120
         TabIndex        =   17
         Top             =   360
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   6
         Left            =   4800
         Top             =   240
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
         Left            =   4800
         TabIndex        =   16
         Top             =   360
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   4
         Left            =   2400
         Top             =   240
         Width           =   1095
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   3
         Left            =   1200
         Top             =   240
         Width           =   1095
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   2
         Left            =   0
         Top             =   240
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
         Left            =   3600
         TabIndex        =   15
         Top             =   360
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   5
         Left            =   3600
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame beallitasok 
      Appearance      =   0  'Flat
      BackColor       =   &H000080FF&
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
      ForeColor       =   &H00FFFFFF&
      Height          =   2055
      Left            =   1680
      TabIndex        =   0
      Top             =   2400
      Visible         =   0   'False
      Width           =   4455
      Begin VB.ComboBox tj 
         Appearance      =   0  'Flat
         Height          =   315
         ItemData        =   "irolv.frx":1DBC
         Left            =   1440
         List            =   "irolv.frx":1DC9
         Style           =   2  'Dropdown List
         TabIndex        =   28
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox feladatok 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   3480
         MaxLength       =   2
         TabIndex        =   5
         Text            =   "10"
         Top             =   360
         Width           =   735
      End
      Begin VB.TextBox maximum 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   3480
         MaxLength       =   7
         TabIndex        =   4
         Text            =   "20"
         Top             =   1080
         Width           =   735
      End
      Begin VB.CheckBox szam_szov 
         Appearance      =   0  'Flat
         BackColor       =   &H000080FF&
         Caption         =   "Számok átírása szöveggé"
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   240
         TabIndex        =   3
         Top             =   1080
         Width           =   1815
      End
      Begin VB.TextBox minimum 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   3480
         MaxLength       =   7
         TabIndex        =   2
         Text            =   "1"
         Top             =   720
         Width           =   735
      End
      Begin VB.ComboBox szint 
         Appearance      =   0  'Flat
         Height          =   315
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   360
         Width           =   1815
      End
      Begin VB.Label cimke 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Tizedes jegy(ek):"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   29
         Top             =   780
         Width           =   1455
      End
      Begin VB.Label cimke 
         Appearance      =   0  'Flat
         BackColor       =   &H00A46E54&
         BackStyle       =   0  'Transparent
         Caption         =   "Feladatok:"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   0
         Left            =   2280
         TabIndex        =   10
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label cimke 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Maximális érték:"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   1
         Left            =   2280
         TabIndex        =   9
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   1
         Left            =   2400
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   0
         Left            =   960
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
         Left            =   960
         TabIndex        =   8
         Top             =   1680
         Width           =   975
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
         TabIndex        =   7
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label cimke 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Minimális érték:"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   2
         Left            =   2280
         TabIndex        =   6
         Top             =   720
         Width           =   1455
      End
      Begin VB.Line vonal 
         BorderColor     =   &H00FFFFFF&
         X1              =   2160
         X2              =   2160
         Y1              =   240
         Y2              =   1440
      End
   End
   Begin MSComctlLib.ImageList gombok 
      Left            =   6480
      Top             =   2040
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483648
      ImageWidth      =   75
      ImageHeight     =   24
      MaskColor       =   16777215
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "irolv.frx":1DD6
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "irolv.frx":223A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "irolv.frx":26CE
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Frame feladatlap 
      BackColor       =   &H00A46E54&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   2175
      Left            =   600
      TabIndex        =   11
      Top             =   1440
      Width           =   6735
      Begin VB.TextBox megoldas 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Index           =   0
         Left            =   240
         TabIndex        =   13
         Text            =   "háromszázhatvanötmillió-kettõszázötvenkilenczezerhétszázhatvanegy"
         Top             =   0
         Visible         =   0   'False
         Width           =   6615
      End
      Begin VB.Shape racs 
         BorderColor     =   &H00000000&
         BorderStyle     =   0  'Transparent
         FillColor       =   &H00404040&
         FillStyle       =   7  'Diagonal Cross
         Height          =   855
         Index           =   1
         Left            =   0
         Top             =   0
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.Label meret_prb 
         AutoSize        =   -1  'True
         Caption         =   "Méret_prb"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   20
         Top             =   480
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label feladat 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Feladat"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   240
         Index           =   0
         Left            =   0
         TabIndex        =   12
         Top             =   0
         Visible         =   0   'False
         Width           =   810
      End
   End
   Begin VB.Label lepel 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00808080&
      Height          =   855
      Left            =   0
      TabIndex        =   22
      Top             =   480
      Visible         =   0   'False
      Width           =   1695
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
   Begin VB.Image bal 
      Appearance      =   0  'Flat
      Height          =   2295
      Left            =   0
      Picture         =   "irolv.frx":2D6A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   135
   End
   Begin VB.Image jobb 
      Appearance      =   0  'Flat
      Height          =   2295
      Left            =   9360
      Picture         =   "irolv.frx":2DE4
      Stretch         =   -1  'True
      Top             =   0
      Width           =   135
   End
   Begin VB.Image felso 
      Height          =   210
      Left            =   0
      Picture         =   "irolv.frx":2E5E
      Stretch         =   -1  'True
      Top             =   0
      Width           =   9375
   End
   Begin VB.Image also 
      Height          =   210
      Left            =   0
      Picture         =   "irolv.frx":2ED8
      Stretch         =   -1  'True
      Top             =   2280
      Width           =   9375
   End
   Begin VB.Image bf 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   0
      Picture         =   "irolv.frx":2F4E
      Top             =   0
      Width           =   210
   End
   Begin VB.Image ba 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   0
      Picture         =   "irolv.frx":31F8
      Top             =   2280
      Width           =   210
   End
   Begin VB.Image jf 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   9240
      Picture         =   "irolv.frx":34A2
      Top             =   0
      Width           =   210
   End
   Begin VB.Image ja 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   9240
      Picture         =   "irolv.frx":374C
      Top             =   2280
      Width           =   210
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "INFO cimke"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080CEF4&
      Height          =   1380
      Left            =   480
      TabIndex        =   21
      Top             =   3960
      Width           =   6765
   End
   Begin VB.Menu irolv_mnu 
      Caption         =   "Irolv"
      Visible         =   0   'False
      Begin VB.Menu uj_mnu 
         Caption         =   "Új feladat"
      End
      Begin VB.Menu beall_mnu 
         Caption         =   "Beállítások"
      End
      Begin VB.Menu ellenorzes_mnu 
         Caption         =   "Ellenõrzés"
      End
   End
End
Attribute VB_Name = "irolv"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer, j As Long, k As Integer, szamok_AX As Object
Dim feladatok_szama As Integer, szambol As Boolean, uccso_vezerlo As Byte
Dim eredeti(1 To 10) As String, egyeni(1 To 10) As String
Dim osztott(1 To 9999999) As Boolean, min As Long, max As Long
Dim probalkozasok As Byte, uccso_szint As Byte

Private Sub beall_mnu_Click()
    beallitasok.Visible = Not beallitasok.Visible
    racsoz
End Sub



Private Sub beallitasok_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub

Private Sub ellenorzes_mnu_Click()
   Dim jo As Boolean
   jo = True
    For i = 1 To feladatok_szama
        egyeni(i) = megoldas(i)
        If egyeni(i) = "" Then egyeni(i) = "0"
        If Not szambol And Not IsNumeric(egyeni(i)) Then
            egyeni(i) = "0"
        End If
    Next i
    
    For i = 1 To feladatok_szama
        j = hasonlit(eredeti(i), egyeni(i))
        Select Case j
            Case -1
                megoldas(i).BackColor = vbRed
                jo = False
            Case 0
                megoldas(i).BackColor = vbWhite
            Case 1
                megoldas(i).BackColor = vbGreen
                megoldas(i).Enabled = False
        End Select
    Next i
    If jo Then
        info.Caption = "Gratulálok, ügyes vagy!"
    Else
        info.Caption = "Valamit elrontottál! Olvasd el figyelmesen és próbáld újra."
        If szambol Then
            info.Caption = info.Caption & " Figyelj arra, hogy a számokat kétezerig egybeírjuk, de kétezer felett már hármas tagolással, kötõjelezve."
        End If
    End If
End Sub



Private Sub Form_Load()
    Set szamok_AX = New Irasa

    szambol = True
    'feladatok_szama = 5
    vezerlo_alap
    
    'min = 1000
    'max = 9999
    
    szint.AddItem "Kezdõ"
    szint.AddItem "Középhaladó"
    szint.AddItem "Haladó"
    szint.AddItem "Egyéni"
    
    szint.Text = szint.List(1)
    uccso_szint = 1
    szint_Click
    megse
    OK
    
    probalkozasok = 0
    uj_mnu_Click

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub

Private Sub Form_Resize()
    pozicionalo

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set szamok_AX = Nothing
    End
End Sub











Private Sub megoldas_KeyPress(Index As Integer, KeyAscii As Integer)
    If KeyAscii = 13 Then
        If Index = megoldas.Count - 1 Then
            ellenorzes_mnu_Click
        Else
            megoldas(Index + 1).SetFocus
        End If
    End If
End Sub

Private Sub nevjegy_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub

Private Sub uj_mnu_Click()
Dim legnagyobb As Integer
    torol
    k = 0
    legnagyobb = 0
    For i = 1 To feladatok_szama
        
        Load feladat(i)
        With feladat(i)
            .Left = 0
            .Top = k
            eredeti(i) = veletlen()
            If szambol Then
                If Len(meret_prb.Caption) < Len(szamok_AX.szamot_szovegge(CDbl(eredeti(i)))) Then
                        meret_prb.Caption = szamok_AX.szamot_szovegge(CDbl(eredeti(i)))
                    Else
                        If Len(meret_prb.Caption) < Len(szamok_AX.szoveget_szamma(eredeti(i))) Then
                                 meret_prb.Caption = szamok_AX.szoveget_szamma(eredeti(i))
                        End If
                End If
            End If
                        
            .Caption = eredeti(i)
            .AutoSize = True
            .Visible = True
            .Refresh
        End With
        If legnagyobb < feladat(i).Width + 200 Then legnagyobb = feladat(i).Width + 200
        
        Load megoldas(i)
        With megoldas(i)
            .Top = k
            .Text = ""
            '.Visible = True
        End With
        
        
        k = k + megoldas(1).Height + 150
    Next i
    For i = 1 To megoldas.Count - 1
        megoldas(i).Left = legnagyobb
        megoldas(i).Width = meret_prb.Width + 100
        megoldas(i).Visible = True
    Next i
        
    feladatlap.Height = megoldas(feladatok_szama).Top + megoldas(1).Height
    feladatlap.Width = legnagyobb + megoldas(1).Width
    If szambol Then
        info.Caption = "Írd le a számot betûkkel!"
    Else
        info.Caption = "Írd le számjegyekkel!"
    End If
    pozicionalo
End Sub
Public Sub torol()
    probalkozasok = 0
    For i = 1 To 10
        eredeti(i) = ""
        egyeni(i) = ""
        osztott(i) = False
    Next i
    
    For i = 1 To feladat.Count - 1
        Unload feladat(i)
        Unload megoldas(i)
        
    Next i
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
            ellenorzes_mnu_Click
        Case 4
            beall_mnu_Click
        Case 5
            nevjegy.Visible = True
            racsoz
        Case 6
            Unload Me
        Case 7
            nevjegy.Visible = False
            racsoz
    End Select
    vezerlo_valt Index, 1
End Sub
Function veletlen() As String
Dim meg
    If ((max + 1) - min) < kartyak_szama Then
         'uzenet_kuld "Egyszeri Véletlenszám Generátor", "Az EVG végtelenciklusba lépett, ezért futása meg lesz szakítva. A hibával kapcsoltaban értesítse a fejlesztõt! Elnézésüket kérjük."
        'Unload Me
        veletlen = 0
        Exit Function
    End If
    
be:
         Randomize (Second(Time))
         j = (Int(Rnd(1) * ((max + 1) - min))) + min
         meg = Rnd(1)
    If osztott(j) Or meg = 0 Then GoTo be
    Randomize Time
    'If (Int(Rnd(1) * 2) + 1) Mod 2 = 0 And tj.Text >= 2 Then meg = meg * 10
    
    osztott(j) = True
    If szambol Then
            veletlen = Format(j + meg, "#." & soxoroz(CByte(tj.Text)))
        Else
            veletlen = szamok_AX.szamot_szovegge(CDbl(Format(j + Rnd(1), "#." & soxoroz(CByte(tj.Text)))))
    End If
End Function
Public Function hasonlit(eredeti, beirt)
eredeti = LCase(eredeti)
beirt = LCase(beirt)
    If szambol Then
            If szamok_AX.szamot_szovegge(CDbl(eredeti)) = beirt Then
                    hasonlit = 1
                Else
                    If CDbl(eredeti) = szamok_AX.szoveget_szamma(beirt) And CDbl(eredeti) > 2000 Then
                            hasonlit = 0
                        Else
                            hasonlit = -1
                    End If
            End If
        Else
            If eredeti = szamok_AX.szamot_szovegge(CDbl(beirt)) Then
                    hasonlit = 1
                Else
                    hasonlit = -1
            End If
    End If
End Function
Private Sub OK()
On Error Resume Next
    feladatok_LostFocus
    torol
    feladatok_szama = feladatok.Text
    max = maximum
    min = minimum
    
    If min > max Then
        seged = max
        max = min
        min = seged
    End If
    
    uccso_szint = szint.ListIndex
    szambol = szam_szov.Value
    
    megse
    uj_mnu_Click
End Sub
Private Sub megse()
    feladatok.Text = feladatok_szama
    maximum = max
    minimum = min
    szint.Text = szint.List(uccso_szint)
    szam_szov.Value = Abs(Int(szambol))
    
    
    beallitasok.Visible = False
    racsoz
    vezerlo_tarto.Enabled = True
End Sub
Private Sub szint_Click()
    
    feladatok.Enabled = False
    minimum.Enabled = False
    maximum.Enabled = False
    tj.Enabled = False
    
    Select Case szint.ListIndex
        Case 0
            feladatok.Text = 3
            minimum.Text = 10
            maximum.Text = 999
            tj.Text = "1"
        Case 1
            feladatok.Text = 4
            minimum.Text = 1000
            maximum.Text = 9999
            tj.Text = "2"
        Case 2
            feladatok.Text = 5
            minimum.Text = 1
            maximum.Text = 9999999
            tj.Text = "3"
        Case 3
            feladatok.Enabled = True
            minimum.Enabled = True
            maximum.Enabled = True
            tj.Enabled = True
    End Select
End Sub

Private Sub minimum_LostFocus()
On Error Resume Next
    If Not IsNumeric(minimum.Text) Then minimum.Text = min
    'If cdbl(minimum.Text) < cdbl(minimum.Text) Then minimum.Text = minimum.Text + feladatok.text
    If CDbl(minimum.Text) > 9999999 Then minimum.Text = 9999999 - CDbl(feladatok.Text)
    minimum.Text = Int(minimum.Text)
    maximum_LostFocus
End Sub
Private Sub maximum_LostFocus()
On Error Resume Next
    If Not IsNumeric(maximum.Text) Then maximum.Text = max
    If CDbl(maximum.Text) <= CDbl(minimum.Text) Then maximum.Text = CDbl(minimum.Text) + CDbl(feladatok.Text)
    If CDbl(maximum.Text) > 9999999 Then maximum.Text = 9999999
    maximum.Text = Int(Abs(maximum.Text))
End Sub
Private Sub feladatok_LostFocus()
On Error Resume Next
    If Not IsNumeric(feladatok.Text) Then feladatok.Text = kartyak_szama
    If CDbl(feladatok.Text) > 10 Then feladatok.Text = 10 'max_kartya Then feladatok.text = max_kartya
    If CDbl(feladatok.Text) > CDbl(maximum.Text) - CDbl(minimum.Text) + 1 Then feladatok.Text = CDbl(maximum.Text) - CDbl(minimum.Text) + 1
    feladatok.Text = Int(Abs(feladatok.Text))
    
    minimum_LostFocus
End Sub

Private Sub vezerlo_tarto_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    vezerlo_alap
End Sub
Private Sub pozicionalo()
On Error Resume Next
    If Me.Width < bal.Width + jobb.Width + feladatlap.Width Then
            Me.Width = bal.Width + jobb.Width + feladatlap.Width
    End If
    If Me.Height < felso.Height + also.Height + info.Height + 100 + vezerlo_tarto.Height + 150 + feladatlap.Height Then
            Me.Height = felso.Height + also.Height + info.Height + 100 + vezerlo_tarto.Height + 150 + feladatlap.Height
    End If
    
    bf.Move 0, 0
    ba.Move 0, Me.ScaleHeight - ba.Height
    
    
    jf.Move Me.ScaleWidth - jf.Width, 0
    ja.Move Me.ScaleWidth - ja.Width, Me.ScaleHeight - ja.Height
    
    bal.Move 0, 0, bal.Width, Me.ScaleHeight
    bal.ZOrder 1
    
    jobb.Move Me.ScaleWidth - jobb.Width, 0, jobb.Width, Me.ScaleHeight
    jobb.ZOrder 1
    
    felso.Move 0, 0, Me.ScaleWidth, felso.Height
    felso.ZOrder 1
    
    also.Move 0, Me.ScaleHeight - also.Height, Me.ScaleWidth, also.Height
    also.ZOrder 1
    
    vezerlo_tarto.Move (Me.ScaleWidth - vezerlo_tarto.Width) / 2, felso.Top + felso.Height - 100
     
    feladatlap.Move ((Me.Width - bal.Width - jobb.Width) - feladatlap.Width) / 2 + bal.Width + jobb.Width, ((Me.Height - vezerlo_tarto.Height - also.Height - felso.Height - info.Height) - feladatlap.Height) / 2 + vezerlo_tarto.Top + vezerlo_tarto.Height + 150
    feladatlap.ZOrder 1
     
    info.Move ba.Width, feladatlap.Top + feladatlap.Height + 400, Me.ScaleWidth - ba.Width - ja.Width
    
    beallitasok.Move (Me.ScaleWidth - beallitasok.Width) / 2, (Me.ScaleHeight - beallitasok.Height) / 2
    nevjegy.Move (Me.ScaleWidth - nevjegy.Width) / 2, (Me.ScaleHeight - nevjegy.Height) / 2
End Sub

Public Sub racsoz()
    lepel.Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
    lepel.Visible = beallitasok.Visible Or nevjegy.Visible
    
    racs(0).Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
    racs(0).Visible = lepel.Visible
    
    racs(1).Move 0, 0, feladatlap.Width, feladatlap.Height
    racs(1).Visible = lepel.Visible
    
    feladatlap.Enabled = Not lepel.Visible
    vezerlo_tarto.Enabled = Not lepel.Visible

    racs(0).ZOrder 0
    racs(1).ZOrder 0
    lepel.ZOrder 0
    beallitasok.ZOrder 0
End Sub
Private Function soxoroz(hany As Integer) As String
Dim i As Integer
    soxoroz = ""
    For i = 1 To hany
        soxoroz = soxoroz & "#"
    Next i
End Function

