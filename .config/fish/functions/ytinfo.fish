function ytinfo --description "Get YouTube videos info"
  youtube-dl -F $argv[1] --default-search ytsearch
end
