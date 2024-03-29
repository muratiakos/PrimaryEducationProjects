;Skand�l� telep�t�

!define MUI_PRODUCT "Skand�l�" ;Define your own software name here
!define MUI_VERSION "2.0" ;Define your own software version here
!define SK "${MUI_PRODUCT} ${MUI_VERSION}"

!include "MUI.nsh"

;--------------------------------
;Configuration

  OutFile "sk2_inst.exe"

  ShowInstDetails show

  InstallDir "$PROGRAMFILES\${SK}"
  
  InstallDirRegKey HKCU "Software\${SK}" ""

;--------------------------------
;Modern UI Configuration

  ;!define USE_SUBSECTION
  !define MUI_LICENSEPAGE
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
	LangString DESC_Skandalo ${LANG_HUNGARIAN} "${SK} telep�t�se az �n sz�m�t�g�p�re."
	LangString DESC_VB6 ${LANG_HUNGARIAN} "A ${SK} fut�s�hoz sz�ks�ges Visual Basic 6.0 (SP5) Runtime f�jlok telep�t�se.(XP alatt nem sz�ks�ges)"
	LangString DESC_Eltavolit ${LANG_HUNGARIAN} "${SK} elt�vol�t� alkalmaz�s telep�t�se. (Uninstall)"

;--------------------------------
;Data
  
  LicenseData "license.rtf"

;--------------------------------
;Reserve Files
  
  ;Things that need to be extracted on first (keep these lines before any File command!)
  ;Only useful for BZIP2 compression
  
  ;ReserveFile "${NSISDIR}\Contrib\Icons\modern-header.bmp"

;--------------------------------
;Installer Sections

Section "${SK}" Skandalo
	SectionIn RO
	WriteRegStr HKCU "Software\${SK}" "" $INSTDIR

	detailprint ">>> Microsoft Commondialog ActiveX vez�rl� telep�t�se..."
	setoutpath $SYSDIR
	file "comdlg32.ocx"
	execwait "regsvr32.exe /i /s $SYSDIR/comdlg32.ocx"
	detailprint ""
	

	detailprint ">>> ${SK} telep�t�se..."
  	SetOutPath "$INSTDIR"
	File "skandalo.exe"
  	CreateDirectory "$SMPROGRAMS\${SK}"
	CreateShortCut "$SMPROGRAMS\${SK}\${SK}.lnk" "$INSTDIR\skandalo.exe"
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
	CreateShortCut "$SMPROGRAMS\${SK}\Elt�vol�t�s.lnk" "$INSTDIR\eltavolit.exe" 
Sectionend 


!insertmacro MUI_SECTIONS_FINISHHEADER


!insertmacro MUI_FUNCTIONS_DESCRIPTION_BEGIN
	!insertmacro MUI_DESCRIPTION_TEXT ${Skandalo} $(DESC_Skandalo)
	!insertmacro MUI_DESCRIPTION_TEXT ${VB6} $(DESC_VB6)
	!insertmacro MUI_DESCRIPTION_TEXT ${Eltavolit} $(DESC_Eltavolit)
!insertmacro MUI_FUNCTIONS_DESCRIPTION_END
 
;--------------------------------
;Uninstaller Section

Section "Uninstall"
	delete "$INSTDIR\*.*"
	delete "$SMPROGRAMS\${SK}\*.*"
	rmdir "$SMPROGRAMS\${SK}"
	rmdir "$INSTDIR"

  	!insertmacro MUI_UNFINISHHEADER
SectionEnd