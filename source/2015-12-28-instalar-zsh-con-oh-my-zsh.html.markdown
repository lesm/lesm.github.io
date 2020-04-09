---
title: Instalar zsh con oh-my-zsh
date: 2015-12-28 07:05 UTC
tags: zsh,chakra
---

Esta semana actualice mi sistema a **Chakra Fermi**, con muchas ganas de
probar lo nuevo de **KDE con plasma 5**.

Cada fin de semestre realizo una instalación limpia, y no me había decidido
a crear unos posts para tener a donde recurrir la próxima vez.

También con la idea, que estos posts puedan ser de ayuda para alguien más.

## Instalar zsh

En **Chakra** el manejador de paquetes es `pacman` el cual se usará para instalar
`zsh`

``` shell
sudo pacman -S zsh
```

Para usar la `shell` `zsh` ejecutamos:

``` shell
zsh
```
Al ser la primera vez que se utiliza `zsh`, mostrará un mensaje por el momento
hay que ignorar el mensaje tecleando la letra **q** (para que no creé ningún archivo)

También al cerrar la consola, y abrir una nueva notaras que no inicia con
`zsh` sino con `bash`.

Lo que se tiene que hacer es cambiar la configuración y poner a `zsh`
por defecto.

Primero se necesita saber en donde se encuentra el ejecutable de `zsh`
para eso se usa el comando `chsh` con la opción `-l`

``` shell
chsh -l
```
Se vera algo así:

``` shell
/bin/bash
/bin/zsh
```

Una vez conocida la ruta de `zsh`, se puede asignar como intérprete por defecto.

``` shell
chsh -s /bin/zsh
```

Para que tenga efecto se necesita reiniciar el sistema.

#### Instalar oh-my-zsh

Después de haber reiniciado el sistema, solo falta instalar **oh-my-zsh**


``` shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Cerrar la terminal y abrir una nueva para ver los cambios.
Con esto se tiene instalado `zsh` con **oh-my-zsh**.

[![zsh-horizontal-img](./images/zsh/zsh.png)](./images/zsh/zsh.png)

