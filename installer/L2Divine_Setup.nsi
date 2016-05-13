;; This is for NSIS Unicode with support Multi Language messages

;; Script generated by the HM NIS Edit Script Wizard.

RequestExecutionLevel admin
SetCompressor /SOLID lzma

;; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "L2Divine"
!define PRODUCT_VER "11.5.1"
!define PRODUCT_BLD "2621"
!define PRODUCT_VERSION "${PRODUCT_VER}.${PRODUCT_BLD}"
!define PRODUCT_PUBLISHER "L2Divine.com"
!define PRODUCT_WEB_SITE "http://www.l2divine.com/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\L2Divine.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define REGKEY_RUN_AS_ADMIN "Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers"

BRANDINGTEXT "${PRODUCT_PUBLISHER}"

/* Replace the values of the two defines below to your application's window class and window title, respectivelly. */
!define WNDCLASS "WindowsForms10.Window.8.app.0.2004eee"
!define WNDTITLE "${PRODUCT_NAME} ${PRODUCT_VER}"

;; MUI 1.67 compatible ------
!include "MUI2.nsh"
!include "Sections.nsh"
;!include "LogicLib.nsh"
!include "WinVer.nsh"

;; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

;; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

;; Welcome page
!insertmacro MUI_PAGE_WELCOME
;; License page
;!insertmacro MUI_PAGE_LICENSE "${NSISDIR}\License.txt"
;; Components page
!insertmacro MUI_PAGE_COMPONENTS
;; Directory page
!insertmacro MUI_PAGE_DIRECTORY
;; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
;; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\L2Divine.exe"
!insertmacro MUI_PAGE_FINISH

;; Uninstaller pages
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

;; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Thai"
!insertmacro MUI_LANGUAGE "TradChinese"
!insertmacro MUI_LANGUAGE "Korean"

!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "Russian"
!insertmacro MUI_LANGUAGE "Spanish"

!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "SpanishInternational"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Dutch"
!insertmacro MUI_LANGUAGE "Danish"
!insertmacro MUI_LANGUAGE "Swedish"
!insertmacro MUI_LANGUAGE "Norwegian"
!insertmacro MUI_LANGUAGE "NorwegianNynorsk"
!insertmacro MUI_LANGUAGE "Finnish"
!insertmacro MUI_LANGUAGE "Greek"
!insertmacro MUI_LANGUAGE "Portuguese"
!insertmacro MUI_LANGUAGE "PortugueseBR"
!insertmacro MUI_LANGUAGE "Polish"
!insertmacro MUI_LANGUAGE "Ukrainian"
!insertmacro MUI_LANGUAGE "Czech"
!insertmacro MUI_LANGUAGE "Slovak"
!insertmacro MUI_LANGUAGE "Croatian"
!insertmacro MUI_LANGUAGE "Bulgarian"
!insertmacro MUI_LANGUAGE "Hungarian"
!insertmacro MUI_LANGUAGE "Romanian"
!insertmacro MUI_LANGUAGE "Latvian"
!insertmacro MUI_LANGUAGE "Macedonian"
!insertmacro MUI_LANGUAGE "Estonian"
!insertmacro MUI_LANGUAGE "Turkish"
!insertmacro MUI_LANGUAGE "Lithuanian"
!insertmacro MUI_LANGUAGE "Slovenian"
!insertmacro MUI_LANGUAGE "Serbian"
!insertmacro MUI_LANGUAGE "SerbianLatin"
!insertmacro MUI_LANGUAGE "Arabic"
!insertmacro MUI_LANGUAGE "Farsi"
!insertmacro MUI_LANGUAGE "Hebrew"
!insertmacro MUI_LANGUAGE "Indonesian"
!insertmacro MUI_LANGUAGE "Mongolian"
!insertmacro MUI_LANGUAGE "Luxembourgish"
!insertmacro MUI_LANGUAGE "Albanian"
!insertmacro MUI_LANGUAGE "Breton"
!insertmacro MUI_LANGUAGE "Belarusian"
!insertmacro MUI_LANGUAGE "Icelandic"
!insertmacro MUI_LANGUAGE "Malay"
!insertmacro MUI_LANGUAGE "Bosnian"
!insertmacro MUI_LANGUAGE "Kurdish"
!insertmacro MUI_LANGUAGE "Irish"
!insertmacro MUI_LANGUAGE "Uzbek"
!insertmacro MUI_LANGUAGE "Galician"
!insertmacro MUI_LANGUAGE "Afrikaans"
!insertmacro MUI_LANGUAGE "Catalan"
!insertmacro MUI_LANGUAGE "Esperanto"

;; messages for l2d is runnning when start uninstall
;; i dunno these are right... thx for http://translate.google.com/
LangString msgRunning ${LANG_ENGLISH}  "The application you are trying to remove is running. Close it and try again."
LangString msgRunning ${LANG_JAPANESE} "削除しようとしたアプリケーションが起動中です。終了させてから再度実行してください。"
LangString msgRunning ${LANG_RUSSIAN}  "Заявление вы пытаетесь удалить запущена. Закройте ее и попробуйте снова."
LangString msgRunning ${LANG_SPANISH}  "La aplicación que está tratando de eliminar se está ejecutando. Cierre y vuelva a intentarlo."
LangString msgRunning ${LANG_THAI}     "แอพพลิเคชันที่คุณกำลังพยายามย้ายออกรัน. ปิดและลองอีกครั้ง."
LangString msgRunning ${LANG_SIMPCHINESE}  "您要删除的应用程序正在运行。关闭它，然后再试一次。"
LangString msgRunning ${LANG_TRADCHINESE}  "您要刪除的應用程序正在運行。關閉它，然後再試一次。"
LangString msgRunning ${LANG_KOREAN}  "당신이 제거하려는 응용 프로그램이 실행 중입니다. 을 닫고 다시 시도하십시오."

