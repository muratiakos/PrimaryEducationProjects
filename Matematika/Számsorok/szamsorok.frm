VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form szamsorok 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H00A46E54&
   Caption         =   "SZámsorok"
   ClientHeight    =   6015
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   10050
   FillColor       =   &H00A46E54&
   ForeColor       =   &H80000008&
   Icon            =   "szamsorok.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6015
   ScaleWidth      =   10050
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
      Left            =   2400
      TabIndex        =   26
      Top             =   1200
      Visible         =   0   'False
      Width           =   5535
      Begin VB.TextBox nevjegy_szoveg 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H0080FF80&
         BorderStyle     =   0  'None
         ForeColor       =   &H00000000&
         Height          =   1455
         Left            =   1440
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   29
         Text            =   "szamsorok.frx":466A
         Top             =   600
         Width           =   3855
      End
      Begin VB.Label nevjegy_cr 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Muráti Ákos 2002.Minden jog fenntartva."
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
         Index           =   3
         Left            =   240
         TabIndex        =   31
         Top             =   2400
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
         TabIndex        =   28
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
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Számsorok névjegye"
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
         Height          =   375
         Left            =   120
         TabIndex        =   27
         Top             =   120
         Width           =   5295
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00FFFFFF&
         X1              =   240
         X2              =   5280
         Y1              =   2280
         Y2              =   2280
      End
   End
   Begin VB.Frame uzenet 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
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
      Left            =   6480
      TabIndex        =   15
      Top             =   4200
      Visible         =   0   'False
      Width           =   4455
      Begin VB.Label uzenet_szoveg 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Üzenet_szöveg"
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
         Height          =   975
         Left            =   120
         TabIndex        =   18
         Top             =   480
         Width           =   4215
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00FFFFFF&
         X1              =   0
         X2              =   4440
         Y1              =   360
         Y2              =   360
      End
      Begin VB.Label uzenet_cime 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Üzenet"
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
         Height          =   255
         Left            =   0
         TabIndex        =   17
         Top             =   120
         Width           =   4335
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   6
         Left            =   1800
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
         Index           =   6
         Left            =   1800
         TabIndex        =   16
         Top             =   1665
         Width           =   975
      End
   End
   Begin MSComctlLib.ImageList gombok 
      Left            =   8160
      Top             =   1440
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
            Picture         =   "szamsorok.frx":4787
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "szamsorok.frx":4BEB
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "szamsorok.frx":507F
            Key             =   ""
         EndProperty
      EndProperty
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
      TabIndex        =   2
      Top             =   3480
      Visible         =   0   'False
      Width           =   4455
      Begin VB.ComboBox szint 
         Appearance      =   0  'Flat
         Height          =   315
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   20
         Top             =   360
         Width           =   1815
      End
      Begin VB.TextBox minimum 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   3480
         MaxLength       =   7
         TabIndex        =   14
         Text            =   "1"
         Top             =   720
         Width           =   735
      End
      Begin VB.CheckBox csokkeno 
         Appearance      =   0  'Flat
         BackColor       =   &H000080FF&
         Caption         =   "Csökkenõ sorrend"
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   240
         TabIndex        =   5
         Top             =   1080
         Width           =   1695
      End
      Begin VB.TextBox maximum 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   3480
         MaxLength       =   7
         TabIndex        =   1
         Text            =   "20"
         Top             =   1080
         Width           =   735
      End
      Begin VB.TextBox kartyak 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   3480
         MaxLength       =   2
         TabIndex        =   0
         Text            =   "10"
         Top             =   360
         Width           =   735
      End
      Begin VB.Line vonal 
         BorderColor     =   &H00FFFFFF&
         X1              =   2160
         X2              =   2160
         Y1              =   240
         Y2              =   1440
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
         TabIndex        =   13
         Top             =   720
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
         TabIndex        =   7
         Top             =   1680
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
         TabIndex        =   6
         Top             =   1680
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   0
         Left            =   960
         Top             =   1560
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   1
         Left            =   2400
         Top             =   1560
         Width           =   1095
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
         TabIndex        =   4
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label cimke 
         Appearance      =   0  'Flat
         BackColor       =   &H00A46E54&
         BackStyle       =   0  'Transparent
         Caption         =   "Kártyák száma:"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Index           =   0
         Left            =   2280
         TabIndex        =   3
         Top             =   360
         Width           =   1455
      End
   End
   Begin MSComctlLib.ImageList lapok 
      Left            =   8760
      Top             =   840
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   59
      ImageHeight     =   58
      MaskColor       =   16515836
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   4
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "szamsorok.frx":571B
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "szamsorok.frx":5B73
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "szamsorok.frx":61F3
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "szamsorok.frx":6667
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox vezerlo_tarto 
      Appearance      =   0  'Flat
      BackColor       =   &H00A46E54&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   1560
      ScaleHeight     =   615
      ScaleWidth      =   7155
      TabIndex        =   8
      Top             =   720
      Width           =   7155
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   9
         Left            =   1200
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Visszarendez"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   9
         Left            =   1200
         TabIndex        =   32
         Top             =   240
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   8
         Left            =   4800
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Névjegy"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   8
         Left            =   4800
         TabIndex        =   30
         Top             =   240
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   2
         Left            =   0
         Top             =   120
         Width           =   1095
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   3
         Left            =   2400
         Top             =   120
         Width           =   1095
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   4
         Left            =   3600
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Kilépés"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   5
         Left            =   6000
         TabIndex        =   12
         Top             =   240
         Width           =   975
      End
      Begin VB.Image vezerlo 
         Height          =   375
         Index           =   5
         Left            =   6000
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Új feladat"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   975
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Ellenõrzés"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   3
         Left            =   2520
         TabIndex        =   10
         Top             =   240
         Width           =   975
      End
      Begin VB.Label vezerlo_cimke 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Beállítások"
         ForeColor       =   &H80000008&
         Height          =   195
         Index           =   4
         Left            =   3600
         TabIndex        =   9
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame lap_tarto 
      Appearance      =   0  'Flat
      BackColor       =   &H00A46E54&
      BorderStyle     =   0  'None
      ClipControls    =   0   'False
      ForeColor       =   &H80000008&
      Height          =   2535
      Left            =   1080
      TabIndex        =   21
      Top             =   2280
      Width           =   6375
      Begin VB.Shape racs 
         BorderColor     =   &H00808080&
         BorderStyle     =   0  'Transparent
         FillColor       =   &H00404040&
         FillStyle       =   7  'Diagonal Cross
         Height          =   855
         Index           =   1
         Left            =   480
         Top             =   240
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.Image fantom 
         Height          =   870
         Index           =   0
         Left            =   1680
         Top             =   1560
         Visible         =   0   'False
         Width           =   885
      End
      Begin VB.Image gomb 
         Height          =   870
         Index           =   0
         Left            =   1560
         Top             =   0
         Visible         =   0   'False
         Width           =   885
      End
      Begin VB.Label gomb_szama 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
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
         Left            =   1725
         TabIndex        =   24
         Top             =   120
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label kontener 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H8000000C&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   870
         Index           =   0
         Left            =   0
         TabIndex        =   23
         Top             =   240
         Visible         =   0   'False
         Width           =   885
      End
      Begin VB.Label fantom_szama 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00636363&
         Height          =   240
         Index           =   0
         Left            =   1845
         TabIndex        =   22
         Top             =   1680
         Visible         =   0   'False
         Width           =   165
      End
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
      Left            =   960
      TabIndex        =   33
      Top             =   240
      Width           =   7455
   End
   Begin VB.Shape racs 
      BorderColor     =   &H00000000&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00404040&
      FillStyle       =   7  'Diagonal Cross
      Height          =   855
      Index           =   0
      Left            =   480
      Top             =   960
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label lepel 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00808080&
      Height          =   855
      Left            =   360
      TabIndex        =   25
      Top             =   1440
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Image ja 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   9240
      Picture         =   "szamsorok.frx":6CE7
      Top             =   2280
      Width           =   210
   End
   Begin VB.Image jf 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   9240
      Picture         =   "szamsorok.frx":6F91
      Top             =   0
      Width           =   210
   End
   Begin VB.Image ba 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   0
      Picture         =   "szamsorok.frx":723B
      Top             =   2280
      Width           =   210
   End
   Begin VB.Image bf 
      Appearance      =   0  'Flat
      Height          =   210
      Left            =   0
      Picture         =   "szamsorok.frx":74E5
      Top             =   0
      Width           =   210
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
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
      Height          =   495
      Left            =   240
      TabIndex        =   19
      Top             =   1800
      Width           =   8895
   End
   Begin VB.Image also 
      Height          =   210
      Left            =   0
      Picture         =   "szamsorok.frx":778F
      Stretch         =   -1  'True
      Top             =   2280
      Width           =   9375
   End
   Begin VB.Image felso 
      Height          =   210
      Left            =   0
      Picture         =   "szamsorok.frx":7805
      Stretch         =   -1  'True
      Top             =   0
      Width           =   9375
   End
   Begin VB.Image jobb 
      Appearance      =   0  'Flat
      Height          =   2295
      Left            =   9360
      Picture         =   "szamsorok.frx":787F
      Stretch         =   -1  'True
      Top             =   0
      Width           =   135
   End
   Begin VB.Image bal 
      Appearance      =   0  'Flat
      Height          =   2295
      Left            =   0
      Picture         =   "szamsorok.frx":78F9
      Stretch         =   -1  'True
      Top             =   0
      Width           =   135
   End
   Begin VB.Menu eszkozok_mnugrp 
      Caption         =   "Eszközök"
      Visible         =   0   'False
      Begin VB.Menu osztas_mnu 
         Caption         =   "Új osztás"
      End
      Begin VB.Menu ellenorzes_mnu 
         Caption         =   "Ellenõrzés"
      End
      Begin VB.Menu v1 
         Caption         =   "-"
      End
      Begin VB.Menu beallitasok_mnu 
         Caption         =   "Beállítások"
      End
      Begin VB.Menu kilepes_mnu 
         Caption         =   "Kilépés"
      End
   End
