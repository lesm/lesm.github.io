---
title: Instalar nodejs con nvm
date: 2016-01-08 16:46 UTC
tags: nodejs, nvm
---

**Node Version Manager** (nvm), Es una herramienta que nos ayuda a tener instaladas diferentes versiones de **nodejs**

## Instalación de nvm

Para instalar nvm en nuestro sistema se siguen los siguientes pasos:

Con curl:

```

  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

```

O con wget:

```

  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

```


Ejecutamos la siguiente orden, para hacer que la consola reconozca el comando nvm. O cerrarmos la consola y la volvemos abrir para que reconozca los cambios y detecte a **nvm**

```

  source ~/.profile

```

Verificamos que tenemos instalada la herramienta **nvm**, obteniendo su versión.

```

  nvm --version

```

## Instalación de nodejs

Ahora instalamos la versión que necesitamos de nodejs, y sí solo queremos la versión estable de nodejs podemos hacer lo siguiente:

```

  nvm install stable

```

Si ejecutamos: 

```

  nvm list

```

![nvm-list](./images/nvm/nvm-list.png)

Muestra las diferentes versiones de nodejs que tenemos instaladas.

Para poder usar una versión de nodejs se necesita hacer lo siguiente:

```

  nvm use 5.3.0

```

Donde **5.3.0** es el número de versión que necesitamos usar. Teniendo en cuenta que está versión de **nodejs** solo será reconocida en la consola donde se ejecutó la instrucción, y al momento de cerrar la consola, dejara de ser accesible la versión de nodejs.

## Asignar una versión de nodejs por default

Al asignar una versión de **nodejs** por default está se pueda ejecutar desde cualquier shell, y en cualquier momento hacer uso de esta versión de nodejs.

```

  nvm alias default 5.3.0 

```
