VERSION 5.00
Object = "{13E51000-A52B-11D0-86DA-00608CB9FBFB}#5.0#0"; "VCF15.OCX"
Begin VB.Form orarend 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Digitális Órarend"
   ClientHeight    =   3225
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   7050
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3225
   ScaleWidth      =   7050
   StartUpPosition =   3  'Windows Default
   Begin VCF150Ctl.F1Book orarend 
      Height          =   3015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   5318
      _0              =   $"órarend.frx":0000
      _count          =   1
      _ver            =   2
   End
   Begin VB.Menu file 
      Caption         =   "Fájl"
      Begin VB.Menu recalc 
         Caption         =   "&Újra számol"
      End
      Begin VB.Menu edit 
         Caption         =   "&Szerkesztés"
      End
      Begin VB.Menu sep 
         Caption         =   "-"
      End
      Begin VB.Menu kilep 
         Caption         =   "&Kilépés"
      End
   End
End
Attribute VB_Name = "orarend"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub edit_Click()
orarend.SelStartCol = 1
orarend.SelStartRow = 1
orarend.SelEndCol = orarend.LastCol
orarend.SelEndRow = orarend.LastRow
orarend.FontColor = vbBlack
orarend.FontStrikeout = False
orarend.FontBold = False

orarend.LaunchDesigner
Form_Load
End Sub

Private Sub Form_Load()
Me.Height = orarend.Height + 700
Me.Width = orarend.Width + 200
Call betolt
On Error GoTo miva
eb = CStr(Year(Date))
    nap = CDbl(Day(Date))
    hon = CDbl(Month(Date))
    EV1 = CDbl(Mid$(eb, 1, 2))
    EV2 = CDbl(Mid$(eb, 3, 2))