;;--------------------------------
;;Reserve Files

;;If you are using solid compression, files that are required before
;;the actual installation should be stored first in the data block,
;;because this will make your installer start faster.

!insertmacro MUI_RESERVEFILE_LANGDLL

;; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "${PRODUCT_NAME}${PRODUCT_VERSION}_Setup.exe"
InstallDir "$PROGRAMFILES\${PRODUCT_NAME}"
InstallDirRegKey "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
AllowRootDirInstall true

VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "${PRODUCT_NAME}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "Comments" "${PRODUCT_NAME} ${PRODUCT_VERSION}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "${PRODUCT_PUBLISHER}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalTrademarks" "${PRODUCT_NAME}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "Copyright (C) ${PRODUCT_PUBLISHER}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "${PRODUCT_NAME}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "${PRODUCT_VERSION}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductVersion" "${PRODUCT_VERSION}"
VIProductVersion "${PRODUCT_VERSION}"

Var /GLOBAL INI
Var /GLOBAL EXIST_INI


;;;;;;;;;;;;;;;;;;;;;
;;;;;  Install  ;;;;;
;;;;;;;;;;;;;;;;;;;;;

;SectionGroup "!main suit"
	Section "Main" SEC01
		SectionIn RO

		SetOutPath "$INSTDIR"

		StrCpy $INI "l2divine.ini"
		StrCpy $EXIST_INI "0"

;		;; old feature for maintainance INI
;		IfFileExists $INSTDIR\${INI} found
;			Goto notupdate
;		found:
;			ReadINIStr $0 $INSTDIR\${INI} AuthServer AuthServerIP
;			StrCmp $0 "" notupdate
;			Rename $INSTDIR\${INI} $INSTDIR\${INI}.8.X
;			StrCpy $EXIST_INI "1"
;		notupdate:
;
;		IntCmp

		SetOutPath "$INSTDIR\dat"
		SetOverwrite ifnewer
		SetOutPath "$INSTDIR\dat"
		File /r "L2Divine\dat\*.dat"
		SetOutPath "$INSTDIR"
		; don't overwrite
		SetOverwrite off
		File "L2Divine\l2divine.ini"
		SetOverwrite ifnewer
		File /r "L2Divine\*.exe"
		File /r "L2Divine\*.dll"
		File /r "L2Divine\*.txt"
		SetOutPath "$INSTDIR\lang"
		File /r "L2Divine\lang\*.resources"
		SetOutPath "$INSTDIR\map"
		File /r "L2Divine\map\*.map"
		File "L2Divine\map\map.resources"
		File "L2Divine\map\How-to-apply-your-own-map.txt"
		SetOutPath "$INSTDIR\script"
		File /r "L2Divine\script\*.txt"
		SetOutPath "$INSTDIR\script\waypoint_catacomb"
		File /r "L2Divine\script\waypoint_catacomb\*.txt"
		SetOutPath "$INSTDIR\setting"
		SetOutPath "$INSTDIR\sound"
		File /r "L2Divine\sound\*.wav"
		SetOutPath "$INSTDIR\stat"
		SetOutPath "$INSTDIR"
		CreateDirectory "$SMPROGRAMS\${PRODUCT_NAME}"
		CreateShortCut "$SMPROGRAMS\${PRODUCT_NAME}\${PRODUCT_NAME}.lnk" "$INSTDIR\L2Divine.exe"
		CreateShortCut "$DESKTOP\${PRODUCT_NAME}.lnk" "$INSTDIR\L2Divine.exe"

;		;; INI maintainance for 9.x coz it has not compatibility
;		if -f $INSTDIR\
;		ReadINIStr $0 $INSTDIR\winamp.ini winamp outname
;		WriteINIStr $TEMP\something.ini section1 something $0
;		Var MYVAR
;		StrCpy $MYVAR "myvalue"

		;; edit ini
		WriteINIStr "$INSTDIR\l2divine.ini" "Option" "WinTitle" "${PRODUCT_NAME} ${PRODUCT_VER}"
		;; add since 10.6.4 -> not recommended option
		;WriteIniStr "$INSTDIR\l2divine.ini" "Option" "EnableGameGuard" "0"
		;;
		WriteIniStr "$INSTDIR\l2divine.ini" "Option" "DisableMemPatch" "1"
		WriteIniStr "$INSTDIR\l2divine.ini" "Option" "EnableScriptEncryption" "1"
		;; add since 11.3.0
		WriteIniStr "$INSTDIR\l2divine.ini" "Option" "Disable32bppPArgb" "false"
		FlushINI "$INSTDIR\l2divine.ini"
		;WriteINIStr "$INSTDIR\l2divine.ini" NA UseSecondaryAuth 1
		;WriteINIStr "$INSTDIR\l2divine.ini" NA UseSecondaryProtocol 0
	SectionEnd

;	Section "map" SEC02
;		SectionIn RO
;		SetOverwrite ifnewer
;		SetOutPath "$INSTDIR\map"
;		File "map\map.resources"
;	SectionEnd
;SectionGroupEnd

