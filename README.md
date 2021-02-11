## :snowflake: :hibiscus: Aether Desktop

![LOGO](/Other/logo-light.png)

<img alt="Visits" src="https://badges.pufler.dev/visits/ilham25/dotfiles-aether?style=flat-square&label=&color=success&logo=GitHub&logoColor=white&labelColor=373e4d"/>
<img alt="Repo Size" src="https://github-size-badge.herokuapp.com/ilham25/dotfiles-aether.svg"/>

## :art: Screenshot

![screenshot](/Other/aether-light.png)
![screenshot](/Other/aether-dark.png)
![rightbtn](/Other/right-btn.png)

## :snowflake: My Setup :snowflake:

- **WM :** i3-gaps
- **Terminal :** urxvt
- **Shell :** zsh
- **Panel :** tint2
- **Notification :** dunst
- **App launcher :** rofi
- **File manager :** thunar

## :triangular_flag_on_post: Changelog

- New panel design
- New wallpaper
- New file manager sidebar
- Power and Screenshot menu location change
- Keybinds list added
- GTK live reload

## :wrench: Installation

![DEBIAN](/Other/debian-based.png)

- ### :computer: **Debian Based**

  > **i3-Gaps Window Manager**

  ```bash
  sudo add-apt-repository ppa:kgilmer/speed-ricer
  ```

  ```bash
  sudo apt-get update
  ```

  ```bash
  sudo apt-get install i3-gaps-wm i3-gaps-session
  ```

  > **Other Dependencies**

  ```bash
  sudo apt install feh git rsync python psmisc wireless-tools alsa-utils brightnessctl nitrogen dunst tint2 gsimplecal rofi lxappearance qt5ct qt5-style-plugins lxpolkit xautolock rxvt-unicode xclip scrot jq thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman ffmpegthumbnailer tumbler w3m w3m-img geany viewnior mpv mpd mpc ncmpcpp pavucontrol parcellite neofetch htop imagemagick ffmpeg playerctl xsettingsd
  ```

  > :diamonds: **oh-my-zsh & plugins**

  - ```bash
    sudo apt install zsh
    ```

  - ```bash
    chsh -s `which zsh` # Change default shell to zsh for current user
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

  - [zsh-completions](https://software.opensuse.org/download.html?project=shells%3Azsh-users%3Azsh-completions&package=zsh-completions)

  > **Picom**

  - ```bash
    sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libpcre3-dev libx11-xcb-dev ninja-build meson
    ```
  - ```bash
    git clone https://github.com/yshui/picom.git && cd picom/
    ```
  - ```bash
    git submodule update --init --recursive
    ```
  - ```bash
    meson --buildtype=release . build
    ```
  - ```bash
    ninja -C build
    ```
  - ```bash
    ninja -C build install
    ```

  > **psuinfo - Network & CPU Monitor, RAM Usage**

  - ```bash
    git clone https://github.com/nwg-piotr/psuinfo.git && cd psuinfo/
    ```
  - ```bash
    sudo cp -r {psuinfo,icons} /usr/bin
    ```

![ARCH](/Other/arch-based.png)

- ### :computer: **Arch Based**

  > :exclamation: For AUR helper, im using **yay**

  > :page_with_curl: **i3 Windows Manager**

  ```bash
  sudo pacman -S i3-gaps
  ```

  > :sound: **Audio**

  ```bash
  sudo pacman -S alsa-utils pulseaudio pulseaudio-alsa
  ```

  > :high_brightness: **Brightness**

  ```bash
  yay -S brightnessctl
  ```

  > :chart_with_upwards_trend: **Network & CPU Monitor, RAM Usage**

  ```bash
  yay -S psuinfo
  ```

  > :signal_strength: **Wireless Tools**

  ```bash
  sudo pacman -S wireless_tools
  ```

  > :hammer: **Other utility (panel, notification, terminal, file manager, etc)**

  ```bash
  yay -S dunst tint2 gsimplecal rofi feh lxappearance qt5ct qt5-styleplugins lxsession xautolock rxvt-unicode-patched xclip scrot thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman tumbler jq w3m geany nano vim viewnior pavucontrol parcellite neofetch htop picom-git gtk2-perl xfce4-power-manager zsh zsh-completions imagemagick playerctl networkmanager-dmenu xsettingsd
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
  cd dotfiles-aether/ && cp -r {.*,*} ~/
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

## :gear: User Configuration

