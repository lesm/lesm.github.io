---
title: Instalar y personalizar conky
date: 2016-01-07 22:00 UTC
tags: conky, linux
---

**Conky** es un monitor del sistema y sirve para mostrarnos cualquier información en nuestro escritorio. Está licenciado bajo GPL y funciona en Linux y BSD.

## Instalar Conky:

```
  sudo pacman -S conky 
```

Ejecutamos conky desde la línea de comandos:

```
  conky
```

Veremos que nos muestra una interfaz no muy amigable :(

[![conky_n](./images/conky/normal.png)](./images/conky/normal.png)

## Personalizar Conky

**Conky** tiene unas variables para poder personalizarlo a nuestro gusto, estos son unos link donde se muestran las variables que se pueden usar en conky.

1.- [Variables](http://conky.sourceforge.net/variables.html)  
2.- [Más variables](http://conky.sourceforge.net/config_settings.html)


Actualmente así es como se mira conky en mi computadora

[![conky_p](./images/conky/personalizada.png)](./images/conky/personalizada.png)

Solo se necesita crear el archivo y agregar está coniguración
  
[configuración de conky](https://gist.github.com/lesm/fb9f125b2a3400f1f878)

```
  vim ~/.conkyrc
```

Puedes personalizar conky a tu manera..


## Iniciar conky después de 10 segundos 

En esta nueva versión de **Chakra Fermi** tuve un pequeño problema. Pues al agregar conky, a las aplicaciones iniciadas automáticamente, conky desaparece :( después de pasar la pantalla de login.

Para solucionar esto creé un pequeño script:  

[script para iniciar conky](https://gist.github.com/lesm/38a8f5f7713a78133fe3)

Y en vez de agregar directamente a conky a las aplicaciones iniciadas automáticamente se agrega el script el cual ejecuta a conky después de 10 segundos de haber iniciado el sistema.

El script se puede crear en:
 
```
  sudo vim /opt/start_conky.sh
```

O directamente en:

```
  sudo vim /usr/bin/start_conky.sh
```

Al script se le tiene que dar permisos de ejecución 

```
  sudo chmod +x /opt/start_conky.sh 
```
