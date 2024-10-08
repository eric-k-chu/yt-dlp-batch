@echo off
set /p "url=Enter the URL of the playlist or channel: "

echo Starting download...

yt-dlp %url% -S res:720 --write-info-json -o "%%(playlist)s/%%(id)s" 

pause