'Részváltozók kiszámítása
    'Napok
        If nap = 1 Or nap = 8 Or nap = 15 Or nap = 22 Or nap = 29 Then s1 = 1
        If nap = 2 Or nap = 9 Or nap = 16 Or nap = 23 Or nap = 30 Then s1 = 2
        If nap = 3 Or nap = 10 Or nap = 17 Or nap = 24 Or nap = 31 Then s1 = 3
        If nap = 4 Or nap = 11 Or nap = 18 Or nap = 25 Then s1 = 4
        If nap = 5 Or nap = 12 Or nap = 19 Or nap = 26 Then s1 = 5
        If nap = 6 Or nap = 13 Or nap = 20 Or nap = 27 Then s1 = 6
        If nap = 7 Or nap = 14 Or nap = 21 Or nap = 28 Then s1 = 7
    'Hónapok
        If hon = 1 Then EV2 = EV2 - 1: s2 = 1
        If hon = 2 Then EV2 = EV2 - 1: s2 = 4
        If hon = 3 Then: s2 = 3
        If hon = 4 Then s2 = 6
        If hon = 5 Then s2 = 1
        If hon = 6 Then s2 = 4
        If hon = 7 Then s2 = 6
        If hon = 8 Then s2 = 2
        If hon = 9 Then s2 = 5
        If hon = 10 Then s2 = 0
        If hon = 11 Then s2 = 3
        If hon = 12 Then s2 = 5
    'Év elsõ 2 számjegye
        If EV1 = 15 Or EV1 = 19 Or EV1 = 23 Or EV1 = 27 Or EV1 = 31 Then s3 = 1
        If EV1 = 16 Or EV1 = 20 Or EV1 = 24 Or EV1 = 28 Or EV1 = 32 Then s3 = 0
        If EV1 = 17 Or EV1 = 21 Or EV1 = 25 Or EV1 = 29 Or EV1 = 33 Then s3 = 5
        If EV1 = 18 Or EV1 = 22 Or EV1 = 26 Or EV1 = 30 Or EV1 = 34 Then s3 = 3
     'Év második 2 számjegye
        If EV2 = 0 Or EV2 = 28 Or EV2 = 56 Or EV2 = 84 Or EV2 = 6 Or EV2 = 34 Or EV2 = 62 Or EV2 = 90 Or EV2 = 17 Or EV2 = 45 Or EV2 = 73 Or EV2 = 23 Or EV2 = 51 Or EV2 = 79 Then s4 = 0
        If EV2 = 1 Or EV2 = 29 Or EV2 = 57 Or EV2 = 85 Or EV2 = 7 Or EV2 = 35 Or EV2 = 63 Or EV2 = 91 Or EV2 = 18 Or EV2 = 46 Or EV2 = 74 Or EV2 = 12 Or EV2 = 40 Or EV2 = 68 Or EV2 = 96 Then s4 = 1
        If EV2 = 2 Or EV2 = 30 Or EV2 = 58 Or EV2 = 86 Or EV2 = 19 Or EV2 = 47 Or EV2 = 75 Or EV2 = 24 Or EV2 = 52 Or EV2 = 80 Or EV2 = 13 Or EV2 = 41 Or EV2 = 69 Or EV2 = 97 Then s4 = 2
        If EV2 = 3 Or EV2 = 31 Or EV2 = 59 Or EV2 = 87 Or EV2 = 8 Or EV2 = 36 Or EV2 = 64 Or EV2 = 92 Or EV2 = 14 Or EV2 = 42 Or EV2 = 70 Or EV2 = 98 Or EV2 = 25 Or EV2 = 53 Or EV2 = 81 Then s4 = 3
        If EV2 = 4 Or EV2 = 32 Or EV2 = 60 Or EV2 = 88 Or EV2 = 10 Or EV2 = 38 Or EV2 = 66 Or EV2 = 94 Or EV2 = 21 Or EV2 = 49 Or EV2 = 77 Or EV2 = 27 Or EV2 = 55 Or EV2 = 83 Then s4 = 5
        If EV2 = 5 Or EV2 = 33 Or EV2 = 61 Or EV2 = 89 Or EV2 = 11 Or EV2 = 39 Or EV2 = 67 Or EV2 = 95 Or EV2 = 22 Or EV2 = 50 Or EV2 = 78 Or EV2 = 16 Or EV2 = 44 Or EV2 = 72 Then s4 = 6
        If EV2 = 9 Or EV2 = 37 Or EV2 = 65 Or EV2 = 93 Or EV2 = 15 Or EV2 = 43 Or EV2 = 71 Or EV2 = 99 Or EV2 = 20 Or EV2 = 48 Or EV2 = 76 Or EV2 = 26 Or EV2 = 54 Or EV2 = 82 Then s4 = 4
    'Részváltozó
        OSZ = s1 + s2 + s3 + s4
    'Évszám hibák korrigálása
        If EV2 = -1 And EV1 = 20 Then OSZ = OSZ + 5
        If EV2 = -1 And EV1 = 19 Then OSZ = OSZ + 6
        If EV2 = -1 And EV1 = 18 Then OSZ = OSZ + 6
        If EV2 = -1 And EV1 = 17 Then OSZ = OSZ - 1
        If EV2 = -1 And EV1 = 16 Then OSZ = OSZ + 5
        If EV2 = -1 And EV1 = 21 Then OSZ = OSZ - 1
        If EV2 = -1 And EV1 = 22 Then OSZ = OSZ + 6
        If EV2 = -1 And EV1 = 23 Then OSZ = OSZ + 6
    
    'Nap megállapítása
        If OSZ = 1 Or OSZ = 8 Or OSZ = 15 Or OSZ = 22 Or OSZ = 29 Then hna = 1
        If OSZ = 2 Or OSZ = 9 Or OSZ = 16 Or OSZ = 23 Or OSZ = 30 Then hna = 2
        If OSZ = 3 Or OSZ = 10 Or OSZ = 17 Or OSZ = 24 Or OSZ = 31 Then hna = 3
        If OSZ = 4 Or OSZ = 11 Or OSZ = 18 Or OSZ = 25 Then hna = 4
        If OSZ = 5 Or OSZ = 12 Or OSZ = 19 Or OSZ = 26 Then hna = 5
        If OSZ = 6 Or OSZ = 13 Or OSZ = 20 Or OSZ = 27 Then hna = 6
        If OSZ = 7 Or OSZ = 14 Or OSZ = 21 Or OSZ = 28 Then hna = 1
        If EV2 = -1 Then EV2 = "00"
        


    For ora = 2 To 7
        If orarend.TextRC(ora, 1) < CDbl(Time) And hna <> 0 Then
               
            Else
                
                GoTo ki
        End If
    Next ora
ki:

If hna = 2 Then GoTo tobbiki

orarend.SelStartCol = 2
orarend.SelStartRow = 1
orarend.SelEndCol = hna - 1
orarend.SelEndRow = orarend.LastRow

orarend.FontStrikeout = True
orarend.FontColor = vbRed

tobbiki:

orarend.SelStartCol = 2
orarend.SelStartRow = 1
orarend.SelEndCol = hna
orarend.SelEndRow = ora - 1

orarend.FontStrikeout = True
orarend.FontColor = vbRed

orarend.SetActiveCell ora, hna
orarend.FontBold = True
'orarend.FontSize = orarend.FontSize + 2

Exit Sub
miva:
    MsgBox "Most vagy hétvége van, vagy valamit elronthattam...???", vbInformation, "Na?"
    orarend.SelStartCol = 2
    orarend.SelStartRow = 1
    orarend.SelEndCol = 2
    orarend.SelEndRow = 1
End Sub


Private Sub kilep_Click()
End
End Sub

Private Sub recalc_Click()
Form_Load
End Sub
Public Sub betolt()
On Error GoTo hiba
orarend.ReadEx "orarend.vts"
Exit Sub
hiba:
    kerdes = MsgBox("A órarend táblázat nem található('orarend.vts')!!! A program futása leáll.", vbCritical, "Betöltési hiba:")
    End
End Sub
