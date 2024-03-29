

!define MUI_PRODUCT "Magyar Sz�mok helyes�r�s�nak gyakorl�sa" ;Define your own software name here
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
	LangString DESC_Gyak ${LANG_HUNGARIAN} "Helyes�r�s gyakorl�k telep�t�se az �n sz�m�t�g�p�re."
	LangString DESC_VB6 ${LANG_HUNGARIAN} "Fut�shoz sz�ks�ges Visual Basic 6.0 (SP5) Runtime f�jlok telep�t�se.(XP alatt nem sz�ks�ges)"
	LangString DESC_Eltavolit ${LANG_HUNGARIAN} "Elt�vol�t� alkalmaz�s telep�t�se. (Uninstall)"

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

Section "Helyes�r�s gyakorl�k" Gyak
	SectionIn RO
	;WriteRegStr HKCU "Software\${SK}" "" $INSTDIR

	detailprint ">>> Microsoft Windows CommonControls ActiveX vez�rl� telep�t�se..."
	setoutpath $SYSDIR
	file "mscomctl.ocx"
	execwait "regsvr32.exe /i /s $SYSDIR/mscomctl.ocx"
	detailprint ""
	

	detailprint ">>> Programok telep�t�se..."
  	SetOutPath "$INSTDIR"
	File "irolv_term.exe"
  	CreateDirectory "$SMPROGRAMS\Sz�mok helyes�r�sa"
	CreateShortCut "$SMPROGRAMS\Sz�mok helyes�r�sa\Term�szetes sz�mok helyes�r�sa.lnk" "$INSTDIR\irolv_term.exe"

	File "irolv_ttort.exe"
  	CreateDirectory "$SMPROGRAMS\Sz�mok helyes�r�sa"
	CreateShortCut "$SMPROGRAMS\Sz�mok helyes�r�sa\Tizedes t�rtek helyes�r�sa.lnk" "$INSTDIR\irolv_ttort.exe"
	detailprint ""
SectionEnd

section "Microsoft Visual Basic 6.0 Runtime (SP5)" VB6
	detailprint ">>> Microsoft Visual Basic 6.0 Runtime (SP5) telep�t�se..."
	setoutpath $SYSDIR
	file "vbrun.exe"
	execwait "$SYSDIR\vbrun.exe /q"
	detailprint ""
sectionend

Section "Elt�vol�t� alkalmaz�s" Eltavolit
	detailprint ">>> Elt�vo�t� alkalmaz�s telep�t�se..."
	SetOutPath "$INSTDIR"
	WriteUninstaller "$INSTDIR\eltavolit.exe"
	CreateShortCut "$SMPROGRAMS\Sz�mok helyes�r�sa\Elt�vol�t�s.lnk" "$INSTDIR\eltavolit.exe" 
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
	delete "$SMPROGRAMS\Sz�mok helyes�r�sa\*.*"
	rmdir "$SMPROGRAMS\Sz�mok helyes�r�sa"
	rmdir "$INSTDIR"

  	!insertmacro MUI_UNFINISHHEADER
SectionEnd