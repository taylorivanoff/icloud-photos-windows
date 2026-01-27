!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Photos" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-photos" "" "URL:iCloud Photos"
  WriteRegStr HKCU "Software\Classes\icloud-photos" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-photos\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Photos"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-photos"
!macroend
