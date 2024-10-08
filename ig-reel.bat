@echo off

set /p "url=Enter the URL of the Instagram reel: "

set /p "res=Enter the browser you are logged in to Instagram (chrome/firefox): "

echo Downloading Instagram reel from: %url%

yt-dlp %url% -S res:720 --write-info-json -o "%%(id)s" --cookies-from-browser %browser%

pause