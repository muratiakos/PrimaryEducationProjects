NAME "Matek5.nsi"
Outfile "matek5.exe"
Caption "5. oszt�lyos Matematika Oktat� programok telep�t�"
Subcaption 1 " - Telep�tend� komponensek"
Subcaption 2 " - Telep�t�s helye"
Subcaption 3 " - F�jlok m�sol�sa"
Subcaption 4 " - Telep�t�s v�ge"

MiscButtonText "< Vissza" "K�vetkez� >" "Kil�p�s" "Bez�r"
InstallButtonText "Telep�t�s"
SpaceTexts "Sz�ks�ges lemezter�let:  " "Rendelkez�sre �ll:  "			
Icon "icon.ico"
Enabledbitmap "en.bmp"
disabledbitmap "dis.bmp"
Autoclosewindow true

InstallDir "c:\Matek"

section "install"
	setoutpath $SYSDIR
		file "mscomctl.ocx"
		file "regsvr32.exe"
		execwait "regsvr32.exe /i /s $SYSDIR/mscomctl.ocx"
	
	setoutpath $INSTDIR
		file "sz�msorok.exe"
		file "irolv.exe"
		file "plumin.exe"

		CreateDirectory "$SMPROGRAMS\Matek"
	
		CreateShortcut "$SMPROGRAMS\Matek\Term�szetes sz�mok �r�sa, olvas�sa.lnk" "$INSTDIR\irolv.exe" ""
		CreateShortcut "$SMPROGRAMS\Matek\Term�szetes sz�mok �sszead�sa, kivon�sa.lnk" "$INSTDIR\plumin.exe" "" 
		CreateShortcut "$SMPROGRAMS\Matek\Term�szetes sz�mok sorrendje.lnk" "$INSTDIR\sz�msorok.exe" ""
sectionend


