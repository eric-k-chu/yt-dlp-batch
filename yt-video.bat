@echo off

set /p "url=Enter the URL of the YouTube video: "

echo Downloading YouTube video from: %url%

yt-dlp %url% -S res:720 --write-info-json -o "%%(id)s" --ffmpeg-location ".\ffmpeg\bin"

pause