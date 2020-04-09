---
title: Reiniciar entorno gráfico Xorg, ctrl + alt + backSpace
date: 2016-01-07 03:00 UTC
tags: xorg, linux, chakra
---

Activar el "reinicio" del entorno gráfico suele ser bastante útil, ningún
sistema es perfecto, así que no podemos dar por hecho que la distro no llegará
a colgarse.

Más cuando se lleva varios días sin apagar la computadora, y sabemos que para
los usuarios de **KDE** es un entorno pesado así que para evitar presionar el
botón de apagado. Se puede activar el "reinicio" del entorno gráfico (Xorg),
con la combinación de teclas.

```
ctrl + alt + backspace
```

De está manera terminará la sesión del entorno gráfico y mostrará la ventana del login para volver a iniciar una sesión, esto es mucho más rápido que reiniciar el sistema.

#### ¿Cómo hacerlo?

Se tiene que agregar la opción:

``` shell
Option "XkbOptions" "terminate:ctrl_alt_bksp"
```

Al archivo `00-keyboard.conf` la siguiente configuración aplica para la distro
**Chakra Fermi** en otras distros el archivo es `10-keyboard.conf` de hecho en
la versión **Chakra Euler** venía de esa manera.

El archivo se encuentra dentro del directorio:

``` shell
/etc/X11/xorg.conf.d
```

Editamos el archivo agregando la línea previamente mencionada.

``` shell
sudo vim /etc/X11/xorg.conf.d/00-keyboard.conf
```

Quedando el archivo de la siguiente manera.

[![keyboard-horizontal-img](./images/xorg/keyboard.png)](./images/xorg/keyboard.png)

Ahora solo queda reiniciar el sistema para poder ejecutar la siguiente combinación
de teclas y ver que funcione.

``` shell
ctrl + alt + backspace
```

Aveces también utilizo la combinación de teclas:

``` shell
ctrl + alt + F3
```

Para logearme sin entorno gráfico y hacer un reinicio, o matar el proceso por el
cual se ha colgado la distro, esta opción es muy útil cuando se sabe que
programa causo que el sistema se quedo colgado, ya que aveces se tiene abierto
otros programas, documentos etc.
Y volver abrir todo es mucho tiempo. :-(

La combinación para regresar al entorno gráfico es:

``` shell
ctrl + alt + F7
```

Ya que al hacer

``` shell
ctrl + alt + backspace
```

Se perderá todo y se tendrá que volver abrir los archivos o programas en los cuales
se esta trabajando.