End
Attribute VB_Name = "szamsorok"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim kartyak_szama As Byte, aktiv As Byte, min As Long, max As Long
Dim eredeti(1 To 256) As Long, rendezett(1 To 256) As Long, egyeni(1 To 256) As Long, osztott(1 To 9999999) As Long
Dim probak As Byte, csokk_sor As Boolean
Dim i, j, k As Long, s1 As String
Dim uccso_vezerlo As Byte, uccso_szint As Byte






Private Sub beallitasok_mnu_Click()
    'Beállítások megjelenítése és a háttér blokkolása= lepel
    beallitasok.Visible = Not beallitasok.Visible
    racsoz
End Sub

Private Sub beallitasok_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'Vezérlõlrõl elmozdított egér metódusa
    vezerlo_alap
End Sub



Private Sub ellenorzes_mnu_Click()
    Dim jo As Boolean, emin As Long, emax As Long
    jo = True
    emin = max
    emax = min
    
    'Helyesség(jo), legkisebb(emin) és legnagyobb(emax) érték megállapítása
    For i = 1 To kartyak_szama
        If egyeni(i) = 0 Then
                info = "Csak akkor ellenõrizhetsz, ha teljesen kész vagy!"
                Exit Sub
        End If
        If egyeni(i) <> rendezett(i) Then jo = False
        If emin > rendezett(i) Then emin = rendezett(i)
        If emax < rendezett(i) Then emax = rendezett(i)
    Next i

    If Not jo Then
            
            For i = 2 To kartyak_szama
                If relacio(egyeni(i - 1), egyeni(i)) Then
                    gomb(sorszamkeres(egyeni(i))).Picture = lapok.ListImages(4).Picture
                End If
            Next i
            info.Caption = "Nem jó sorrendet állítottál fel! Próbáld újra!"
            probak = probak + 1
        Else
            info.Caption = "Gratulálok! " & probak & ". próbálkozásra sikerült!"
            'probak = 1
    End If
    
