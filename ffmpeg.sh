# Installing basic dependencies automatically for the FFmpeg with all package
#
# brew tap homebrew-ffmpeg/ffmpeg
#
brew upgrade homebrew-ffmpeg/ffmpeg/ffmpeg $(brew options homebrew-ffmpeg/ffmpeg/ffmpeg | grep -vE '\s' | grep -- '--with-' | grep -vi chromaprint | grep -vi game-music-emu | tr '\n' ' ')
