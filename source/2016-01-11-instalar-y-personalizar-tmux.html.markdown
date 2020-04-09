---
title: Instalar y personalizar tmux
date: 2016-01-11 00:49 UTC
tags: tmux, linux
---

Tmux es una terminal multiplexora del sistema BSD. Permite tener diferentes
sesiones y cambiar fácilmente entre varios programas en una terminal.

#### Instalar Tmux
Se usará el manejador de paquetes `pacman`, este va a depender del
sistema que uses.

``` shell
sudo pacman -S tmux
```
Una vez terminada la instalación, se procede a iniciar `tmux`

``` shell
tmux new -s prueba
```

La opción `-s` es para asignarle un nombre a la sesión. Se vera algo así:

[![tmux-normal-horizontal-img](./images/tmux/tmux-normal.png)](./images/tmux/tmux-normal.png)


#### Personalizar Tmux

Para ello se hace uso de **tmux-powerline**, se crea el directorio donde se
clonará el proyecto.

``` shell
mkdir ~/.tmux-powerline && cd ~/.tmux-powerline
git clone https://github.com/erikw/tmux-powerline.git
```

También se necesita instalar las **fuentes** que requiere **tmux-powerline**, se
debe clonar el proyecto y ejecutar el archivo `install.sh` para su instalación
se usará el directorio `/opt/fonst` se puede usar otro directorio.

``` shell
cd /opt/fonts
git clone https://github.com/powerline/fonts.git
cd fonts && ./install.sh
```

**tmux-powerline** viene con varios temas los cuales están bajo el directorio
`~/.tmux-powerline/tmux-powerline/themes/`

Si también quieres crear tu propio tema, solo tienes que agregarlo
bajo ese directorio, por ejemplo yo creé el tema [lesm.sh](https://gist.github.com/lesm/c12159b878c119ec7c84)

Ahora solo toca decirle a **tmux-powerline** que use el tema correcto, eso se hace
editando el archivo `~/.tmux-powerline/tmux-powerline/config/defaults.sh`

Se edita la línea:

``` shell
export TMUX_POWERLINE_THEME_DEFAULT="default"
```

El tema por defecto se llama `default` hay que cambiarlo por el nuevo tema en
este caso `lesm`.

``` shell
export TMUX_POWERLINE_THEME_DEFAULT="lesm"
```

El último paso es crear el archivo de configuración para `tmux`

``` shell
vim ~/.tmux.conf
```

Agregar las siguientes líneas:

``` vim
# Barra inferior Powerline
set-option -g status on
set-option -g status-interval 2
set-option -g status-utf8 on
set-option -g status-justify 'left'
# set-option -g status-fg colour231
set-option -g status-bg colour31
set-option -g status-right-length 75
set-option -g status-right "#(~/.tmux-powerline/tmux-powerline/powerline.sh right)"
set-option -g status-left-length 30
set -g status-left '#[fg=colour234,bg=colour31] #[fg=colour16,bg=colour254,bold]
Sesión:  Luis-Silva  #[fg=colour254,bg=colour234,nobold] '
set -g window-status-current-format '#[fg=colour234,bg=colour31] #[fg=colour117,bg=colour31] #I
#[fg=colour231,bold] #W#[fg=colour231,bold] #(uptime | cut -f 4-5 -d " " | cut -f 1 -d ",")
hrs#[fg=colour57,bold] «\(¬_¬)/»'
```

Mi archivo de configuración para [tmux](https://gist.github.com/lesm/55eff8569a58f7623cf2)


#### Iniciar tmux

``` shell
tmux new -s version-personalizada
```

Ahora tmux se mostrará de la siguiente manera:

[![tmux-personalizado-horizontal-img](./images/tmux/tmux-personalizado.png)](./images/tmux/tmux-personalizado.png)