Section /o "Japanese" SEC03
	SetOverwrite ifnewer
	SetOutPath "$INSTDIR\dat"
	File /r "dat_jp\*.dat"
	SetOutPath "$INSTDIR"
	SetOverwrite ifnewer
	File "divine_guide_book(jp).pdf"
	File "L2Divine Japanese setup guide for x64 PC.pdf"
	SetOutPath "$INSTDIR\script"
	File "DivineScript_Reference_ja.txt"
	;; edit ini
	WriteINIStr "$INSTDIR\l2divine.ini" Option Lang j
	WriteINIStr "$INSTDIR\l2divine.ini" Option UI "Japanese"
;	WriteINIStr "$INSTDIR\l2divine.ini" ServerProfile Default "Japan"
;	WriteINIStr "$INSTDIR\l2divine.ini" Japan UseSecondaryAuth 1
;	WriteINIStr "$INSTDIR\l2divine.ini" Japan UseSecondaryProtocol 1
	FlushINI "$INSTDIR\l2divine.ini"
SectionEnd

Section /o "Taiwan" SEC04
	SetOverwrite ifnewer
	SetOutPath "$INSTDIR\dat"
	SetOverwrite try
	File /r "dat_tw\*.dat"
	SetOutPath "$INSTDIR"
	SetOverwrite ifnewer
;	File "divine_guide_book(tw).pdf"
	;; edit ini
	WriteINIStr "$INSTDIR\l2divine.ini" Option Lang tw
; *replace this if Chinese Traditional data is released in the future
	WriteINIStr "$INSTDIR\l2divine.ini" Option UI "Chinese Simplified"
;	WriteINIStr "$INSTDIR\l2divine.ini" Option UI "Chinese Traditional"
;	WriteINIStr "$INSTDIR\l2divine.ini" ServerProfile Default "Taiwan"
;	WriteINIStr "$INSTDIR\l2divine.ini" Taiwan UseSecondaryAuth 0
;	WriteINIStr "$INSTDIR\l2divine.ini" Taiwan UseSecondaryProtocol 1
	FlushINI "$INSTDIR\l2divine.ini"
SectionEnd

Section /o "Thai" SEC05
	SetOverwrite ifnewer
	SetOutPath "$INSTDIR\dat"
	SetOverwrite try
; not for 10.x
;	File /r "dat_th\*.dat"
	SetOutPath "$INSTDIR"
	SetOverwrite ifnewer
	File "divine_guide_book(th).pdf"
	;; edit ini
; *not good Lang data for 10.6.4 :(
;	WriteINIStr "$INSTDIR\l2divine.ini" Option Lang th
	WriteINIStr "$INSTDIR\l2divine.ini" Option UI "Thai"
;	WriteINIStr "$INSTDIR\l2divine.ini" ServerProfile Default "Thailand"
	FlushINI "$INSTDIR\l2divine.ini"
SectionEnd

Section /o "China" SEC06
	SetOverwrite ifnewer
	SetOutPath "$INSTDIR\dat"
	SetOverwrite try
; not for 10.x
;	File /r "dat_cn\*.dat"
	SetOutPath "$INSTDIR"
	SetOverwrite ifnewer
;	File "divine_guide_book(cn).pdf"
	;; edit ini
; *not good Lang data for 10.6.4 :(
;	WriteINIStr "$INSTDIR\l2divine.ini" Option Lang cn
;	WriteINIStr "$INSTDIR\l2divine.ini" Option UI "Chinese Simplified"
;	WriteINIStr "$INSTDIR\l2divine.ini" ServerProfile Default "China"
	FlushINI "$INSTDIR\l2divine.ini"
SectionEnd

; Korean data was supported again till 11.3.0...
Section /o "Korean" SEC07
	SetOverwrite ifnewer
	SetOutPath "$INSTDIR\dat"
	SetOverwrite try
	File /r "dat_kr\*.dat"
	SetOutPath "$INSTDIR"
	SetOverwrite ifnewer
;	File "divine_guide_book(kr).pdf"
	;; edit ini
; *not good Lang data for 10.6.4 :(
;	WriteINIStr "$INSTDIR\l2divine.ini" Option Lang k
; *uncomment this if Korean data is released in the future
;	WriteINIStr "$INSTDIR\l2divine.ini" Option UI "Korean"
;	WriteINIStr "$INSTDIR\l2divine.ini" ServerProfile Default "Korea"
	FlushINI "$INSTDIR\l2divine.ini"
SectionEnd


Section "Guidebook(en)" SEC10
	SetOverwrite ifnewer
	SetOutPath "$INSTDIR"
	File "l2divine_guide_book(en).pdf"
SectionEnd

Section /o "Guidebook(es)" SEC11
	SetOverwrite ifnewer
	SetOutPath "$INSTDIR"
	File "divine_guide_book(es).pdf"
	SetOutPath "$INSTDIR\lang"
	SetOverwrite try
	File "lang_old\Spanish.resources"
SectionEnd

Section /o "Russian old UI" SEC12
	SetOverwrite ifnewer
	SetOutPath "$INSTDIR\lang"
	File "lang_old\Russian.resources"
SectionEnd

Section -AdditionalIcons
	WriteIniStr "$INSTDIR\${PRODUCT_NAME} Website.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
	CreateShortCut "$SMPROGRAMS\${PRODUCT_NAME}\${PRODUCT_NAME} Website.lnk" "$INSTDIR\${PRODUCT_NAME} Website.url"
	CreateShortCut "$SMPROGRAMS\${PRODUCT_NAME}\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
	WriteUninstaller "$INSTDIR\uninst.exe"
	WriteRegStr "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\L2Divine.exe"
	WriteRegStr "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
	WriteRegStr "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
	WriteRegStr "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\L2Divine.exe"
	WriteRegStr "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
	WriteRegStr "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
	WriteRegStr "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
	;; set registry for run as admin always
	WriteRegStr "${PRODUCT_UNINST_ROOT_KEY}" "${REGKEY_RUN_AS_ADMIN}" "$INSTDIR\L2Divine.exe" "RUNASADMIN"
SectionEnd

;; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "L2Divine main suit with Map data"
;	!insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "Map data"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "Japanese Data, UI and Guidebook for Japanese users"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC04} "Chinese Traditional Data and Chinese Simplified UI for Taiwanese users"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC05} "Thai UI and Guidebook for Thailand users"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC06} "Chinese Simplified UI"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC07} "Korean Data"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC10} "English Guidebook"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC11} "Spanish Guidebook and old UI"
	!insertmacro MUI_DESCRIPTION_TEXT ${SEC12} "Russian old UI"