End Sub

Private Sub fantom_Click(Index As Integer)
    fantom_szama_Click (Index)
End Sub

Private Sub fantom_szama_Click(Index As Integer)

    gomb(Index).Move fantom(Index).Left, fantom(Index).Top
    gomb_szama(Index).Move fantom_szama(Index).Left, fantom_szama(Index).Top

    For i = 1 To kartyak_szama
        If egyeni(i) = gomb_szama(Index).Caption Then
                                                egyeni(i) = 0
                                                kontener(i).Enabled = True
        End If
    Next i

    fantom(Index).Visible = False
    fantom_szama(Index).Visible = False
    
    kontener_keret
End Sub



Private Sub felso_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
FormDrag Me
End Sub

Private Sub felso_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
vezerlo_alap
End Sub

Private Sub Form_DragOver(Source As Control, X As Single, Y As Single, State As Integer)
    kontener_DragOver 0, Source, X, Y, State
End Sub

Private Sub Form_Load()
    'rendszerváltozók és mezõk feltöltése
    probak = 1
    
    'kartyak_szama = 8
    csokk_sor = False
    'min = 1000
    'max = 99999
    
    aktiv = 1
    
    szint.AddItem "Kezdõ"
    szint.AddItem "Középhaladó"
    szint.AddItem "Haladó"
    szint.AddItem "Egyéni"
    
    szint.Text = szint.List(1)
    szint_Click
    uccso_szint = 1
    OK
    
    nevjegy_cime.Caption = "Számok rendezése " & App.Major & "." & App.Minor & "." & App.Revision & ". névjegye - Muráti Ákos"
    
    'inicializáló metódusok
    
    osztas_mnu_Click
    megse
    'pozicionalo
    vezerlo_alap
