@echo off

set /p "url=Enter the URL of the Instagram reel: "

set /p "res=Which browser are you logged into Instagram on (chrome/firefox): "

echo Downloading Instagram reel from: %url%

yt-dlp %url% -S res:720 --write-info-json -o "%%(id)s" --cookies-from-browser %browser% --ffmpeg-location "./ffmpeg/bin/ffmpeg.exe"

pause