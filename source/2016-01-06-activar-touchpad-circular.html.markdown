---
title: Activar touchpad circular
date: 2016-01-06 21:52 UTC
tags: touchpad, chakra
---

Desde hace un tiempo vengo utilizando la opción **CircularScrolling** del
touchpad de la lap.

Está opción facilita el desplazamiento sobre páginas de bastante contenido o
al estar leyendo un pdf o documentos.

#### ¿Cómo funciona?

``` shell
Option "CircularScrolling"     "on"
```
Funciona presionando el touchpad con un dedo, sobre todo el contorno del mismo.

#### Para activar está funcionalidad

Como se esta usando la distro **Chakra** el archivo a modificar es **50-synaptics.conf**

Se encuentra dentro del directorio:

``` shell
/usr/share/X11/xorg.conf.d
```

En otras distribuciones se puede encontrar dentro del directorio:

``` shell
/etc/X11/xorg.conf.d
```

Editar el archivo `50-synaptics.conf`

``` shell
vim /usr/share/X11/xorg.conf.d/50-synaptics.conf
```
En la imagen se puede ver que la opción se ha agregado en la línea 17.

[![synaptics-horizontal-img](./images/touchpad/scroll.png)](./images/touchpad/scroll.png)

Solo queda guardar los cambios y reiniciar el sistema. Reiniciar el sistema
porque no sé si exista algún servicio para reiniciar el touchpad. De lo
contrario solo se podría reiniciar el servicio (^-^).

