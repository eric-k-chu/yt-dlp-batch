@echo off

set /p "url=Enter the URL of the Instagram reel: "

set "browser=chrome"

set /p "Which browser are you logged into Instagram on (chrome/firefox) default is chrome: "

echo Downloading Instagram reel from: %url%

yt-dlp %url% -P "output" -S res:720 --write-info-json -o "%%(id)s" --cookies-from-browser %browser% --ffmpeg-location ".\ffmpeg\bin"

pause