End Sub


Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
vezerlo_alap
End Sub

Private Sub Form_Resize()
pozicionalo

End Sub

Private Sub Form_Unload(Cancel As Integer)
Me.Hide
torol
End
End Sub

Private Sub gomb_DblClick(Index As Integer)
    fantom_szama_Click (Index)
End Sub


Private Sub gomb_DragOver(Index As Integer, Source As Control, X As Single, Y As Single, State As Integer)
    kontener_DragOver 0, Source, X, Y, State
End Sub

Private Sub gomb_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    kivalaszt (Index)
    gomb(Index).Drag
End Sub


Private Sub gomb_szama_DblClick(Index As Integer)
    fantom_szama_Click (Index)
End Sub

Private Sub gomb_szama_DragOver(Index As Integer, Source As Control, X As Single, Y As Single, State As Integer)
    kontener_DragOver 0, Source, X, Y, State
End Sub

Private Sub gomb_szama_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    kivalaszt (Index)
    gomb(Index).Drag
End Sub











Private Sub kartyak_LostFocus()
'Dim max_kartya As Byte
    'max_kartya = (Screen.Width - 200) / (gomb(0).Width + 30)
    
    If Not IsNumeric(kartyak.Text) Then kartyak.Text = kartyak_szama
    If CDbl(kartyak.Text) > 10 Then kartyak.Text = 10 'max_kartya Then kartyak.Text = max_kartya
    If CDbl(kartyak.Text) > CDbl(maximum.Text) - CDbl(minimum.Text) + 1 Then kartyak.Text = CDbl(maximum.Text) - CDbl(minimum.Text) + 1
    kartyak.Text = Int(Abs(kartyak.Text))
    
    minimum_LostFocus
End Sub

Private Sub kilepes_mnu_Click()
  Unload Me
End Sub

Private Sub kontener_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)
    gomb(aktiv).Move kontener(Index).Left, kontener(Index).Top
    gomb_szama(aktiv).Move gomb(aktiv).Left + (gomb(aktiv).Width - gomb_szama(aktiv).Width) / 2, gomb(aktiv).Top + (gomb(aktiv).Height - gomb_szama(aktiv).Height) / 2

        
        
    fantom(aktiv).Visible = True
    fantom_szama(aktiv).Visible = True

's1 = ""
    egyeni(Index) = gomb_szama(aktiv).Caption
    
    'másik konténerbõl áthelyezve
    For i = 1 To kartyak_szama
        If egyeni(i) = gomb_szama(aktiv).Caption And i <> Index Then
            egyeni(i) = 0
            kontener(i).Enabled = True
        End If
    's1 = s1 & egyeni(i) & "  "
    Next i
    
