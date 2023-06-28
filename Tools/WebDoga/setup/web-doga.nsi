!include "MUI.nsh"

;--------------------------------
;Configuration

Name "Web-doga Telepítõ - Muráti Ákos"  
OutFile "wd_setup.exe"

  ShowInstDetails show

  InstallDir "$PROGRAMFILES\web-doga"
  
  InstallDirRegKey HKCU "Software\web-doga" ""

;--------------------------------
;Pages

  !insertmacro MUI_PAGE_COMPONENTS
  !insertmacro MUI_PAGE_DIRECTORY
  !insertmacro MUI_PAGE_INSTFILES
  
  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFILES
  
  
;--------------------------------
;Languages
 
  !insertmacro MUI_LANGUAGE "Hungarian"
  
;--------------------------------
;Language Strings

  ;Description
	LangString DESC_webdoga ${LANG_HUNGARIAN} "Web-doga v0.3"
	LangString DESC_VB6 ${LANG_HUNGARIAN} "Futáshoz szükséges Visual Basic 6.0 (SP5) Runtime fájlok telepítése.(Win XP alatt nem szükséges)"
	LangString DESC_Eltavolit ${LANG_HUNGARIAN} "Eltávolító alkalmazás telepítése. (Uninstall)"

;--------------------------------
;Installer Sections

Section "Web-doga v0.3" webdoga
	SectionIn RO

	detailprint ">>> Microsoft Internet Transfer Control DLL telepítése..."
	setoutpath $SYSDIR
	file "..\msinet.ocx"
	execwait "regsvr32.exe /i /s $SYSDIR/msinet.ocx"
	detailprint ""
	
	detailprint ">>> Shell Doc Object and Control Library telepítése..."
	setoutpath $SYSDIR
	file "..\shdocvw.dll"
	execwait "regsvr32.exe /i /s $SYSDIR/shdocvw.dll"
	detailprint ""

	detailprint ">>> Program telepítése..."
  	SetOutPath "$INSTDIR"
	File "..\webdoga.exe"
  	CreateDirectory "$SMPROGRAMS\Web-doga"
	CreateShortCut "$SMPROGRAMS\Web-doga\Web-doga.lnk" "$INSTDIR\webdoga.exe"

	detailprint ""
SectionEnd


section "Microsoft Visual Basic 6.0 Runtime (SP5)" VB6
	detailprint ">>> Microsoft Visual Basic 6.0 Runtime (SP5) telepítése..."
	setoutpath $SYSDIR
	file "vbrun60sp5.exe"
	execwait "$SYSDIR\vbrun60sp5.exe /q"
	detailprint ""
sectionend

Section "Eltávolító alkalmazás" Eltavolit
	detailprint ">>> Eltávoító alkalmazás telepítése..."
	SetOutPath "$INSTDIR"
	WriteUninstaller "$INSTDIR\eltavolit.exe"
	CreateShortCut "$SMPROGRAMS\Web-doga\Eltávolítás.lnk" "$INSTDIR\eltavolit.exe" 
Sectionend 


;!insertmacro MUI_SECTIONS_FINISHHEADER


!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
	!insertmacro MUI_DESCRIPTION_TEXT ${webdoga} $(DESC_webdoga)
	!insertmacro MUI_DESCRIPTION_TEXT ${VB6} $(DESC_VB6)
	!insertmacro MUI_DESCRIPTION_TEXT ${Eltavolit} $(DESC_Eltavolit)
!insertmacro MUI_FUNCTION_DESCRIPTION_END
 
;--------------------------------
;Uninstaller Section

Section "Uninstall"
	delete "$INSTDIR\*.*"
	delete "$SMPROGRAMS\Web-doga\*.*"
	rmdir "$SMPROGRAMS\Web-doga"
	rmdir "$INSTDIR"
  	;!insertmacro MUI_UNFINISHHEADER
SectionEnd