---
title: Activar touchpad circular
date: 2016-01-06 21:52 UTC
tags: touchpad, chakra
---

Desde hace ya un tiempo vengo utilizando el touchpad de mi lap, con la opción **CircularScrolling**, la cual ofrece la funcionalidad de usar el scroll de manera circular.  
Está opción me gusta mucho porque facilita el desplazamiento sobre páginas de bastante contenido, o al estar leyendo uno que otro libro (pdf) o documentos de texto.  

### ¿Cómo funciona?

```

  Option "CircularScrolling"     "on"

```
Funciona solo con un dedo, sobre todo el contorno del touchpad

## Para activar está funcionalidad

Como estoy trabajando en **Chakra** el archivo a modificar **"50-synaptics.conf"** se encuentra dentro del directorio:

```

  /usr/share/X11/xorg.conf.d

```

En otras distribuciones se puede encontrar dentro del directorio: 

```

  /etc/X11/xorg.conf.d

```
Entramos al directorio 

```
  
  cd /usr/share/X11/xorg.conf.d

```

Abrimos el archivo 50-synaptics.conf

```

  sudo vim 50-synaptics.conf

```

Agregamos 

```

  Option "CircularScrolling"     "on" 

```

En esta imagen se puede ver que la opción se ha agregado en la línea 17

![Alt text](./images/touchpad/scroll.png)

Solo queda guardar los cambios y reiniciar nuestro sistema.  Reiniciar el sistema porque no sé si exista algún servicio para reiniciar el touchpad, de lo contrario solo se podría reiniciar el servicio (^-^).