'Debug.Print s1
    kontener(Index).Enabled = False
    kontener_DragOver 0, Source, X, Y, 0
    kontener_keret
End Sub

Private Sub kontener_DragOver(Index As Integer, Source As Control, X As Single, Y As Single, State As Integer)
    For i = 1 To kartyak_szama
        kontener(i).BackStyle = 0
    Next i
    
    kontener(Index).BackStyle = 1

End Sub










Private Sub lap_tarto_DragOver(Source As Control, X As Single, Y As Single, State As Integer)
kontener_DragOver 0, Source, X, Y, State
End Sub

Private Sub lepel_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
vezerlo_alap
End Sub

Private Sub maximum_LostFocus()
    If Not IsNumeric(maximum.Text) Then maximum.Text = max
    If CDbl(maximum.Text) <= CDbl(minimum.Text) Then maximum.Text = CDbl(minimum.Text) + CDbl(kartyak.Text)
    If CDbl(maximum.Text) > 9999999 Then maximum.Text = 9999999
    maximum.Text = Int(Abs(maximum.Text))
End Sub

Private Sub megse()
    kartyak.Text = kartyak_szama
    maximum = max
    minimum = min
    szint.Text = szint.List(uccso_szint)
    csokkeno.Value = Abs(Int(csokk_sor))
    
    If csokkeno.Value = 1 Then
            Me.Caption = "Számok rendezése csökkenõ sorrendbe"
            cimsor.Caption = "Rendezd a számokat csökkenõ sorrendbe!"
    Else
            Me.Caption = "Számok rendezése növekvõ sorrendbe"
            cimsor.Caption = "Rendezd a számokat növekvõ sorrendbe!"
    End If
    
    beallitasok.Visible = False
    racsoz
    vezerlo_tarto.Enabled = True
End Sub

Private Sub OK()
    kartyak_LostFocus
    torol
    kartyak_szama = kartyak.Text
    max = maximum
    min = minimum
    uccso_szint = szint.ListIndex
    csokk_sor = csokkeno.Value
    
    megse
    osztas_mnu_Click
End Sub



Private Sub minimum_LostFocus()
    If Not IsNumeric(minimum.Text) Then minimum.Text = min
    'If CDbl(minimum.Text) < CDbl(minimum.Text) Then minimum.Text = minimum.Text + kartyak.Text
    If CDbl(minimum.Text) > 9999999 Then minimum.Text = 9999999 - CDbl(kartyak.Text)
    minimum.Text = Int(minimum.Text)
    maximum_LostFocus
End Sub









Private Sub nevjegy_cr_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
vezerlo_alap
End Sub

Private Sub nevjegy_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
vezerlo_alap
End Sub

Private Sub osztas_mnu_Click()
    aktiv = 1
    k = 80
    torol
    For i = 1 To kartyak_szama
        
        Load fantom(i)
        fantom(i).Top = 0 '800
        fantom(i).Left = k
        fantom(i).Picture = lapok.ListImages(3).Picture
        fantom(i).Visible = False
        
        Load fantom_szama(i)
        fantom_szama(i).Caption = veletlen
        fantom_szama(i).Top = fantom(i).Top + (fantom(i).Height - fantom_szama(i).Height) / 2
        fantom_szama(i).Left = fantom(i).Left + (fantom(i).Width - fantom_szama(i).Width) / 2
        fantom_szama(i).ZOrder (0)
        fantom_szama(i).Visible = False
         
        
        Load gomb(i)
        gomb(i).Top = fantom(i).Top
        gomb(i).Picture = lapok.ListImages(1).Picture
        gomb(i).Left = k
        gomb(i).Visible = True
        
        Load gomb_szama(i)
        gomb_szama(i).Caption = fantom_szama(i).Caption
        gomb_szama(i).Top = gomb(i).Top + (gomb(i).Height - gomb_szama(i).Height) / 2
        gomb_szama(i).Left = gomb(i).Left + (gomb(i).Width - gomb_szama(i).Width) / 2
        gomb_szama(i).ZOrder (0)
        gomb_szama(i).Visible = True
        
        Load kontener(i)
        kontener(i).Caption = "" 'i & "."
        kontener(i).Top = gomb(i).Top + gomb(i).Height + 200
        kontener(i).Left = k
        kontener(i).ZOrder (1)
        kontener(i).Visible = True
    
        
        k = k + gomb(i).Width + 50
        eredeti(i) = gomb_szama(i).Caption
        
    Next i
    
    For i = 1 To kartyak_szama
        rendezett(i) = eredeti(i)
    Next i
    
    For i = 1 To kartyak_szama
        For j = 1 To kartyak_szama - i
            If relacio(rendezett(j), rendezett(j + 1)) Then
                k = rendezett(j)
                rendezett(j) = rendezett(j + 1)
                rendezett(j + 1) = k
            End If
        Next j
    Next i
    
    kivalaszt (aktiv)
    pozicionalo
