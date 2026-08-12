; Startup + icloud-photos:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Photos" '"$INSTDIR\iCloud Photos.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-photos" "" "URL:iCloud Photos"
  WriteRegStr HKCU "Software\Classes\icloud-photos" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-photos\shell\open\command" "" '"$INSTDIR\iCloud Photos.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Photos"
  DeleteRegKey HKCU "Software\Classes\icloud-photos"
!macroend
