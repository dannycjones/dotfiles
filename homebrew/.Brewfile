require 'socket'

hostname = Socket.gethostname
personal_laptop = hostname == "coniston"
work_laptop = !personal_laptop

tap "homebrew/bundle"
tap "homebrew/services" if personal_laptop

tap "dannycjones/tap"
tap "creativeprojects/tap" if personal_laptop # resticprofile

tap "hashicorp/tap"

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

brew "atuin"
brew "ansible" if personal_laptop
brew "ansible-lint" if personal_laptop
brew "asdf"
brew "awscli"
cask "backblaze" if personal_laptop
brew "boxes"
brew "cmake" if work_laptop
brew "cmatrix"
brew "coreutils"
cask "datagrip" if work_laptop
brew "direnv"
cask "discord" if personal_laptop
brew "eksctl" if work_laptop
brew "figlet"
brew "ffmpeg"
brew "git"
brew "git-delta"
brew "gh"
brew "gnupg"
brew "golang"
brew "helm"
brew "hugo" if personal_laptop
brew "htop"
cask "intellij-idea" if work_laptop
brew "iperf3"
brew "jq"
brew "kubectl"
brew "lolcat"
brew "make"
cask "minecraft" if personal_laptop
brew "ncdu"
cask "nordvpn" if personal_laptop
brew "openssh"
brew "parquet-cli" if work_laptop
brew "pkg-config"
brew "python3"
brew "restic" if personal_laptop
cask "rustrover" if work_laptop
brew "creativeprojects/tap/resticprofile" if personal_laptop
brew "ripgrep"
brew "rustup"
cask "signal" if personal_laptop
brew "ssh-copy-id"
brew "stress"
brew "speedtest-cli"
cask "spotify"
cask "steam"
brew "syncthing", restart_service: true if personal_laptop
cask "tailscale-app" if personal_laptop
brew "hashicorp/tap/terraform"
brew "tmux"
cask "tor-browser" if personal_laptop
cask "transmission" if personal_laptop
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
brew "yq"
brew "rsync"
brew "zola" if personal_laptop
brew "colima" # VM for docker
brew "docker"
brew "docker-buildx"
brew "docker-compose"
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