!insertmacro MUI_FUNCTION_DESCRIPTION_END

Function .onInit
	!insertmacro MUI_LANGDLL_DISPLAY
;	StrCpy $1 ${SEC03}	;; English has selected by default in $1
	;; for avoid UAC
	${If} ${AtLeastWinVista}
		StrCpy $INSTDIR "$DESKTOP\${PRODUCT_NAME}"
	${EndIf}
FunctionEnd

Function .onSelChange
;	!insertmacro StartRadioButtons $1
;		!insertmacro RadioButton ${SEC03}
;		!insertmacro RadioButton ${SEC04}
;		!insertmacro RadioButton ${SEC05}
;	!insertmacro EndRadioButtons
FunctionEnd


;;;;;;;;;;;;;;;;;;;;;
;;;;; Uninstall ;;;;;
;;;;;;;;;;;;;;;;;;;;;

Function un.onUninstSuccess
	;
FunctionEnd

Function un.onInit
	!insertmacro MUI_UNGETLANGUAGE
	FindWindow $0 "${WNDCLASS}" "${WNDTITLE}"
	StrCmp $0 0 continueInstall
		MessageBox MB_ICONSTOP|MB_OK "$(msgRunning)"
		Abort
	continueInstall:
FunctionEnd

Section Uninstall
	;; delete shortcuts
	Delete "$SMPROGRAMS\${PRODUCT_NAME}\Uninstall.lnk"
	Delete "$SMPROGRAMS\${PRODUCT_NAME}\${PRODUCT_NAME} Website.lnk"
	Delete "$SMPROGRAMS\${PRODUCT_NAME}\${PRODUCT_NAME}.lnk"
	Delete "$DESKTOP\${PRODUCT_NAME}.lnk"
	Delete "$INSTDIR\${PRODUCT_NAME} Website.url"
	;; delete guide book
	Delete "$INSTDIR\divine_guide_book(en).pdf"
	Delete "$INSTDIR\divine_guide_book(es).pdf"
	Delete "$INSTDIR\divine_guide_book(th).pdf"
	;; th
	Delete "$INSTDIR\dat\systemmsg-th.dat"
	Delete "$INSTDIR\dat\skill-th.dat"
	Delete "$INSTDIR\dat\servername-th.dat"
	Delete "$INSTDIR\dat\recipe-th.dat"
	Delete "$INSTDIR\dat\quest-th.dat"
	Delete "$INSTDIR\dat\optiondata_client-th.dat"
	Delete "$INSTDIR\dat\npc-th.dat"
	Delete "$INSTDIR\dat\item-th.dat"
	Delete "$INSTDIR\dat\actionname-th.dat"
	Delete "$INSTDIR\dat\string-th.dat"
	;; jp
	Delete "$INSTDIR\divine_guide_book(jp).pdf"
	Delete "$INSTDIR\script\DivineScript_Reference_ja.txt"
	Delete "$INSTDIR\dat\systemmsg-j.dat"
	Delete "$INSTDIR\dat\skill-j.dat"
	Delete "$INSTDIR\dat\servername-j.dat"
	Delete "$INSTDIR\dat\recipe-j.dat"
	Delete "$INSTDIR\dat\quest-j.dat"
	Delete "$INSTDIR\dat\optiondata_client-j.dat"
	Delete "$INSTDIR\dat\npc-j.dat"
	Delete "$INSTDIR\dat\item-j.dat"
	Delete "$INSTDIR\dat\actionname-j.dat"
	Delete "$INSTDIR\dat\string-j.dat"
	Delete "$INSTDIR\dat\info-j.dat"
	Delete "$INSTDIR\dat\L2Divine Japanese setup guide for x64 PC.pdf"
	;; cn has gone
	Delete "$INSTDIR\dat\actionname-cn.dat"
	Delete "$INSTDIR\dat\item-cn.dat"
	Delete "$INSTDIR\dat\npc-cn.dat"
	Delete "$INSTDIR\dat\optiondata_client-cn.dat"
	Delete "$INSTDIR\dat\quest-cn.dat"
	Delete "$INSTDIR\dat\recipe-cn.dat"
	Delete "$INSTDIR\dat\servername-cn.dat"
	Delete "$INSTDIR\dat\skill-cn.dat"
	Delete "$INSTDIR\dat\string-cn.dat"
	Delete "$INSTDIR\dat\systemmsg-cn.dat"
	;; tw since 10.1.6
	Delete "$INSTDIR\dat\actionname-tw.dat"
	Delete "$INSTDIR\dat\item-tw.dat"
	Delete "$INSTDIR\dat\npc-tw.dat"
	Delete "$INSTDIR\dat\optiondata_client-tw.dat"
	Delete "$INSTDIR\dat\quest-tw.dat"
	Delete "$INSTDIR\dat\recipe-tw.dat"
	Delete "$INSTDIR\dat\servername-tw.dat"
	Delete "$INSTDIR\dat\skill-tw.dat"
	Delete "$INSTDIR\dat\string-tw.dat"
	Delete "$INSTDIR\dat\systemmsg-tw.dat"
	Delete "$INSTDIR\dat\info-tw.dat"
	;; kr since 10.6.0
	Delete "$INSTDIR\dat\actionname-k.dat"
	Delete "$INSTDIR\dat\info-k.dat"
	Delete "$INSTDIR\dat\item-k.dat"
	Delete "$INSTDIR\dat\npc-k.dat"
	Delete "$INSTDIR\dat\optiondata_client-k.dat"
	Delete "$INSTDIR\dat\quest-k.dat"
	Delete "$INSTDIR\dat\recipe-k.dat"
	Delete "$INSTDIR\dat\servername-k.dat"
	Delete "$INSTDIR\dat\skill-k.dat"
	Delete "$INSTDIR\dat\string-k.dat"
	Delete "$INSTDIR\dat\systemmsg-k.dat"
	;; jp classic since 11.3.1
	Delete "$INSTDIR\dat\actionname-j_classic.dat"
	Delete "$INSTDIR\dat\item-j_classic.dat"
	Delete "$INSTDIR\dat\npc-j_classic.dat"
	Delete "$INSTDIR\dat\optiondata_client-j_classic.dat"
	Delete "$INSTDIR\dat\quest-j_classic.dat"
	Delete "$INSTDIR\dat\recipe-j_classic.dat"
	Delete "$INSTDIR\dat\servername-j_classic.dat"
	Delete "$INSTDIR\dat\skill-j_classic.dat"
	Delete "$INSTDIR\dat\string-j_classic.dat"
	Delete "$INSTDIR\dat\systemmsg-j_classic.dat"
	;; kr classic since 11.3.1
	Delete "$INSTDIR\dat\actionname-k_classic.dat"
	Delete "$INSTDIR\dat\info-k_classic.dat"
	Delete "$INSTDIR\dat\item-k_classic.dat"
	Delete "$INSTDIR\dat\npc-k_classic.dat"
	Delete "$INSTDIR\dat\optiondata_client-k_classic.dat"
	Delete "$INSTDIR\dat\quest-k_classic.dat"
	Delete "$INSTDIR\dat\recipe-k_classic.dat"
	Delete "$INSTDIR\dat\servername-k_classic.dat"
	Delete "$INSTDIR\dat\skill-k_classic.dat"
	Delete "$INSTDIR\dat\string-k_classic.dat"
	Delete "$INSTDIR\dat\systemmsg-k_classic.dat"
	;; en classic since 11.3.2
	Delete "$INSTDIR\dat\actionname-e_classic.dat"
	Delete "$INSTDIR\dat\info-e_classic.dat"
	Delete "$INSTDIR\dat\item-e_classic.dat"
	Delete "$INSTDIR\dat\npc-e_classic.dat"
	Delete "$INSTDIR\dat\optiondata_client-e_classic.dat"
	Delete "$INSTDIR\dat\quest-e_classic.dat"
	Delete "$INSTDIR\dat\recipe-e_classic.dat"
	Delete "$INSTDIR\dat\servername-e_classic.dat"
	Delete "$INSTDIR\dat\skill-e_classic.dat"
	Delete "$INSTDIR\dat\string-e_classic.dat"
	Delete "$INSTDIR\dat\systemmsg-e_classic.dat"
	;; tw classic since 11.3.3
	Delete "$INSTDIR\dat\actionname-tw_classic.dat"
	Delete "$INSTDIR\dat\item-tw_classic.dat"
	Delete "$INSTDIR\dat\npc-tw_classic.dat"
	Delete "$INSTDIR\dat\optiondata_client-tw_classic.dat"
	Delete "$INSTDIR\dat\quest-tw_classic.dat"
	Delete "$INSTDIR\dat\recipe-tw_classic.dat"
	Delete "$INSTDIR\dat\servername-tw_classic.dat"
	Delete "$INSTDIR\dat\skill-tw_classic.dat"
	Delete "$INSTDIR\dat\string-tw_classic.dat"
	Delete "$INSTDIR\dat\systemmsg-tw_classic.dat"
	;; script
	Delete "$INSTDIR\script\Aden_Spawn_Loc.txt"
	Delete "$INSTDIR\script\Buy_Seed.txt"
	Delete "$INSTDIR\script\Craft_Item.txt"
	Delete "$INSTDIR\script\DivineScript_Reference.txt"
	Delete "$INSTDIR\script\Down_Level.txt"
	Delete "$INSTDIR\script\Down_Level_Goddard.txt"
	Delete "$INSTDIR\script\Enchant_Item.txt"
	Delete "$INSTDIR\script\Faverites_Buff.txt"
	Delete "$INSTDIR\script\Goddard_Spawn_Loc.txt"
	Delete "$INSTDIR\script\GOD_Quest_65-70_(Plain Mission).txt"
	Delete "$INSTDIR\script\GOD_Quest_70-75_(Awakened).txt"
	Delete "$INSTDIR\script\GOD_Quest_70-75_(Be Well).txt"
	Delete "$INSTDIR\script\GOD_Quest_75_(In This Quiet Place).txt"
	Delete "$INSTDIR\script\GOD_Quest_75_(Well-known Secret).txt"
	Delete "$INSTDIR\script\GOD_Quest_75_(Wonders of Caring).txt"
	Delete "$INSTDIR\script\GOD_Solo_Lv55-60@Forsaken_Plains.txt"
	Delete "$INSTDIR\script\GOD_Solo_Lv60-62@Forsaken_Plains.txt"
	Delete "$INSTDIR\script\GOD_Solo_Lv63-65@Valley_Of_Saints.txt"
	Delete "$INSTDIR\script\GOD_Solo_Lv65@Goddard.txt"
	Delete "$INSTDIR\script\GOD_Solo_Lv65@Goddard2.txt"
	Delete "$INSTDIR\script\GOD_Solo_Lv70@Goddard.txt"
	Delete "$INSTDIR\script\GOD_Solo_Lv72@Hot_Springs.txt"
	Delete "$INSTDIR\script\NPC Trade (G+).txt"
	Delete "$INSTDIR\script\NPC_Trade_GraciaPlus.txt"
	Delete "$INSTDIR\script\NPC_Trading.txt"
	Delete "$INSTDIR\script\Quest_Delivery_Special_Liquor_Egg.txt"
	Delete "$INSTDIR\script\Quest_Get_A_Pet.txt"
	Delete "$INSTDIR\script\Quest_Help_The_Sister!.txt"
	Delete "$INSTDIR\script\Quest_Help_The_Son!.txt"
	Delete "$INSTDIR\script\Quest_Help_The_Uncle!.txt"
	Delete "$INSTDIR\script\Quest_Path_of_the_Orc_Raider.txt"
	Delete "$INSTDIR\script\Quest_Revenge_of_the_Redbonnet.txt"
	Delete "$INSTDIR\script\Rune_Spawn_Loc.txt"
	Delete "$INSTDIR\script\Shop_for_Soulshot(D).txt"
	Delete "$INSTDIR\script\Solo lv27@Cruma.txt"
	Delete "$INSTDIR\script\Solo lv30@Girun.txt"
	Delete "$INSTDIR\script\Solo_Lv30@Breka.txt"
	Delete "$INSTDIR\script\Solo_Lv35@Hardin.txt"
	Delete "$INSTDIR\script\Solo_Lv40@Aden.txt"
	Delete "$INSTDIR\script\Solo_Lv50@Forsaken_Plains.txt"
	Delete "$INSTDIR\script\Warehouse.txt"
	;; other bin
	Delete "$INSTDIR\sound\balloon.wav"
	Delete "$INSTDIR\sound\alert.wav"
	Delete "$INSTDIR\Microsoft.Licensing.Utils2.0.dll"
	Delete "$INSTDIR\Microsoft.Licensing.Runtime2.0.dll"
	Delete "$INSTDIR\Microsoft.Licensing.Permutation_1cc06_2.0.dll"
	Delete "$INSTDIR\Microsoft.Licensing.Utils1.0.dll"
	Delete "$INSTDIR\Microsoft.Licensing.Utils1.1.dll"
	Delete "$INSTDIR\Microsoft.Licensing.Utils1.2.dll"
	;; map
	Delete "$INSTDIR\map\map.resources"
	Delete "$INSTDIR\map\26_14.map"
	Delete "$INSTDIR\map\25_21.map"
	Delete "$INSTDIR\map\25_20.map"
	Delete "$INSTDIR\map\25_19.map"
	Delete "$INSTDIR\map\25_18.map"
	Delete "$INSTDIR\map\25_17.map"
	Delete "$INSTDIR\map\25_16.map"
	Delete "$INSTDIR\map\25_15.map"
	Delete "$INSTDIR\map\25_14.map"
	Delete "$INSTDIR\map\25_13.map"
	Delete "$INSTDIR\map\25_12.map"
	Delete "$INSTDIR\map\25_11.map"
	Delete "$INSTDIR\map\24_23.map"
	Delete "$INSTDIR\map\24_22.map"
	Delete "$INSTDIR\map\24_21.map"
	Delete "$INSTDIR\map\24_20.map"
	Delete "$INSTDIR\map\24_19.map"
	Delete "$INSTDIR\map\24_18.map"
	Delete "$INSTDIR\map\24_17.map"
	Delete "$INSTDIR\map\24_16.map"
	Delete "$INSTDIR\map\24_15.map"
	Delete "$INSTDIR\map\24_14.map"
	Delete "$INSTDIR\map\24_13.map"
	Delete "$INSTDIR\map\24_12.map"
	Delete "$INSTDIR\map\24_11.map"
	Delete "$INSTDIR\map\23_25.map"
	Delete "$INSTDIR\map\23_24.map"
	Delete "$INSTDIR\map\23_23.map"
	Delete "$INSTDIR\map\23_22.map"
	Delete "$INSTDIR\map\23_21.map"
	Delete "$INSTDIR\map\23_20.map"
	Delete "$INSTDIR\map\23_19.map"
	Delete "$INSTDIR\map\23_18.map"
	Delete "$INSTDIR\map\23_17.map"
	Delete "$INSTDIR\map\23_16.map"
	Delete "$INSTDIR\map\23_15.map"
	Delete "$INSTDIR\map\23_14.map"
	Delete "$INSTDIR\map\23_13.map"
	Delete "$INSTDIR\map\23_12.map"
	Delete "$INSTDIR\map\23_11.map"
	Delete "$INSTDIR\map\22_25.map"
	Delete "$INSTDIR\map\22_24.map"
	Delete "$INSTDIR\map\22_23.map"
	Delete "$INSTDIR\map\22_22.map"
	Delete "$INSTDIR\map\22_21.map"
	Delete "$INSTDIR\map\22_20.map"
	Delete "$INSTDIR\map\22_19.map"
	Delete "$INSTDIR\map\22_18.map"
	Delete "$INSTDIR\map\22_17.map"
	Delete "$INSTDIR\map\22_16.map"
	Delete "$INSTDIR\map\22_15.map"
	Delete "$INSTDIR\map\22_14.map"
	Delete "$INSTDIR\map\22_13.map"
	Delete "$INSTDIR\map\21_25.map"
	Delete "$INSTDIR\map\21_24.map"
	Delete "$INSTDIR\map\21_23.map"
	Delete "$INSTDIR\map\21_22.map"
	Delete "$INSTDIR\map\21_21.map"
	Delete "$INSTDIR\map\21_20.map"
	Delete "$INSTDIR\map\21_19.map"
	Delete "$INSTDIR\map\21_18.map"
	Delete "$INSTDIR\map\21_17.map"
	Delete "$INSTDIR\map\21_16.map"
	Delete "$INSTDIR\map\21_15.map"
	Delete "$INSTDIR\map\21_14.map"
	Delete "$INSTDIR\map\21_13.map"
	Delete "$INSTDIR\map\21_11.map"
	Delete "$INSTDIR\map\20_25.map"
	Delete "$INSTDIR\map\20_23.map"
	Delete "$INSTDIR\map\20_22.map"
	Delete "$INSTDIR\map\20_21.map"
	Delete "$INSTDIR\map\20_20.map"
	Delete "$INSTDIR\map\20_19.map"
	Delete "$INSTDIR\map\20_18.map"
	Delete "$INSTDIR\map\20_17.map"
	Delete "$INSTDIR\map\20_16.map"
	Delete "$INSTDIR\map\20_15.map"
	Delete "$INSTDIR\map\20_14.map"
	Delete "$INSTDIR\map\20_13.map"
	Delete "$INSTDIR\map\20_11.map"
	Delete "$INSTDIR\map\20_10.map"
	Delete "$INSTDIR\map\19_25.map"
	Delete "$INSTDIR\map\19_24.map"
	Delete "$INSTDIR\map\19_23.map"
	Delete "$INSTDIR\map\19_22.map"
	Delete "$INSTDIR\map\19_21.map"
	Delete "$INSTDIR\map\19_20.map"
	Delete "$INSTDIR\map\19_19.map"
	Delete "$INSTDIR\map\19_18.map"
	Delete "$INSTDIR\map\19_17.map"
	Delete "$INSTDIR\map\19_15.map"
	Delete "$INSTDIR\map\19_14.map"
	Delete "$INSTDIR\map\19_13.map"
	Delete "$INSTDIR\map\19_11.map"
	Delete "$INSTDIR\map\19_10.map"
	Delete "$INSTDIR\map\18_24.map"
	Delete "$INSTDIR\map\18_23.map"
	Delete "$INSTDIR\map\18_22.map"
	Delete "$INSTDIR\map\18_21.map"
	Delete "$INSTDIR\map\18_20.map"
	Delete "$INSTDIR\map\18_19.map"
	Delete "$INSTDIR\map\18_16.map"
	Delete "$INSTDIR\map\18_15.map"
	Delete "$INSTDIR\map\18_14.map"
	Delete "$INSTDIR\map\18_11.map"
	Delete "$INSTDIR\map\18_10.map"
	Delete "$INSTDIR\map\17_25.map"
	Delete "$INSTDIR\map\17_23.map"
	Delete "$INSTDIR\map\17_22.map"
	Delete "$INSTDIR\map\17_21.map"
	Delete "$INSTDIR\map\17_20.map"
	Delete "$INSTDIR\map\17_19.map"
	Delete "$INSTDIR\map\17_17.map"
	Delete "$INSTDIR\map\17_16.map"
	Delete "$INSTDIR\map\17_15.map"
	Delete "$INSTDIR\map\17_11.map"
	Delete "$INSTDIR\map\17_10.map"
	Delete "$INSTDIR\map\16_25.map"
	Delete "$INSTDIR\map\16_24.map"
	Delete "$INSTDIR\map\16_21.map"
	Delete "$INSTDIR\map\16_20.map"
	Delete "$INSTDIR\map\16_19.map"
	Delete "$INSTDIR\map\16_12.map"
	Delete "$INSTDIR\map\16_11.map"
	Delete "$INSTDIR\map\15_25.map"
	Delete "$INSTDIR\map\14_25.map"
	Delete "$INSTDIR\map\14_24.map"
	Delete "$INSTDIR\map\14_23.map"
	Delete "$INSTDIR\map\14_22.map"
	Delete "$INSTDIR\map\13_25.map"
	Delete "$INSTDIR\map\13_24.map"
	Delete "$INSTDIR\map\12_25.map"
	Delete "$INSTDIR\map\12_24.map"
	;; added since 10.1.0
	Delete "$INSTDIR\map\13_23.map"
	Delete "$INSTDIR\map\16_13.map"
	Delete "$INSTDIR\map\17_12.map"
	Delete "$INSTDIR\map\17_13.map"
	Delete "$INSTDIR\map\17_24.map"
	Delete "$INSTDIR\map\18_12.map"
	Delete "$INSTDIR\map\18_25.map"
	Delete "$INSTDIR\map\19_12.map"
	Delete "$INSTDIR\map\19_16.map"
	Delete "$INSTDIR\map\19_26.map"
	Delete "$INSTDIR\map\20_12.map"
	Delete "$INSTDIR\map\20_24.map"
	Delete "$INSTDIR\map\20_26.map"
	Delete "$INSTDIR\map\21_10.map"
	Delete "$INSTDIR\map\22_10.map"
	Delete "$INSTDIR\map\26_20.map"
	Delete "$INSTDIR\map\26_21.map"
	;;
	Delete "$INSTDIR\map\16_22.map"
	;; lang
	Delete "$INSTDIR\lang\Thai.resources"
	Delete "$INSTDIR\lang\Spanish.resources"
	Delete "$INSTDIR\lang\Russian.resources"
	Delete "$INSTDIR\lang\Japanese.resources"
	Delete "$INSTDIR\lang\English.resources"
	Delete "$INSTDIR\lang\Chinese Simplified.resources"
	;; added since 11.3.7
	Delete "$INSTDIR\lang\Chinese Traditional.resources"
	;; dat
	Delete "$INSTDIR\dat\systemmsg-e.dat"
	Delete "$INSTDIR\dat\skill-e.dat"
	Delete "$INSTDIR\dat\servername-e.dat"
	Delete "$INSTDIR\dat\recipe-e.dat"
	Delete "$INSTDIR\dat\quest-e.dat"
	Delete "$INSTDIR\dat\optiondata_client-e.dat"
	Delete "$INSTDIR\dat\npc-e.dat"
	Delete "$INSTDIR\dat\item-e.dat"
	Delete "$INSTDIR\dat\actionname-e.dat"
	Delete "$INSTDIR\dat\string-e.dat"
	Delete "$INSTDIR\dat\recipe.dat"
	Delete "$INSTDIR\dat\info-e.dat"
	;; added since 11.5.1
	Delete "$INSTDIR\dat\servername-j.dat"
	Delete "$INSTDIR\dat\servername-j_classic.dat"
	Delete "$INSTDIR\dat\servername-tw.dat"
	Delete "$INSTDIR\dat\servername-tw_classic.dat"
	;; exec bin
	Delete "$INSTDIR\L2Divine.exe"
	Delete "$INSTDIR\devcon.exe"
	Delete "$INSTDIR\uninst.exe"

	;; added since 8.5.3 coz I forgot
	Delete "$INSTDIR\script\NPC Trade (G+).txt"
	Delete "$INSTDIR\divine_guide_book(jp).pdf"
	Delete "$INSTDIR\divine_guide_book(th).pdf"
	Delete "$INSTDIR\divine_guide_book(en).pdf"
	Delete "$INSTDIR\divine_guide_book(es).pdf"
	Delete "$INSTDIR\l2divine_guide_book(en).pdf"
	;; added since 10.0.0
	Delete "$INSTDIR\Windows7_Vista.txt"
	;; added since 10.1.2
	Delete "$INSTDIR\readme.txt"
	;; added since 10.2.1
	Delete "$INSTDIR\How-to-apply-your-own-map.txt"
	;; added since 10.4.1
	Delete "$INSTDIR\map\How-to-apply-your-own-map.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\18_20.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\18_24.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\19_18.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\19_20.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\21_21.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\21_22.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\21_23.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\22_20.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\22_24.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\23_20.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\23_22.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\23_23.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\24_20.txt"
	Delete "$INSTDIR\script\waypoint_catacomb\25_17.txt"
	;;
	Delete "$INSTDIR\L2Divine Japanese setup guide for x64 PC.pdf"
	;; added since 10.5.2
	Delete "$INSTDIR\devcon64.exe"
	;; added since 11.2.2
	Delete "$INSTDIR\script\click_question_mark_icon.txt"
	;; added since 11.3.7
	Delete "$INSTDIR\DevIL.dll"
	Delete "$INSTDIR\DevIL.NET.dll"
	;; added since 11.4.3
	Delete "$INSTDIR\Microsoft.Networking.Utils1.0.dll"

	;; uncomment below if u don't want remain ini file
	;Delete "$INSTDIR\l2divine.ini"

	;; delete directory
	SetShellVarContext all
	RMDir /r "$SMPROGRAMS\${PRODUCT_NAME}"
	SetShellVarContext current
	RMDir /r "$SMPROGRAMS\${PRODUCT_NAME}"
	RMDir /r "$INSTDIR\sound"
	RMDir /r "$INSTDIR\lang"
	RMDir /r "$INSTDIR\dat"

	;; remove directory if vacant
	RMDir "$INSTDIR\map\waypoint_catacomb"
	RMDir "$INSTDIR\map"
	RMDir "$INSTDIR\script"
	RMDir "$INSTDIR\script\waypoint_catacomb"
	RMDir "$INSTDIR\stat"
	RMDir "$INSTDIR\setting"
	RMDir "$INSTDIR"

	;; delete registry for this product
	DeleteRegKey "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_UNINST_KEY}"
	DeleteRegKey "${PRODUCT_UNINST_ROOT_KEY}" "${PRODUCT_DIR_REGKEY}"
	;; delete registry for run as admin always
	DeleteRegValue "${PRODUCT_UNINST_ROOT_KEY}" "${REGKEY_RUN_AS_ADMIN}" "$INSTDIR\L2Divine.exe"
	SetAutoClose true
SectionEnd
