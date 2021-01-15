## :snowflake: :hibiscus: Aether Desktop

<img alt="Visits" src="https://badges.pufler.dev/visits/ilham25/dotfiles-aether?style=flat-square&label=&color=success&logo=GitHub&logoColor=white&labelColor=373e4d"/>

## :art: Screenshot

![SS](/Other/dot.gif)

## :snowflake: My Setup :snowflake:

- **WM :** i3-gaps
- **Terminal :** urxvt
- **Shell :** zsh
- **Panel :** tint2
- **Notification :** dunst
- **App launcher :** rofi
- **File manager :** thunar

## :wrench: Installation

### :computer: **Arch Based (Dependencies)**

> :exclamation: For AUR helper, im using **yay**

> :page_with_curl: **i3 Windows Manager**

```bash
sudo pacman -S i3-gaps
```

> :sound: **Audio**

```bash
sudo pacman -S alsa-utils pulseaudio
```

> :high_brightness: **Brightness**

```bash
yay -S brightnessctl
```

> :chart_with_upwards_trend: **Network Monitor & RAM Usage**

```bash
yay -S psuinfo
```

> :signal_strength: **Wireless Tools**

```bash
sudo pacman -S wireless_tools
```

> :hammer: **Other utility (panel, notification, terminal, file manager, etc)**

```bash
yay -S dunst tint2 gsimplecal rofi feh lxappearance qt5ct qt5-styleplugins lxsession xautolock rxvt-unicode-patched xclip scrot thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman tumbler w3m geany nano vim viewnior pavucontrol parcellite neofetch htop picom-ibhagwan-git gtk2-perl xfce4-power-manager zsh zsh-completions imagemagick playerctl networkmanager-dmenu
```

> :diamonds: **oh-my-zsh & plugins**

- ```bash
  chsh -s /usr/bin/zsh # Change default shell to zsh for current user
  ```

- ```bash
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  ```

- ```bash
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ```

- ```bash
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  ```

## :wrench: Dotfiles Install

> :file_folder: **General Config**

- ```bash
  git clone https://github.com/ilham25/dotfiles-aether
  ```

- ```bash
  cd dotfiles/ && cp -r {.*,*} ~/
  ```

- ```bash
  rm -r ~/{README.md,LICENSE,.git} # Delete unnecessary files
  ```

> :nut_and_bolt: **Icons**

- ```bash
  cd ~/.icons/
  ```
- ```bash
  tar -Jxvf oomox-aesthetic-light.tar.xz && tar -Jxvf oomox-aesthetic-dark.tar.xz
  ```

- ```bash
  sudo cp -r {oomox-aesthetic-light,oomox-aesthetic-dark} /usr/share/icons/
  ```

- ```bash
  rm -r ~/.icons/{oomox-aesthetic-light,oomox-aesthetic-dark,*.tar.xz} # Delete unnecessary files
  ```

> :bulb: **Refresh font cache**

```bash
fc-cache -rv
```

## :black_square_button: Keybinds

| Key                                                                         | Action                                  |
| --------------------------------------------------------------------------- | --------------------------------------- |
| <kbd>Mod + C                                                                | Close Windows                           |
| <kbd>Mod + Z (release) + :arrow_up:/:arrow_down:/:arrow_left:/:arrow_right: | Resize Windows - Tiling                 |
| <kbd>Mod + Shift + :arrow_up:/:arrow_down:/:arrow_left:/:arrow_right:       | Move Windows - Tiling                   |
| <kbd>Mod + Shift + Space                                                    | Switch between tiling/floating          |
| <kbd>Mod + Left Click (hold)                                                | Move Windows - Floating                 |
| <kbd>Mod + Right Click (hold)                                               | Resize Windows - Floating               |
| <kbd>Mod + 1/2/3/4/5/6/7/8/9/0                                              | Change Workspace                        |
| <kbd>Mod + Shift + 1/2/3/4/5/6/7/8/9/0                                      | Move active windows to workspace number |
| <kbd>Mod + E                                                                | Open file manager                       |
| <kbd>Mod + R                                                                | App launcher                            |
| <kbd>Mod + L                                                                | Lock Screen                             |
| <kbd>Mod + Return                                                           | Open terminal                           |
| <kbd>Mod + Shift + E                                                        | Power Menu                              |
| <kbd>Mod + Shift + R                                                        | WM Restart                              |
| <kbd>Mod + Print                                                            | Screenshot Menu                         |
| <kbd>Mod + H                                                                | Change Tiling direction (Horizontal)    |
| <kbd>Mod + J                                                                | Change Tiling Direction (Vertical)      |

## :heart: Credits

- [i3wm Wiki](https://i3wm.org/docs/userguide.html)
- [@owl4ce](https://github.com/owl4ce/)
- [@nwg-piotr - psuinfo](https://github.com/nwg-piotr)
- [ZorinOS theme](https://github.com/ZorinOS/zorin-desktop-themes)
- [Aesthetic Light Wallpaper](https://pinterest.com/pin/create/button/?media=https://www.pixelstalk.net/wp-content/uploads/2016/12/Anime-Cherry-Blossom-Background-HD-620x349.jpg&url=https://www.pixelstalk.net/download-free-anime-cherry-blossom-background/&is_video=false&description=Anime%20Cherry%20Blossom%20Background%20HD.)
- [Aesthetic Dark Wallpaper](http://eskipaper.com/images/winter-freeway-wallpaper-1.jpg)
