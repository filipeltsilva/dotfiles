function ytinfo --description "Get YouTube videos info"
  yt-dlp -F $argv[1]
end