- **:warning: WiFi connected but panel icon and title doesn't say connected**

  First, check the name of your wireless card

  ```bash
  ip a
  ```

  There you should see something started with **wl** like **wlo1, wlp3s0**. Open panel network executor using geany or another text editor.

  ```bash
  geany ~/.config/tint2/executor/network
  ```

  ```cfg
  ...
  6 intwifi="wlo1" # Change this to your wireless card interface name
  7 intether="enp4s0" # Also for your ethernet
  ```

  Change **intwifi** value to your wireless card interface, mine is **wlo1**, this also worked to your ethernet, but use **intether**.
  If you are using the right name, then in the panel you should see your wifi SSID and the icon doesn't disable anymore

- **:city_sunset: Universal Walpaper Config**

  If you dont like my default wallpaper or want to change it, follow this steps :

  > **Run this command to open my theme config using geany**

  ```bash
  geany ~/.config/i3/startup
  ```

  > **Insert # in the beginning of line 9 and 23**

  ```cfg
  ...
  9 #feh --bg-fill ~/.wallpaper/aes-light-2.png
  ...
  21 #feh --bg-fill ~/.wallpaper/aes-dark-2.png
  ```

  > **Insert this config to line 33**

  ```cfg
  ...
  29 ~/.fehbg
  ```

  > **Save**

  > **Next, change your wallpaper using this command**

  ```bash
  feh --bg-fill PATH_TO_WALLPAPER
  ```

  Example

  ```bash
  feh --bg-fill ~/Pictures/image.png
  ```

  and that's basically done. Thanks to **[@hikanna](https://gitlab.com/hikanna)** for this advice.

## :black_square_button: Keybinds

| Key                                                                   | Action                                  |
| --------------------------------------------------------------------- | --------------------------------------- |
| <kbd>Mod + K                                                          | List of all available keybinds          |
| <kbd>Mod + C                                                          | Close Windows                           |
| <kbd>Mod + Ctrl + :arrow_up:/:arrow_down:/:arrow_left:/:arrow_right:  | Resize Windows - Tiling                 |
| <kbd>Mod + Shift + :arrow_up:/:arrow_down:/:arrow_left:/:arrow_right: | Move Windows - Tiling                   |
| <kbd>Mod + Shift + Space                                              | Switch between tiling/floating          |
| <kbd>Mod + Left Click (hold)                                          | Move Windows - Floating                 |
| <kbd>Mod + Right Click (hold)                                         | Resize Windows - Floating               |
| <kbd>Mod + 1/2/3/4/5/6/7/8/9/0                                        | Change Workspace                        |
| <kbd>Mod + Shift + 1/2/3/4/5/6/7/8/9/0                                | Move active windows to workspace number |
| <kbd>Mod + E                                                          | Open file manager                       |
| <kbd>Mod + R                                                          | App launcher                            |
| <kbd>Mod + L                                                          | Lock Screen                             |
| <kbd>Mod + Return                                                     | Open terminal                           |
| <kbd>Mod + Shift + E                                                  | Power Menu                              |
| <kbd>Mod + Shift + R                                                  | WM Restart                              |
| <kbd>Mod + Print                                                      | Screenshot Menu                         |
| <kbd>Mod + H                                                          | Change Tiling direction (Horizontal)    |
| <kbd>Mod + J                                                          | Change Tiling Direction (Vertical)      |

## :heart: Credits

- [i3wm Wiki](https://i3wm.org/docs/userguide.html)
- [@owl4ce](https://github.com/owl4ce/)
- [@nwg-piotr - psuinfo](https://github.com/nwg-piotr)
- [@boreycutts - i3-gaps](https://gist.github.com/boreycutts)
- [@duangdeong - Dotfiles Tester](https://github.com/duangdeong)
- [@hikanna - Tester](https://gitlab.com/hikanna)
- [ZorinOS theme](https://github.com/ZorinOS/zorin-desktop-themes)
- [Aether Light Wallpaper v1](https://pinterest.com/pin/create/button/?media=https://www.pixelstalk.net/wp-content/uploads/2016/12/Anime-Cherry-Blossom-Background-HD-620x349.jpg&url=https://www.pixelstalk.net/download-free-anime-cherry-blossom-background/&is_video=false&description=Anime%20Cherry%20Blossom%20Background%20HD.)
- [Aether Dark Wallpaper v1](http://eskipaper.com/images/winter-freeway-wallpaper-1.jpg)
- [Aether Light Wallpaper v2](https://wallpaperaccess.com/download/anime-cherry-blossom-85646)
- [Aether Dark Wallpaper v2](https://wallpaperaccess.com/full/44207.jpg)
