function yt --description "Download YouTube videos and playlists"
  if echo "$1" | grep -q playlist
    youtube-dl $argv[1] -f best -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" --youtube-skip-dash-manifest --default-search ytsearch
  else
    youtube-dl $argv[1] -f best -o "%(title)s.%(ext)s" --youtube-skip-dash-manifest --default-search ytsearch
  end
end
