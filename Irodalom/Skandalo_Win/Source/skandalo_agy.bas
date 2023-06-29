Attribute VB_Name = "agy"
'Globális változók
Option Explicit
Public h_msh As Boolean 'H karakter értelmezése (msh vagy mgh)
Public kitoltes As Boolean 'A verslábak igazítása az eredti szöveghez
'Ténylegesen használt függvények:

Public Function Megfordit(szoveg As String) As String
Dim i As Integer
Dim forditott As String
    forditott = ""
    For i = 1 To Len(szoveg)
        forditott = Mid(szoveg, i, 1) & forditott
    Next i
    Megfordit = forditott
End Function
Public Function Egyszerusit(Egyszerusitendo As String) As String
'Egyszerûsítési jelölések:
'                           R - rövid magánhangzó
'                           H - hosszú magánhangzó
'                           M - mássalhangzó
'                           D - kétjegyû mássalhangzó
'                           T - tripla mássalhangzó
'                           E - egyéb karakter

Dim i As Integer
Dim szoveg As String, egyszerusitett As String
    egyszerusitett = ""
    szoveg = LCase(Egyszerusitendo)
    i = 1
    While i <= Len(szoveg)
        Select Case Mid(szoveg, i, 1)
            Case "a", "e", "i", "o", "ö", "u", "ü"
                egyszerusitett = egyszerusitett & "R"
                i = i + 1
            Case "á", "é", "í", "ó", "õ", "ú", "û"
                egyszerusitett = egyszerusitett & "H"
                i = i + 1
            Case "q", "w", "r", "p", "f", "j", "k", "y", "x", "v", "b", "m"
                egyszerusitett = egyszerusitett & "M"
                i = i + 1
            Case "h"
                If h_msh Then
                        egyszerusitett = egyszerusitett & "M"
                    Else
                        egyszerusitett = egyszerusitett & "E"
                End If
                i = i + 1
            Case "d", "t", "z", "s", "g", "l", "c", "n"
                If Mid(szoveg, i, 3) = "dzs" Then
                        egyszerusitett = egyszerusitett & "T"
                        i = i + 3
                    Else
                        If Mid(szoveg, i, 2) = "dz" Or Mid(szoveg, i, 2) = "ty" Or Mid(szoveg, i, 2) = "zs" Or Mid(szoveg, i, 2) = "sz" Or Mid(szoveg, i, 2) = "gy" Or Mid(szoveg, i, 2) = "ly" Or Mid(szoveg, i, 2) = "cs" Or Mid(szoveg, i, 2) = "ny" Then
                                egyszerusitett = egyszerusitett & "D"
                                i = i + 2
                            Else
                                egyszerusitett = egyszerusitett & "M"
                                i = i + 1
                        End If
                End If
                
            Case Else
                egyszerusitett = egyszerusitett & "E"
                i = i + 1
        End Select
    Wend
    Egyszerusit = egyszerusitett
End Function

Public Function Skandal(szoveg As String) As String
Dim i As Integer, msh As Integer, egyeb As Integer
Dim Skandalt As String
    
    Skandalt = ""
    szoveg = UCase(szoveg)
    msh = 0
    egyeb = 0
    
    For i = 1 To Len(szoveg)
        Select Case Mid(szoveg, i, 1)
            Case "R", "H"
                If True Or kitoltes Then
                    Skandalt = Skandalt & Space(msh + egyeb)
                End If
                If msh > 1 Or Mid(szoveg, i, 1) = "H" Then
                        Skandalt = Skandalt & "-"
                    Else
                        Skandalt = Skandalt & "o"
                End If
                msh = 0
                egyeb = 0
                
            Case "M"
                msh = msh + 1
                
            Case "D"
                msh = msh + 1
                egyeb = egyeb + 1
                
            Case "T"
                msh = msh + 1
                egyeb = egyeb + 2
                
            Case "E"
                egyeb = egyeb + 1
                
        End Select
    Next i
    If egyeb + msh > 0 Then Skandalt = Skandalt & Space(msh + egyeb)
    Skandal = Skandalt
End Function

Public Function GyorsSkandi(szoveg As String) As String
    GyorsSkandi = Megfordit(Skandal(Megfordit(Egyszerusit(szoveg))))
End Function
