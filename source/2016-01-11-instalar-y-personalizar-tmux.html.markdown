---
title: Instalar y personalizar tmux
date: 2016-01-11 00:49 UTC
tags: tmux, linux
---

Tmux es una terminal multiplexora del sistema BSD. Permite tener diferentes sesiones donde se ejecuten aplicaciones en una terminal o en una shell. Permite dividir la consola de manera horizontal o vertical.

## Instalar Tmux

```
sudo pacman -S tmux
```

Sí ejecutamos tmux:


```
tmux
```

O iniciar **tmux** con nombre de la sesión:

```
tmux new -s prueba
```

Se vera algo así:

[![tmux-normal](./images/tmux/tmux-normal.png)](./images/tmux/tmux-normal.png)


## Personalizar Tmux


### Instalar tmux-powerline


```
mkdir ~/.tmux-powerline && cd ~/.tmux-powerline
git clone https://github.com/erikw/tmux-powerline.git
```

### Instalar fonts para powerline


```
cd /tmp
git clone git@github.com:powerline/fonts.git
cd fonts && ./install.sh
```

### Crear tema "lesm" para powerline

Agregar el contenido de esté archivo

[Tema para powerline](https://gist.github.com/lesm/c12159b878c119ec7c84)

```
cd ~/.tmux-powerline/tmux-powerline/themes/
vim lesm.sh
```


### Cambiar el tema asignado por "default" por "lesm"


Editar el archivo:

```
vim ~/.tmux-powerline/tmux-powerline/config/defaults.sh
```


Antes:

[![default-antes](./images/tmux/default-antes.png)](./images/tmux/default-antes.png)

Después:

[![default-despues](./images/tmux/default-despues.png)](./images/tmux/default-despues.png)


## Archivo de configuración de tmux

Ahora toca crear el siguiente archivo **~/.tmux.conf**  y agregar las siguientes líneas:

```
#### Barra inferior Powerline
set-option -g status on
set-option -g status-interval 2
set-option -g status-utf8 on
set-option -g status-justify 'left'
#set-option -g status-fg colour231
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

## Mi configuración de tmux,

[Mi archivo ~/.tmux.conf](https://gist.github.com/lesm/55eff8569a58f7623cf2)


### Iniciar tmux

```
tmux new -s version-personalizada
```

Ahora tmux se vera de está manera:

[![tmux-personalizado](./images/tmux/tmux-personalizado.png)](./images/tmux/tmux-personalizado.png)

## Iniciar tmux automáticamente


Agregar la siguiente línea, al final de **~/.zshrc** o **~/.bashrc** dependiendo de que uses

```
[[ $- != *i*  ]] && return [[ $TERM != screen*  ]] && exec tmux -2
```

