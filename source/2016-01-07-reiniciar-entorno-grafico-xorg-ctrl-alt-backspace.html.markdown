---
title: Reiniciar entorno gráfico Xorg, ctrl + alt + backSpace
date: 2016-01-07 03:00 UTC
tags: xorg, linux, chakra
---

Activar el "reinicio" del entorno gráfico, suele ser bastante útil, ningún sistema es perfecto, así que no podemos dar por hecho que nuestra distro nunca llegara a colgarse. 

Más cuando llevas varios días sin apagar la computadora, y ya sabemos que para los que usamos **KDE** es un entorno pesado así que para evitar presionar el botón de apagado. Podemos activar el "reinicio" del entorno gráfico (Xorg), con la combinación de teclas

```

  ctrl + alt + backspace 

```

De está manera terminara la sesión del entorno gráfico, y nos mostrara la ventana del login para volver a iniciar una sesión. Esto es mucho más rápido que reiniciar el sistema.

##¿Cómo hacerlo?

Tenemos que agregar:

```

  Option                 "XkbOptions" "terminate:ctrl_alt_bksp"

```

Como yo utilizo la **distro Chakra Fermi** el archivo es **00-keyboard.conf**
en otras distros el archivo es  **10-keyboard.conf** de hecho en la versión **Chakra Euler**  venia de esta manera.

El archivo se encuentra dentro del directorio

```

  /etc/X11/xorg.conf.d

```

Entramos al directorio

```
  
  cd /etc/X11/xorg.conf.d

```

Editamos el archivo agregando la línea previamente mensionada.

```

  sudo vim 00-keyboard.conf

```

Quedando el archivo de la siguiente manera.

![Alt text](./images/xorg/keyboard.png)


Ahora solo queda reiniciar el sistema y probar que todo funcione

```
  
  ctrl + alt + backspace 

```


Aveces también utilizo la combinación de teclas:

```

  ctrl + alt + F1

```

Para logearme y hacer un reboot, o matar el proceso por el cual se ha colgado mi distro. Esta opción es muy útil cuando sabemos que a causado que nuestro sistema se quedo colgado, Pues solo podemos matar el proceso que causo el problema y seguir trabajando, ya que aveces tenemos abierto otros programas, documentos etc. Y eso de volver abrir todo de nuevo :-(

Ya que al hacer

```

  ctrl + alt + backspace

```

Se perderá todo, y nuevamente tendremos que volver abrir los archivos o programas en los cuales estamos trabajando.
