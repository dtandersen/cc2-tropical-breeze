set SOURCE_AUDIO=source\audio
set CONTENT_AUDIO=content\audio
set LOWLOW="volume=-25dB"
set LOW="volume=-22dB"
set MEDLOW="volume=-17dB"
set MED="volume=-14dB"
set MEDHIGH="volume=-11dB"
set NORMAL="volume=1"
set SILENT="volume=0"

rmdir /s /q content
mkdir content\audio

REM "ambient" sounds
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_ocean_loop.wav -filter:a %MED% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_ocean_loop.ogg
ffmpeg -y -i %SOURCE_AUDIO%\wind_outdoor_low.wav -filter:a %MEDLOW% -acodec libvorbis %CONTENT_AUDIO%\wind_outdoor_low.ogg
ffmpeg -y -i %SOURCE_AUDIO%\wind_outdoor_medium.wav -filter:a %MEDLOW% -acodec libvorbis %CONTENT_AUDIO%\wind_outdoor_medium.ogg
ffmpeg -y -i %SOURCE_AUDIO%\wind_outdoor_high.wav -filter:a %MEDLOW% -acodec libvorbis %CONTENT_AUDIO%\wind_outdoor_high.ogg
