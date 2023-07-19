function yt --description "Download YouTube Videos"
  yt-dlp $argv[1] -f "bv*+ba" -o "%(title)s"
end
