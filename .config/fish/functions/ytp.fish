function ytp --description "Download YouTube Playlists"
  yt-dlp $argv[1] -f "bv*+ba" -o "%(playlist_title)s/%(playlist_index)02d - %(title)s"
end

