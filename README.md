# Read Me

[![AUR](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/lgeurts/dwm-dotfiles/blob/master/LICENSE.md) [![Project Status: Active](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)

This repository comprises an assortment of scripts and configuration files built upon [Arch Linux](https://archlinux.org) & [Suckless](https://suckless.org). Its objective is to **deliver** a **stable**, **clutter-free**, and **ergonomic desktop** environment tailored for advanced users.

All updates and enhancements aim to avoid big breaking changes, thus fully aligning with the rolling-release nature of the underlying operating system, while requiring less maintenance.

### My all in one patched suckless tools (dwm, dmenu, st, slstatus, slock)

![clean desktop](https://github.com/lgeurts/dwm-dotfiles/blob/main/assets/Captures/17-12-2025-01.png)
![Busy desktop](https://github.com/lgeurts/dwm-dotfiles/blob/main/assets/Captures/19-12-2025-04.png)

#### What I use

- **Feh** as wallpaper manager
- **dunst** as notification manager (includes config)
- **flameshot** for screenshots
- **brightnessctl** and **pamixer** for volume and brightness control
- **playerctl** for multimedia control
- **[Ubuntu Mono Nerd Font](https://archlinux.org/packages/extra/any/ttf-ubuntu-mono-nerd/)** & **[JetBrainsMono Font](https://archlinux.org/packages/extra/any/ttf-jetbrains-mono/)** - as fonts
- **picom** - as compositor (I pulled the [pijulius](https://github.com/pijulius) fork)

#### Pre-requisites:

1.   Installed [Archinstall](https://wiki.archlinux.org/title/Archinstall) baseline running a copy of the [ISO](https://archlinux.org/download/) network configuration 
2.   At least 8 GiB of free space on the system partition
3.   A user:

     ```
     useradd -m username
     passwd username
     usermod -aG wheel,video,audio,storage username
     ```

     In order to have root privileges our user needs sudo. First download vi: 

     ```     
     sudo pacman -S vi
     ```
     
     Now edit /etc/sudoers with visudo to uncomment this line:     
    
     ```
     ## Uncomment to allow members of group wheel to execute any command
        '# %wheel ALL=(ALL) ALL with password'
     ```   
 
#### Installation:

1.  Install the `git` package:

    ```
    sudo pacman -Syu git
    ```

2. Install the yay aur helper (provides a seamless interface for working with official repository packages and AUR packages):

   ```
   git clone https://aur.archlinux.org/yay-git.git
   cd yay-git
   makepkg -si
   ```

3.  Copy this repository to your home folder:

    ```
    cd $HOME
    sudo git clone https://github.com/lgeurts/dwm-dotfiles.git
    ```

4.  Make `script.sh` executable and run it:

    ```
    sudo chmod +x script.sh
    ./script.sh
    ```

5.  (***Optional***) By default, `script.sh` does not check for `.desktop` files in the `xsessions` folder. When using another display manager, like **sddm**, place a `dwm.desktop` file (see below) in the `xsessions` folder:

    ```
    [Desktop Entry]
    Name=DWM
    Comment=Dynamic Window Manager
    Exec=dwm
    Type=Application
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

#### Further configuration:

Edit .config/suckless/dwm/config.h and change the apps according your needs. For example, I have helium-browser-bin qutebrowser obtanium lazy-vim, neomutt, signal etc. installed. Replace with your preferred apps, test, and after copy config.h to config.def.h.

PS. I also added .bashrc and .bash_aliases files. Check them out at your leisure.

#### Credits:

Huge thanks to my colleagues at Flouze. I can't even count the number of times they have helped me when I was messing up. <3