End Sub
Public Sub kivalaszt(Index As Integer)
'On Error Resume Next
    'For i = 1 To kartyak_szama
        gomb(aktiv).Picture = lapok.ListImages(1).Picture
    'Next i
    
    gomb(Index).Picture = lapok.ListImages(2).Picture
    aktiv = Index
End Sub
Sub torol()
On Error Resume Next
    kontener(0).BackStyle = 0
    probak = 1
    info = ""
    
    For i = 1 To kartyak_szama
        osztott(CLng(gomb_szama(i).Caption)) = False
        
        Unload fantom(i)
        Unload fantom_szama(i)
        Unload gomb(i)
        Unload gomb_szama(i)
        Unload kontener(i)
        egyeni(i) = 0
    Next i
End Sub
Function veletlen()
    If ((max + 1) - min) < kartyak_szama Then
         uzenet_kuld "Egyszeri Véletlenszám Generátor", "Az EVG végtelenciklusba lépett, ezért futása meg lesz szakítva. A hibával kapcsoltaban értesítse a fejlesztõt! Elnézésüket kérjük."
        'Unload Me
        veletlen = 0
        Exit Function
    End If
    
be:
         Randomize (Second(Time))
         j = (Int(Rnd(1) * ((max + 1) - min))) + min
    If osztott(j) Then GoTo be
    
    osztott(j) = True
    veletlen = j
End Function


Sub vezerlo_alap()
If uccso_vezerlo = vezerlo.Count Then Exit Sub
    For i = 0 To vezerlo.Count - 1
        vezerlo(i).Picture = gombok.ListImages(1).Picture
        vezerlo_cimke(i).Move vezerlo(i).Left, vezerlo(i).Top + ((vezerlo(i).Height - vezerlo_cimke(i).Height) / 2), vezerlo(i).Width
        vezerlo_cimke(i).ZOrder (0)
    Next i
    
    uccso_vezerlo = vezerlo.Count
End Sub





Private Sub szint_Click()
    
    kartyak.Enabled = False
    minimum.Enabled = False
    maximum.Enabled = False
    
    Select Case szint.ListIndex
        Case 0
            kartyak.Text = 6
            minimum.Text = 100
            maximum.Text = 9999
        Case 1
            kartyak.Text = 8
            minimum.Text = 1000
            maximum.Text = 99999
        Case 2
            kartyak.Text = 10
            minimum.Text = 10000
            maximum.Text = 9999999
        Case 3
            kartyak.Enabled = True
            minimum.Enabled = True
            maximum.Enabled = True
    End Select
End Sub


Private Sub nevjegy_szoveg_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
vezerlo_alap
End Sub

Private Sub uzenet_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
vezerlo_alap
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
            kartyak_LostFocus
            minimum_LostFocus
            OK
        Case 1
            megse
        Case 2
            osztas_mnu_Click
        Case 3
            ellenorzes_mnu_Click
        Case 4
            beallitasok_mnu_Click
        Case 5
            kilepes_mnu_Click
        Case 6
            uzenet.Visible = False
        Case 7
            nevjegy.Visible = False
        Case 8
            nevjegy.Visible = True
        Case 9
            visszarendez
            
    End Select
    pozicionalo
    vezerlo_valt Index, 1
