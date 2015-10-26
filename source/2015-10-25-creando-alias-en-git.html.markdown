---
title: Creando Alias en Git
date: 2015-10-25
tags: git 
---

### Trabajando con Git 

Ultimamente eh estado trabajando más con git. Y se me hacia algo tedioso estar escribiendo continuamente los comando:  

```
git add .
```  

```
git commit -a -m 'algún mensage'
```  

```
git status
```  

```
git log
``` 

```
git diff
```

Así que decidí crear unos alias. Git trae la opción de crear alias para sus comandos.   

### Como hacerlo

En el fichero **~/.gitconfig** el cual, es el archivo de configuración de Git. Ya debe de tener, un nombre y un correo, esto si es que ya trabajas con Git.  

```
[user]
```  

```
name: 'Luis Silva'
```  

```
email: 'correo@gmail.com'
```

```
...
```

Al final de archivo agrega 

```
[alias]
```  

```
cam = commit -a -m
```

```
cm = commit -m
```

```
l = log
```

```
s = status
```

```
a = add
```

```
d = diff
```

Ahora puedes hacer uso de los alias 

#### Con alias  
  
```
git cam 'mensage del commit'
```

```
git cm 'mensage del commit'
```

```
git l
```

```
git s
```

```
git a .
```

```
git d
```   

## Sin alias  
  
```
git commit -a -m 'mensage del commit'
```

```
git commit -m 'mensage del commit'
```

```
git log
```

```
git status
```

```
git add .
```

```
git diff
```

Puedes personalizar los alias a tu manera



