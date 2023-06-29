Public Class dolgozat
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'Form overrides dispose to clean up the component list.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Public components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    Friend WithEvents dolgozat_mnu As System.Windows.Forms.MenuItem
    Friend WithEvents megnyitas_mnu As System.Windows.Forms.MenuItem
    Friend WithEvents vonal As System.Windows.Forms.MenuItem
    Friend WithEvents kilepes_mnu As System.Windows.Forms.MenuItem
    Friend WithEvents bongeszo_mnu As System.Windows.Forms.MenuItem
    Friend WithEvents frissit_mnu As System.Windows.Forms.MenuItem
    Friend WithEvents stop_mnu As System.Windows.Forms.MenuItem
    Friend WithEvents fomenu As System.Windows.Forms.MainMenu
    Friend WithEvents megnyito As System.Windows.Forms.OpenFileDialog
    Public WithEvents bongeszo As AxSHDocVw.AxWebBrowser
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(dolgozat))
        Me.fomenu = New System.Windows.Forms.MainMenu()
        Me.dolgozat_mnu = New System.Windows.Forms.MenuItem()
        Me.megnyitas_mnu = New System.Windows.Forms.MenuItem()
        Me.vonal = New System.Windows.Forms.MenuItem()
        Me.kilepes_mnu = New System.Windows.Forms.MenuItem()
        Me.bongeszo_mnu = New System.Windows.Forms.MenuItem()
        Me.frissit_mnu = New System.Windows.Forms.MenuItem()
        Me.stop_mnu = New System.Windows.Forms.MenuItem()
        Me.megnyito = New System.Windows.Forms.OpenFileDialog()
        Me.bongeszo = New AxSHDocVw.AxWebBrowser()
        CType(Me.bongeszo, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'fomenu
        '
        Me.fomenu.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.dolgozat_mnu, Me.bongeszo_mnu})
        '
        'dolgozat_mnu
        '
        Me.dolgozat_mnu.Index = 0
        Me.dolgozat_mnu.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.megnyitas_mnu, Me.vonal, Me.kilepes_mnu})
        Me.dolgozat_mnu.Text = "Dolgozat"
        '
        'megnyitas_mnu
        '
        Me.megnyitas_mnu.Index = 0
        Me.megnyitas_mnu.Text = "Megnyitás"
        '
        'vonal
        '
        Me.vonal.Index = 1
        Me.vonal.Text = "-"
        '
        'kilepes_mnu
        '
        Me.kilepes_mnu.Index = 2
        Me.kilepes_mnu.Text = "Kilépés"
        '
        'bongeszo_mnu
        '
        Me.bongeszo_mnu.Index = 1
        Me.bongeszo_mnu.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.frissit_mnu, Me.stop_mnu})
        Me.bongeszo_mnu.Text = "Böngészõ"
        '
        'frissit_mnu
        '
        Me.frissit_mnu.Index = 0
        Me.frissit_mnu.Text = "Frissítés"
        '
        'stop_mnu
        '
        Me.stop_mnu.Index = 1
        Me.stop_mnu.Text = "Leállítás"
        '
        'bongeszo
        '
        Me.bongeszo.Enabled = True
        Me.bongeszo.Location = New System.Drawing.Point(16, 32)
        Me.bongeszo.OcxState = CType(resources.GetObject("bongeszo.OcxState"), System.Windows.Forms.AxHost.State)
        Me.bongeszo.Size = New System.Drawing.Size(300, 150)
        Me.bongeszo.TabIndex = 0
        '
        'dolgozat
        '
        Me.AccessibleName = ""
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(360, 266)
        Me.ControlBox = False
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.bongeszo})
        Me.Menu = Me.fomenu
        Me.Name = "dolgozat"
        Me.Text = "Dolgozat"
        Me.TopMost = True
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        CType(Me.bongeszo, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub kilepes_mnu_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles kilepes_mnu.Click
        Dim valasz
        valasz = MsgBox("Biztos, hogy ki akarsz lépni?", MsgBoxStyle.YesNo + MsgBoxStyle.Question, "Kilépés megerõsítése")
        If valasz = vbYes Then
            Beep()
            End
        End If
    End Sub

    Private Sub dolgozat_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Resize
        With bongeszo
            .Left = 0
            .Top = 0
            .Width = Me.Width - 12
            .Height = Me.Height - 52
        End With
    End Sub

    Private Sub frissit_mnu_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles frissit_mnu.Click
        bongeszo.Refresh()
    End Sub

    Private Sub stop_mnu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles stop_mnu.Click
        bongeszo.Stop()
    End Sub

    Private Sub megnyitas_mnu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles megnyitas_mnu.Click
        Dim sor As String
        megnyito.Title = "Dolgozat megnyitása"
        megnyito.FileName = "*"
        megnyito.Filter = "Dolgozat fájlok|*.dlg|Minden Fájl|*.*"
        megnyito.ShowDialog(Me)
        On Error GoTo hiba
        If megnyito.FileName <> "" Then
            FileOpen(1, megnyito.FileName, OpenMode.Input)
            Do While Not EOF(1)
                Input(1, sor)
                Ertelmezd(sor)
            Loop
            FileClose(1)
        End If
hiba:
    End Sub

    Private Sub dolgozat_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
    Public Function Utasitas(ByVal Adatsor As String) As String
        Dim i As Integer, megvan As Boolean
        i = 1
        megvan = False

        Do While i <= Len(Adatsor) And Not megvan
            If Mid(Adatsor, i, 1) = "=" Then
                megvan = True
                Utasitas = Mid(Adatsor, 1, i - 1)
            End If
            i = i + 1
        Loop

        If Not megvan Then Utasitas = Adatsor
    End Function

    Public Function Ertek(ByVal Adatsor As String) As String
        Dim i As Integer, megvan As Boolean
        i = 1
        megvan = False

        Do While i <= Len(Adatsor) And Not megvan
            If Mid(Adatsor, i, 1) = "=" Then
                megvan = True
                Ertek = Mid(Adatsor, i + 1, Len(Adatsor) - i)
            End If
            i = i + 1
        Loop
        If Not megvan Then Ertek = ""
    End Function

    Public Function MegTisztit(ByVal Szoveg As String) As String
        Dim i As Integer, megvan As Boolean
        i = 1
        megvan = False

        Do While i <= Len(Szoveg) And Not megvan
            If Mid(Szoveg, i, 1) <> Chr(9) And Mid(Szoveg, i, 1) <> " " Then
                megvan = True
                Szoveg = Mid(Szoveg, i, Len(Szoveg) - i + 1)
            End If
            i = i + 1
        Loop

        megvan = False

        i = Len(Szoveg)
        Do While i >= 1 And Not megvan
            If Mid(Szoveg, i, 1) <> Chr(9) And Mid(Szoveg, i, 1) <> " " Then
                megvan = True
                Szoveg = Mid(Szoveg, 1, i)
            End If
            i = i - 1
        Loop

        MegTisztit = Szoveg
    End Function


    Public Sub Ertelmezd(ByVal Sor As String)


        Sor = MegTisztit(Sor)

        Select Case Utasitas(Sor)
            Case "url"
                'dolg.bongeszo.Navigate(Ertek(Sor))
                bongeszo.Navigate(Ertek(Sor))
            Case "cim"
                Me.Text = Ertek(Sor)
        End Select
    End Sub
End Class
