VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 2  'vbComplexBound
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "tizedes_tort"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Private nevezek(1 To 11) As String
Dim egesz As Object
Public Function szamot_szovegge(tort As Double) As String
On Error GoTo hiba:
    Dim egesz_resz As String, tort_resz As String
    Dim tort_str As String, i As Integer
    
    tort_str = CStr(tort)
    
    For i = 1 To Len(tort_str)
        If Mid(tort_str, i, 1) = "." Or Mid(tort_str, i, 1) = "," Then
            egesz_resz = egesz.szamot_szovegge(CLng(Mid(tort_str, 1, i - 1)))
            tort_resz = egesz.szamot_szovegge(CLng(Mid(tort_str, i + 1, Len(tort_str) - i)))
            szamot_szovegge = egesz_resz & " eg�sz " & tort_resz & " " & nevezek(Len(Mid(tort_str, i + 1, Len(tort_str) - i)))
            Exit Function
        End If
    Next i
    szamot_szovegge = egesz.szamot_szovegge(CLng(tort_str))
    Exit Function
hiba:
    szamot_szovegge = "T�l nagy sz�mot adott meg."
End Function

Private Sub Class_Initialize()
    Set egesz = New egesz
    nevezek(1) = "tized"
    nevezek(2) = "sz�zad"
    nevezek(3) = "ezred"
    nevezek(4) = "t�zezred"
    nevezek(5) = "sz�zezred"
    nevezek(6) = "milliomod"
    nevezek(7) = "t�zmilliomod"
    nevezek(8) = "sz�zmilliomod"
    nevezek(9) = "billiomod"
    nevezek(10) = "t�zbilliomod"
    nevezek(11) = "sz�zbilliomod"
End Sub
Public Function nevjegy() As String
    nevjegy = egesz.nevjegy
End Function

Public Function szoveget_szamma(szoveg As String) As Double
On Error GoTo hiba
    Dim egesz_resz As String, tort_resz As String, helyiertek As String
    Dim i As Integer, j As Integer
    szoveg = LCase(szoveg)
    
    For i = 1 To Len(szoveg)
        If Mid(szoveg, i, 7) = " eg�sz " Then
            egesz_resz = egesz.szoveget_szamma(Mid(szoveg, 1, i - 1))
            tort_resz = Mid(szoveg, i + 7, Len(szoveg) - i - 6)
                For j = 1 To Len(tort_resz)
                    If Mid(tort_resz, j, 1) = " " Then
                        helyiertek = Mid(tort_resz, j + 1, Len(tort_resz) - j)
                        tort_resz = egesz.szoveget_szamma(Mid(tort_resz, 1, j - 1))
                        GoTo ki
                    End If
                Next j
ki:
            For j = 1 To 11
                If helyiertek = nevezek(j) Then
                    szorzo = 10 ^ j
                End If
            Next j
            
            If egesz_resz < 0 Then
                tort_resz = tort_resz * -1
            End If
            
            szoveget_szamma = CLng(egesz_resz) + (CLng(tort_resz) / szorzo)
            
            Exit Function
        End If
    Next i
    szoveget_szamma = egesz.szoveget_szamma(szoveg)
    Exit Function
hiba:
    szoveget_szamma = 0
End Function
