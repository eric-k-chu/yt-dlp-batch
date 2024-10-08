@echo off

set /p "url=Enter the URL of the Youtube playlist or channel: "

echo Downloading Youtube playlist or channel from: %url%

yt-dlp %url% -S res:720 --write-info-json -o "%%(playlist)s/%%(id)s" --ffmpeg-location "./ffmpeg/bin/ffmpeg.exe"

pause