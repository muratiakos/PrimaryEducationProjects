NAME "Matek5.nsi"
Outfile "matek5.exe"
Caption "5. osztályos Matematika Oktató programok telepítõ"
Subcaption 1 " - Telepítendõ komponensek"
Subcaption 2 " - Telepítés helye"
Subcaption 3 " - Fájlok másolása"
Subcaption 4 " - Telepítés vége"

MiscButtonText "< Vissza" "Következõ >" "Kilépés" "Bezár"
InstallButtonText "Telepítés"
SpaceTexts "Szükséges lemezterület:  " "Rendelkezésre áll:  "			
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
		file "számsorok.exe"
		file "irolv.exe"
		file "plumin.exe"

		CreateDirectory "$SMPROGRAMS\Matek"
	
		CreateShortcut "$SMPROGRAMS\Matek\Természetes számok írása, olvasása.lnk" "$INSTDIR\irolv.exe" ""
		CreateShortcut "$SMPROGRAMS\Matek\Természetes számok összeadása, kivonása.lnk" "$INSTDIR\plumin.exe" "" 
		CreateShortcut "$SMPROGRAMS\Matek\Természetes számok sorrendje.lnk" "$INSTDIR\számsorok.exe" ""
sectionend


