VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Névjegy"
   ClientHeight    =   3555
   ClientLeft      =   2340
   ClientTop       =   1935
   ClientWidth     =   5730
   ClipControls    =   0   'False
   Icon            =   "szamnev.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2453.724
   ScaleMode       =   0  'User
   ScaleWidth      =   5380.766
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox Picture1 
      Height          =   1575
      Left            =   120
      Picture         =   "szamnev.frx":0442
      ScaleHeight     =   1515
      ScaleWidth      =   915
      TabIndex        =   6
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   345
      Left            =   4245
      Picture         =   "szamnev.frx":5479
      TabIndex        =   0
      Top             =   3000
      Width           =   1260
   End
   Begin VB.Label Label4 
      Caption         =   "Újradolgozott verzió !"
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
      Left            =   2160
      TabIndex        =   8
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "Frissítés dátuma :2001. 01. 05."
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
      Left            =   1560
      TabIndex        =   7
      Top             =   2400
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "Ez a program Microsoft Visual Basic Studios 5 - ben íródott."
      Height          =   255
      Left            =   720
      TabIndex        =   5
      Top             =   2040
      Width           =   4455
   End
   Begin VB.Label Label1 
      Caption         =   "Írta: Muráti Ákos"
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
      Left            =   2280
      TabIndex        =   4
      Top             =   960
      Width           =   1455
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  'Inside Solid
      Index           =   1
      X1              =   84.515
      X2              =   5309.398
      Y1              =   1905.001
      Y2              =   1905.001
   End
   Begin VB.Label lblDescription 
      Caption         =   "Ez a Visual Basic Alkalmazás lehetõvé teszi a számok tulajdonságainak megtekintését, számok keresését."
      ForeColor       =   &H00000000&
      Height          =   570
      Left            =   1440
      TabIndex        =   1
      Top             =   1440
      Width           =   3885
   End
   Begin VB.Label lblTitle 
      Caption         =   "Számvizslató v2.1.0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   360
      Left            =   1800
      TabIndex        =   3
      Top             =   120
      Width           =   2565
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      Index           =   0
      X1              =   98.6
      X2              =   5309.398
      Y1              =   1905.001
      Y2              =   1905.001
   End
   Begin VB.Label lblDisclaimer 
      Caption         =   "Vigyázat : A program számolásaközben minden más programbeli funkció érvényét veszti."
      ForeColor       =   &H00000000&
      Height          =   465
      Left            =   240
      TabIndex        =   2
      Top             =   2880
      Width           =   3870
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdOK_Click()
  Unload Me
End Sub

