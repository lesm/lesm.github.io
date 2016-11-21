---
title: Instalar ruby con rvm
date: 2016-01-08 19:12 UTC
tags: ruby, rvm, zsh
---

 **Ruby Version Manager** (RVM) rvm es una herramienta de línea de comandos que permite instalar diferentes versiones de ruby fácilmente. 

Antes de empezar a instalar rvm   

## Si utilizas zsh 

Debemos modificar **~/.zshrc** de lo contrario mostrara un mensaje de error.

Antes: 

```
  export PATH="/usr/local/bin:/usr/bin:/bin:/..." 
```

Después: 

```
  export PATH="$PATH:/usr/local/bin:/usr/bin:/..." 
```

## Instalar rvm 

Ejecutamos la siguiente orden para instalar rvm:

```
  \curl -sSL https://get.rvm.io | bash -s stable 
```

Al final veremos un mensaje que nos pide modificar el archivo **~/.bash_profile**.  

Abrimos el archivo para editarlo. 

```
  sudo vim ~/.bash_profile 
```

De tal manera que debe de quedar similar a esto: 

[![bash_profile](./images/rvm/bash_profile.png)](./images/rvm/bash_profile.png)

Ahora toca hacer que la consola reconozca el comando **rvm** ejecutando la siguiente línea, o cerrando la consola y al volver abrirla esta reconocerá el comando **rvm**

```
  source ~/.bash_profile 
```

Con esto ya tenemos instalado **rvm** podemos verificarlo de la siguiente manera: 

```
  rvm -v 
```

## Instalar ruby 

Ejecutamos: 

```
  source ~/.rvm/scripts/rvm 
```

Y después instalamos  ruby, de esta manera podemos instalar diferentes versiones de ruby, sin tener conflicto entre las mismas. 

```
  rvm install ruby-2.2.3 
```

##Como usar rvm 

Al tener instalado ruby con rvm. Se puede tener una configuración especifica por proyecto, por ejemplo. 

```
  mkdir proyecto_uno && cd proyecto_uno 

  echo '2.2.3' > .ruby-version 

  echo 'proyecto_uno' > .ruby-gemset 
```

Ahora si tenemos un proyecto que está con ruby-2.2.2 

Instalamos ruby con rvm: 

```
  rvm install ruby-2.2.2 

  mkdir proyecto_dos && cd proyecto_dos 

  echo '2.2.2' > .ruby-version 

  echo 'proyecto_dos' > .ruby-gemset
```

Al momento de entrar al directorio del proyecto, se cargara la versión de ruby que está en el archivo **.ruby-version** y el **.ruby-gemset** del proyecto, de está manera resulta más fácil llevar el control de los proyectos con diferentes versiones de ruby, al igual que con las gemas, pues cada **.ruby-gemset** es independiente del otro, de tal manera que cada proyecto tiene sus propias gemas, cuando se trabaja con rails.

