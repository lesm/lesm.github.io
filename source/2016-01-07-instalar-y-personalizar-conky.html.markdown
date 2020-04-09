---
title: Instalar y personalizar conky
date: 2016-01-07 22:00 UTC
tags: conky, linux
---

**Conky** es un monitor del sistema, con el cual se puede monitorear muchas
variables, está licenciado bajo GPL y funciona en Linux y BSD.

#### Instalar Conky
Se usará el manejador de paquetes `pacman`, este va a depender del
sistema que uses.

``` shell
sudo pacman -S conky
```

Para iniciar `conky` solo basta con ejecutar el comando:

``` shell
conky
```

La interfaz que muestra no se ve muy amigable :( como se ve en la imagen,
la ventaja que se tiene es que `conky` es muy configurable.

[![conky-default-vertical-img](./images/conky/normal.png)](./images/conky/normal.png)

#### Personalizar Conky

**Conky** tiene unas variables para poder personalizarlo ampliamente, aquí unos
link donde se muestran las variables que se pueden usar.

1.- [Variables](http://conky.sourceforge.net/variables.html)
2.- [Más variables](http://conky.sourceforge.net/config_settings.html)

Actualmente así es como se mira `conky` en mi computadora.

[![conky-perzonalizado-vertical-img](./images/conky/personalizada.png)](./images/conky/personalizada.png)

Solo se necesita crear el archivo y agregar está configuración.

[configuración de conky](https://gist.github.com/lesm/fb9f125b2a3400f1f878)

``` shell
vim ~/.conkyrc
```

Puedes personalizar `conky` a tu manera.


#### Iniciar conky después de 10 segundos

En esta nueva versión de **Chakra Fermi** tuve un pequeño problema. Al agregar conky a las aplicaciones iniciadas automáticamente, `conky` desaparece :( después de pasar la pantalla de login.

Para solucionar esto creé un pequeño script:

[script para iniciar conky](https://gist.github.com/lesm/38a8f5f7713a78133fe3)

Y en lugar de agregar a `conky` a las aplicaciones iniciadas automáticamente se agrega el script el cual ejecuta a conky después de 10 segundos de haber iniciado el sistema.

El script se puede crear en:

``` shell
sudo vim /opt/start_conky.sh
```

O directamente en:

``` shell
sudo vim /usr/bin/start_conky.sh
```

Al script se le tiene que dar permisos de ejecución.

``` shell
sudo chmod +x /opt/start_conky.sh
```
