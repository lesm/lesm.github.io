---
title: Instalar nodejs con nvm
date: 2016-01-08 16:46 UTC
tags: nodejs, nvm
---

**Node Version Manager** (nvm), permite instalar diferentes versiones de `nodejs`
sin tener conflicto entre ellas.

#### Instalación de nvm

Con `curl` se descarga el archivo de instalación y se ejecuta.

``` shell
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash
```

O con `wget`

``` shell
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash
```

Para que la consola actual reconozca el comando `nvm`, hay que ejecutar la
siguiente línea o cerrar la consola y abrir una nueva.

``` shell
source ~/.profile
```

Con esto ya esta instalado `nvm`, se puede verificar ejecutando el comando:

``` shell
nvm --version
```

#### Instalación de nodejs

Para instalar la versión estable de `nodejs`.

``` shell
nvm install stable
```

Para instalar una versión en específica de `nodejs`.

``` shell
nvm install 5.5
```

El comando `nvm list`, muesta las versiones de `nodejs` que están instaladas.

[![nvm-list-horizontal-img](./images/nvm/nvm-list.png)](./images/nvm/nvm-list.png)

Para cambiar de versión de `nodejs`.

``` shell
nvm use 5.3.0
```

El cambio solo tendrá efecto en la consola activa, para hacerlo permanente se
tiene que asignar como la versión por defecto, para ellos se usa la opción
`default` seguido de la versión.

Asignar una versión de `nodejs` por defecto.

``` shell
nvm alias default 5.3.0
```
