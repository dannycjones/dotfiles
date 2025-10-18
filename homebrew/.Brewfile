require 'socket'

hostname = Socket.gethostname
personal_laptop = hostname == "coniston"
work_laptop = !personal_laptop

tap "homebrew/bundle"
tap "homebrew/services" if personal_laptop

tap "dannycjones/tap"
tap "creativeprojects/tap" if personal_laptop # resticprofile

# Core Packages (wanted ASAP)

cask "font-meslo-lg-nerd-font"
if personal_laptop
  cask "firefox"
  cask "google-chrome"
  cask "secretive"
end
brew "fzf"
cask "iterm2"
brew "starship"
brew "stow"
brew "tree"
brew "wget"
brew "zsh"
brew "zsh-autosuggestions"

if personal_laptop
  brew "mas"
  mas "Amphetamine", id: 937984704
  mas "1Password", id: 443987910
  mas "Bitwarden", id: 1352778147 # instead of cask, signing allows more features
end

# Misc packages

brew "ansible" if personal_laptop
brew "ansible-lint" if personal_laptop
brew "asdf"
brew "awscli"
cask "backblaze" if personal_laptop
brew "boxes"
brew "cmatrix"
brew "coreutils"
brew "direnv"
cask "discord" if personal_laptop
brew "figlet"
brew "ffmpeg"
brew "git"
brew "gh"
brew "git-delta"
brew "gnupg"
brew "helm"
brew "hugo" if personal_laptop
brew "htop"
brew "iperf3"
brew "jq"
brew "kubectl"
brew "make"
cask "minecraft" if personal_laptop
brew "ncdu"
cask "nordvpn" if personal_laptop
brew "openssh"
brew "pkg-config"
brew "python3"
brew "restic" if personal_laptop
brew "creativeprojects/tap/resticprofile" if personal_laptop
brew "rustup"
cask "signal" if personal_laptop
brew "ssh-copy-id"
brew "stress"
brew "speedtest-cli"
cask "spotify"
cask "steam"
brew "syncthing", restart_service: true if personal_laptop
cask "tailscale-app" if personal_laptop
brew "terraform"
brew "tmux"
cask "tor-browser" if personal_laptop
cask "transmission"
brew "uv"
cask "visual-studio-code"
cask "vlc"
brew "watch"
cask "webtorrent" if personal_laptop
cask "whatsapp" if personal_laptop
brew "yamllint"
brew "yt-dlp" if personal_laptop
brew "yubico-piv-tool"
brew "ykman"
brew "rsync"
brew "colima" # VM for docker
brew "docker"
brew "docker-buildx"
brew "docker-compose" if personal_laptop
brew "cdktf" if personal_laptop
brew "iproute2mac"
cask "zoom"

if personal_laptop
  cask "android-studio"
  cask "bambu-studio"
  cask "inkscape"
  cask "inkstitch"
  cask "insta360-studio"
  cask "openmtp"
end
