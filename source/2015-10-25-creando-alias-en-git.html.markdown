---
title: Creando alias en git
date: 2015-10-25
tags: git
---

Últimamente he trabajando más con `git`. Y se me hacia algo tedioso estar
escribiendo continuamente los comando:

``` shell
git add .
git commit -a -m 'algún mensage'
git commit -m 'algún mensage'
git status
git log
git diff
```

Así que decidí crear unos alias, `git` trae la opción de crear alias.

#### ¿Cómo hacerlo?

Solo hay que crear los alias en el archivo de configuración de git **~/.gitconfig**

``` shell
[user]
  name: 'Luis Silva'
  email: 'correo@gmail.com'
  ...
```

Los alias se agregan de la siguiente forma:

``` shell
[alias]
  cam = commit -a -m
  cm = commit -m
  l = log
  s = status
  a = add
  d = diff
```

Ahora se puede hacer uso de los alias.

#### Con alias

``` shell
git cam 'mensage del commit'
git cm 'mensage del commit'
git l
git s
git a .
git d
```

#### Sin alias

``` shell
git commit -a -m 'mensage del commit'
git commit -m 'mensage del commit'
git log
git status
git add .
git diff
```

Puedes personalizar los alias a tu manera.
