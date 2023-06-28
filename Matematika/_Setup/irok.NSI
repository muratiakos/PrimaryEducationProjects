

!define MUI_PRODUCT "Magyar Számok helyesírásának gyakorlása" ;Define your own software name here
!define MUI_VERSION "" ;Define your own software version here

!include "MUI.nsh"

;--------------------------------
;Configuration

  OutFile "iro_setup.exe"

  ShowInstDetails show

  InstallDir "$PROGRAMFILES\Szam_Helyesiras"
  
  InstallDirRegKey HKCU "Software\Szam_Helyesiras" ""

;--------------------------------
;Modern UI Configuration

  ;!define USE_SUBSECTION
  ;!define MUI_LICENSEPAGE
  !define MUI_COMPONENTSPAGE
  !define MUI_COMPONENTSPAGE_SMALLDESC
  !define MUI_DIRECTORYPAGE
  
  !define MUI_ABORTWARNING
  
  !define MUI_UNINSTALLER
  !define MUI_UNCONFIRMPAGE

  
;--------------------------------
;Languages
 
  !insertmacro MUI_LANGUAGE "Hungarian"
  
;--------------------------------
;Language Strings

  ;Description
	LangString DESC_Gyak ${LANG_HUNGARIAN} "Helyesírás gyakorlók telepítése az ön számítógépére."
	LangString DESC_VB6 ${LANG_HUNGARIAN} "Futáshoz szükséges Visual Basic 6.0 (SP5) Runtime fájlok telepítése.(XP alatt nem szükséges)"
	LangString DESC_Eltavolit ${LANG_HUNGARIAN} "Eltávolító alkalmazás telepítése. (Uninstall)"

;--------------------------------
;Data
  
  ;LicenseData "license.rtf"

;--------------------------------
;Reserve Files
  
  ;Things that need to be extracted on first (keep these lines before any File command!)
  ;Only useful for BZIP2 compression
  
  ;ReserveFile "${NSISDIR}\Contrib\Icons\modern-header.bmp"

;--------------------------------
;Installer Sections

Section "Helyesírás gyakorlók" Gyak
	SectionIn RO
	;WriteRegStr HKCU "Software\${SK}" "" $INSTDIR

	detailprint ">>> Microsoft Windows CommonControls ActiveX vezérlõ telepítése..."
	setoutpath $SYSDIR
	file "mscomctl.ocx"
	execwait "regsvr32.exe /i /s $SYSDIR/mscomctl.ocx"
	detailprint ""
	

	detailprint ">>> Programok telepítése..."
  	SetOutPath "$INSTDIR"
	File "irolv_term.exe"
  	CreateDirectory "$SMPROGRAMS\Számok helyesírása"
	CreateShortCut "$SMPROGRAMS\Számok helyesírása\Természetes számok helyesírása.lnk" "$INSTDIR\irolv_term.exe"

	File "irolv_ttort.exe"
  	CreateDirectory "$SMPROGRAMS\Számok helyesírása"
	CreateShortCut "$SMPROGRAMS\Számok helyesírása\Tizedes törtek helyesírása.lnk" "$INSTDIR\irolv_ttort.exe"
	detailprint ""
SectionEnd

section "Microsoft Visual Basic 6.0 Runtime (SP5)" VB6
	detailprint ">>> Microsoft Visual Basic 6.0 Runtime (SP5) telepítése..."
	setoutpath $SYSDIR
	file "vbrun.exe"
	execwait "$SYSDIR\vbrun.exe /q"
	detailprint ""
sectionend

Section "Eltávolító alkalmazás" Eltavolit
	detailprint ">>> Eltávoító alkalmazás telepítése..."
	SetOutPath "$INSTDIR"
	WriteUninstaller "$INSTDIR\eltavolit.exe"
	CreateShortCut "$SMPROGRAMS\Számok helyesírása\Eltávolítás.lnk" "$INSTDIR\eltavolit.exe" 
Sectionend 


!insertmacro MUI_SECTIONS_FINISHHEADER


!insertmacro MUI_FUNCTIONS_DESCRIPTION_BEGIN
	!insertmacro MUI_DESCRIPTION_TEXT ${Gyak} $(DESC_Gyak)
	!insertmacro MUI_DESCRIPTION_TEXT ${VB6} $(DESC_VB6)
	!insertmacro MUI_DESCRIPTION_TEXT ${Eltavolit} $(DESC_Eltavolit)
!insertmacro MUI_FUNCTIONS_DESCRIPTION_END
 
;--------------------------------
;Uninstaller Section

Section "Uninstall"
	delete "$INSTDIR\*.*"
	delete "$SMPROGRAMS\Számok helyesírása\*.*"
	rmdir "$SMPROGRAMS\Számok helyesírása"
	rmdir "$INSTDIR"

  	!insertmacro MUI_UNFINISHHEADER
SectionEnd