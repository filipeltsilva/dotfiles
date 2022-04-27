swapfile() {
  if [[ ! -f /swapfile ]]
  then
    sudo touch /swapfile
    sudo fallocate -l "$1" /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile

    echo ""
    echo "Add the line below in /etc/fstab so the swap file will be mounted at every system start"
    echo "/swapfile swap swap sw 0 0"
  else
    echo "The swap file already exists in this system. Nothing to do!"
  fi
}

yt() {
  if echo "$1" | grep -q playlist
  then
    youtube-dl "$1" -f best -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --youtube-skip-dash-manifest --default-search ytsearch
  else
    youtube-dl "$1" -f best -o '%(title)s.%(ext)s' --youtube-skip-dash-manifest --default-search ytsearch
  fi
}

ytinfo() {
  youtube-dl -F "$1" --default-search ytsearch
}

256() {
  for i in {0..255}
  do
    printf "\e[48;5;${i}m%3d " "${i}"
  done

  echo -e "\e[0m"
}

mkd() {
  mkdir -p "$1" && cd "$1" || exit
}

gclone() {
  git clone https://github.com/"$1" "$2"
}
