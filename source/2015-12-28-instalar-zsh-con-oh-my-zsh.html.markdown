---
title: Instalar zsh con oh-my-zsh
date: 2015-12-28 07:05 UTC
tags: zsh,chakra
---

Esta semana actualice mi sistema a **Chakra "Fermi"**, con muchas ganas de probar lo nuevo de KDE con plasma 5. Y aunque cada fin de semestre realizo una instalación limpia, no me había decidido por crear unos post para tener a donde recurrir la próxima vez, ya que siempre tengo que estar configurando e instalando todo de nuevo. Y también con la ídea de que estos post puedan ser de ayuda para alguien más.

Primero instalamos **zsh** en este caso con pacman.

```

  sudo pacman -S zsh

```

Podemos ejecutar **zsh** para utilizarlo, pero al cerrar la consola, y volver abrirla notaremos que no inicia con **zsh** sino con **bash**.

```

  zsh

```

Lo que tenemos que hacer es cambiar la configuración y poner a zsh por default, para eso aremos uso del comando **chsh** con el tag **-l** lo cual nos devolverá los diferentes intérpretes que tiene nuestro sistema, incluyendo **zsh**. Lo que necesitamos de esto es la ubicación de zsh, para así asignar a zsh como intérprete por default.


 
```

  chsh -l

```
Veremos algo así:  

```

  /bin/bash  
  /bin/zsh

```
Ahora ejecutamos:  

```

  chsh -s /bin/zsh

```

Para asignar a zsh como nuestro interprete por default. Para que esto tenga efecto, necesitamos reiniciar nuestro sistema.

# Instalar oh-my-zsh

Después de haber reiniciado nuestro sistema, procedemos a instalar **oh-my-zsh**.

Ejecutamos:  


```

  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```

Cerramos la terminal y volvemos abrirla para ver los cambios. Y con esto ya tendremos instalado **zsh con oh-my-zsh en chakra**.

![Alt text](./images/zsh/zsh.png)

