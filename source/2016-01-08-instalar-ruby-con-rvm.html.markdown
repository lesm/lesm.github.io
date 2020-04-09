---
title: Instalar ruby con rvm
date: 2016-01-08 19:12 UTC
tags: ruby, rvm, zsh
---

**Ruby Version Manager** (RVM) es una herramienta de línea de comandos que
permite instalar diferentes versiones de `ruby` fácilmente.

Antes de empezar a instalar `rvm`, si se usa `zsh` se debe modificar el archivo
`~/.zshrc` de lo contrario mostrará un mensaje de error.

Antes:

``` shell
export PATH="/usr/local/bin:/usr/bin:/bin:/..."
```

Después:

``` shell
export PATH="$PATH:/usr/local/bin:/usr/bin:/..."
```

#### Instalar rvm

Para ello se usa `curl`

``` shell
curl -sSL https://get.rvm.io | bash -s stable
```

Al final se verá un mensaje que pide modificar el archivo `~/.bash_profile`.

Agregar la línea siguiente al final del archivo.
`[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*`

Quedando así:

``` vim
#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
```

Para que la consola actual reconozca el comando `rvm`, hay que ejecutar la
siguiente línea o cerrar la consola y abrir una nueva.

``` shell
source ~/.bash_profile
```

Con esto ya esta instalado `rvm`, se puede verificar ejecutando el comando:

``` shell
rvm -v
```

#### Instalar ruby

Se ejecuta:

``` shell
source ~/.rvm/scripts/rvm
```

Instalar `ruby` usando `rvm` permite tener diferentes versiones, sin tener
conflicto entre ellas.

``` shell
rvm install ruby-2.2.3
```

####Como usar rvm

Al tener instalado `ruby` usando `rvm`, se puede tener una configuración específica por proyecto, por ejemplo:

``` shell
mkdir proyecto_uno && cd proyecto_uno
echo '2.2.3' > .ruby-version
echo 'proyecto_uno' > .ruby-gemset
```

Ahora si tiene un proyecto que está con `ruby-2.2.2`.

``` shell
rvm install ruby-2.2.2
mkdir proyecto_dos && cd proyecto_dos
echo '2.2.2' > .ruby-version
echo 'proyecto_dos' > .ruby-gemset
```

Al momento de entrar al directorio del proyecto, se cargará la versión de `ruby`
que está en el archivo `.ruby-version` y el `.ruby-gemset` del proyecto, de
está manera resulta más fácil llevar el control de los proyectos con diferentes
versiones de `ruby`, al igual que con las gemas, debido a que cada `.ruby-gemset` es
independiente del otro, de manera que cada proyecto tiene sus propias gemas,
cuando se trabaja con rails.

