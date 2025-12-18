# Read Me

[![AUR](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/lgeurts/dwm-dotfiles/blob/master/LICENSE.md) [![Project Status: Active](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)

This repository comprises an assortment of scripts and configuration files built upon [Arch Linux](archlinux.org) and [suckless](suckless.org) dwm. Its objective is to deliver a stable, clutter-free, and ergonomic desktop environment tailored for advanced users.

All updates and enhancements aim to avoid breaking changes, aligning with the rolling-release nature of the underlying system, while requiring minimal maintenance.

### My all in one patched suckless tools (dwm, dmenu, st, slstatus, slock)
![Clean desktop](https://github.com/lgeurts/dwm-dotfiles/blob/main/assets/17-12-2015-02.png)

#### What I use

- **Feh** as wallpaper manager
- **dunst** as notification manager (includes config)
- **flameshot** for screenshots
- **brightnessctl** and **pamixer** for volume and brightness control
- **playerctl** for multimedia control
- **[Ubuntu Mono Nerd Font](https://archlinux.org/packages/community/any/ttf-ubuntumono-nerd/)** & **[JetBrainsMono Font](https://archlinux.org/packages/community/any/ttf-jetbrains-mono/)** - as fonts
- **picom** - as compositor (i use the [pijulius](https://github.com/pijulius) fork)

#### Pre-requisites:

1.   Installed [Archinstall](https://wiki.archlinux.org/title/Archinstall) baseline running a copy of the [ISO](https://archlinux.org/download/) network configuration 
2.   At least 8 GiB of free space on the system partition
3.   A user:

     ```
     useradd -m username
     passwd username
     usermod -aG wheel,video,audio,storage username
     ```

     In order to have root privileges we need sudo. Edit /etc/sudoers with nano or vim by uncommenting this line:

     ```
     ## Uncomment to allow members of group wheel to execute any command
        '# %wheel ALL=(ALL) ALL'
     ```   
 
#### Installation:

1.  Install the `git` package:

    ```
    sudo pacman -Syu git
    ```

2.  Copy this repository to your home folder:

    ```
    cd $HOME
    sudo git clone https://github.com/lgeurts/dwm-dotfiles.git
    ```

3.  Make `script.sh` executable and run it:

    ```
    sudo chmod +x script.sh
    ./script.sh
    ```

4.  (Optional) By default, this script doesn't check for `.desktop` files in the `xsessions` folder. If you use other display managers like sddm, add a `dwm.desktop` file (see below) in the `xsessions` folder:

    ```
    [Desktop Entry]
    Name=DWM
    Comment=Dynamic Window Manager
    Exec=dwm
    Type=Application
    ```

#### Feh directory (for backgrounds):

```
/home/{user_name}/Pictures/Wallpapers
```

#### DWM Patches:

- ***alwayscenter***
- ***attachbottom***
- ***autostart***
- ***pertag***
- ***preserveonrestart***
- ***restartsig***
- ***rotatestack***
- ***stairs***
- ***status2d***
- ***status2d-systray***
- ***titlecolor***
- ***vanitygaps***
- ***winicon***

#### DMenu Patches:

- ***border***
- ***caseinsensitive***
- ***center***
- ***fuzzyhighlight***
- ***grid***
- ***lineheight***

#### St Patches:

- ***alpha***
- ***font2***
- ***glyph-wide-support***
- ***scrollback-mouse***

#### Slock Patches:

- ***capscolor***
- ***message***

#### Credits:

Huge thanks to my colleagues at Flouze. I can't even count the number of times they have helped me when I was lost (read clueless).