End Sub
Function relacio(mit As Long, mivel As Long)
    If mit > mivel Then
            relacio = True
        Else
            relacio = False
    End If
    If csokk_sor Then relacio = Not relacio
End Function
Sub kontener_keret()
    For i = 1 To kartyak_szama
        If egyeni(i) = 0 Then kontener(i).BorderStyle = 1 Else kontener(i).BorderStyle = 0
    Next i
End Sub
Function sorszamkeres(ertek)
Dim sorszam As Integer
    For sorszam = 1 To kartyak_szama
        If gomb_szama(sorszam).Caption = ertek Then
                sorszamkeres = sorszam
                Exit Function
        End If
    Next sorszam
End Function
Sub pozicionalo()
On Error Resume Next

    lap_tarto.Width = kartyak_szama * (gomb(0).Width + 50) + bal.Width + jobb.Width
    lap_tarto.Height = 2 * gomb(1).Height + 200
    
    If Me.Width < bal.Width + jobb.Width + lap_tarto.Width Then
            Me.Width = bal.Width + jobb.Width + lap_tarto.Width
    End If
    If Me.Height < felso.Height + cimsor.Height + also.Height + info.Height + 100 + vezerlo_tarto.Height + 150 + lap_tarto.Height Then
            Me.Height = felso.Height + also.Height + cimsor.Height + info.Height + 100 + vezerlo_tarto.Height + 150 + lap_tarto.Height
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
    
    cimsor.Move (Me.ScaleWidth - cimsor.Width) / 2, felso.Top + felso.Height + 100
    cimsor.ZOrder 1
     
    lap_tarto.Move ((Me.Width - bal.Width - jobb.Width) - lap_tarto.Width) / 2 + bal.Width + jobb.Width, ((Me.Height - vezerlo_tarto.Height - cimsor.Height - also.Height - felso.Height - info.Height) - lap_tarto.Height - 500) / 2 + cimsor.Top + cimsor.Height
    lap_tarto.ZOrder 1
     
    vezerlo_tarto.Move (Me.ScaleWidth - vezerlo_tarto.Width) / 2, also.Top - vezerlo_tarto.Height
     
    info.Move ba.Width, lap_tarto.Top + lap_tarto.Height + 100, Me.ScaleWidth - ba.Width - ja.Width
    
    beallitasok.Move (szamsorok.ScaleWidth - beallitasok.Width) / 2, (szamsorok.ScaleHeight - beallitasok.Height) / 2
    nevjegy.Move (szamsorok.ScaleWidth - nevjegy.Width) / 2, (szamsorok.ScaleHeight - nevjegy.Height) / 2
    uzenet.Move beallitasok.Left, beallitasok.Top, beallitasok.Width, beallitasok.Height

    racsoz
    Me.Refresh

End Sub
Public Sub racsoz()
    lepel.Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
    lepel.Visible = beallitasok.Visible Or nevjegy.Visible Or uzenet.Visible
    
    racs(0).Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
    racs(0).Visible = lepel.Visible
    
    racs(1).Move 0, 0, lap_tarto.Width, lap_tarto.Height
    racs(1).Visible = lepel.Visible
    
    lap_tarto.Enabled = Not lepel.Visible
    vezerlo_tarto.Enabled = Not lepel.Visible

    racs(0).ZOrder 0
    racs(1).ZOrder 0
    lepel.ZOrder 0
    beallitasok.ZOrder 0
End Sub
Public Sub uzenet_kuld(cim As String, szoveg As String)
    uzenet_cime.Caption = cim
    uzenet_szoveg.Caption = szoveg
    uzenet.Visible = True
    racsoz
End Sub


Private Sub vezerlo_tarto_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
FormDrag Me
End Sub
Private Sub visszarendez()
Dim vr As Integer
    For vr = 1 To gomb.Count - 1
        fantom_szama_Click (vr)
        kivalaszt (vr)
    Next vr
End Sub

Private Sub vezerlo_tarto_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
vezerlo_alap
End Sub
