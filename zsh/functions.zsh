function brewup() {
  echo "Updating Brew and Brew Packages"
  brew update
  brew upgrade --cleanup `brew outdated`

  rm -rf $(brew --cache)
  brew cask update
  brew cask reinstall $(brew cask outdated)

  echo "Deleting unecessary files"
  brew cleanup -n
  brew cask cleanup -n
}

function yt() {
  if [[ `echo $1 | grep playlist` ]]; then
    youtube-dl $1 -f $2 -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --youtube-skip-dash-manifest
  else
    youtube-dl $1 -f $2 -o '%(title)s.%(ext)s' --youtube-skip-dash-manifest
  fi
}

function ytinfo() {
  youtube-dl -F $1
}
