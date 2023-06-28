VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm Matek1 
   BackColor       =   &H8000000C&
   Caption         =   "Számvizslató"
   ClientHeight    =   8415
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   9345
   Icon            =   "számok2.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3480
      Top             =   1200
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   2880
      Top             =   1200
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483648
      ImageWidth      =   16
      ImageHeight     =   15
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "számok2.frx":0442
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "számok2.frx":0986
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "számok2.frx":0ECA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   405
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9345
      _ExtentX        =   16484
      _ExtentY        =   714
      ButtonWidth     =   609
      ButtonHeight    =   556
      Appearance      =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   3
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            ImageIndex      =   2
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            ImageIndex      =   1
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            ImageIndex      =   3
         EndProperty
      EndProperty
   End
   Begin VB.Menu menu 
      Caption         =   "&Menü"
      Begin VB.Menu sztul 
         Caption         =   "&Szám vizsgáló"
      End
      Begin VB.Menu semmi1 
         Caption         =   "-"
      End
      Begin VB.Menu ment 
         Caption         =   "&Aktív ablak mentése"
      End
      Begin VB.Menu print 
         Caption         =   "&Nyomtatás"
      End
      Begin VB.Menu s 
         Caption         =   "-"
      End
      Begin VB.Menu kilepes 
         Caption         =   "&Kilépés"
      End
   End
   Begin VB.Menu kozos 
      Caption         =   "&Közös számok"
      Begin VB.Menu euk 
         Caption         =   "&Legnagyobb közös osztó"
      End
      Begin VB.Menu lköztöb 
         Caption         =   "Legkisebb közös &többszörös"
      End
      Begin VB.Menu semmise 
         Caption         =   "-"
      End
      Begin VB.Menu oszkoz 
         Caption         =   "&Összes közös osztó"
      End
   End
   Begin VB.Menu szamker 
      Caption         =   "Számk&eresõk"
      Begin VB.Menu primker 
         Caption         =   "&Primkeresõ"
      End
      Begin VB.Menu tökszker 
         Caption         =   "&Tökéletes számok keresése"
      End
   End
   Begin VB.Menu ablak 
      Caption         =   "&Ablakok"
      Begin VB.Menu icon 
         Caption         =   "&Ikonállapotú ablakok elrendezése"
      End
      Begin VB.Menu full 
         Caption         =   "&Függõleges elrendezés"
      End
      Begin VB.Menu vizszin 
         Caption         =   "&Vízszíntes elrendezés"
      End
      Begin VB.Menu lepcso 
         Caption         =   "&Lépcsõzetes elrendezés"
      End
   End
   Begin VB.Menu sugo 
      Caption         =   "&Súgó"
      Begin VB.Menu nevj 
         Caption         =   "&Névjegy"
      End
   End
End
Attribute VB_Name = "Matek1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub barat_Click()

End Sub
Private Sub euk_Click()
Loadeuk
End Sub

Private Sub lepcso_Click()
Arrange vbCascade
End Sub

Private Sub icon_Click()
Arrange vbArrangeIcons
End Sub

Private Sub kilepes_Click()
kilep = MsgBox("Valóban ki akar lépni?", vbYesNo + vbQuestion, "Kilépés megerõsítése")
If kilep = vbYes Then Unload Me
End Sub

Private Sub primvizs_Click()

End Sub
Private Sub LoadTulszám()
Static tuls As Long
Dim tul As Form2
Set tul = New Form2
tuls = tuls + 1
tul.Caption = "Szám vizsgáló " & tuls & ". ablak"
tul.Show
End Sub

Private Sub full_Click()
Arrange vbTileHorizontal
End Sub

Private Sub lköztöb_Click()
Loadkoztob
End Sub

Private Sub nevj_Click()
Loadnevj
End Sub

Private Sub oszkoz_Click()
Loadkoz
End Sub

Private Sub primker_Click()
LoadPrimker
End Sub

Private Sub sztul_Click()
LoadTulszám
End Sub


Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
Select Case Button.Index
    Case 1
        ment_click
    Case 2
        print_click
    Case 3
        kilepes_Click
        
End Select
End Sub

Private Sub tökszker_Click()
Loadtokszker
End Sub
Private Sub Loadtokszker()
Static szk1 As Long
Dim tokk As Form4
Set tokk = New Form4
szk1 = szk1 + 1
tokk.Caption = "Tökéletesszám keresõ " & szk1 & ". ablak"
tokk.Show
End Sub
Private Sub Loadnevj()
Dim nevj As frmAbout
Set nevj = frmAbout
nevj.Caption = "Számvizslató névjegy - Muráti Ákos"
nevj.Show
End Sub
Private Sub Loadeuk()
Static euks As Long
Dim eukli As Form1
Set eukli = New Form1
euks = euks + 1
eukli.Caption = "Legnagyobb közös osztó " & euks & ". ablak"
eukli.Show
End Sub
Private Sub LoadPrimker()
Static pris As Long
Dim primker As Form5
Set primker = New Form5
pris = pris + 1
primker.Caption = "Prímszámkeresõ " & pris & ". ablak"
primker.Show
End Sub
Private Sub Loadkoz()
Static kozs As Long
Dim kozo As Form6
Set kozo = New Form6
kozs = kozs + 1
kozo.Caption = "Közös Osztók " & kozs & ". ablak"
kozo.Show
End Sub
Private Sub Loadkoztob()
Static kts As Long
Dim koto As Form7
Set koto = New Form7
kts = kts + 1
koto.Caption = "Legkisebb közös többszörös  " & kts & ". ablak"
koto.Show
End Sub
Private Sub ment_click()
On Error GoTo mégse
CommonDialog1.Filter = "Rich Text fájl (*.rtf) | *.rtf"
CommonDialog1.CancelError = True
CommonDialog1.FileName = ActiveForm.Text1.Text
CommonDialog1.ShowSave
ActiveForm.RichTextBox1.SaveFile CommonDialog1.FileName
Exit Sub
mégse:

End Sub
Private Sub print_click()
On Error GoTo mégse
    CommonDialog1.CancelError = True
    CommonDialog1.ShowPrinter
    Dim w As Object
    Set w = CreateObject("word.application")
    w.application.Visible = False
    w.documents.Add
    w.selection.Insertafter Text:=ActiveForm.RichTextBox1.Text
    w.Activedocument.printout
mégse:

End Sub

Private Sub vizszin_Click()
Arrange vbTileVertical
End Sub
