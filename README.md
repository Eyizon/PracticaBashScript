# PracticaBashScript
Bash code practice for file deletion and recovery (simulation)

# 🗑️ "Papelera" en bash🗃️

Este repositorio es para codigo de bash que simula la eliminación de archivos moviéndolos a una papelera oculta, y con otro codigo los "recupera"

---

## 📋 Requisitos
- Sistema operativo Linux/macOS
- Terminal Bash
- Permisos de ejecución para los scripts

---

## 🛠️ Instalación

### 1. Crear la papelera oculta
Ejecuta en la terminal de bash:

```bash
$ mkdir ~/.papelera
```
### 2. Obtener los scripts 📥
Revisa que los archivos "recuperar_archivo" y "borrar_archivo" esten en tu directorio

```bash
$ ls
borrar_archivo  recuperar_archivo
```

### 3. Dar permisos de ejecución 🔑
Da los permisos necesarios para la ejecucion

```bash
$ chmod 755 ./borrar_archivo.bash ./recuperar_archivo.bash
```
---
## 🚀 Cómo Usar

### 🗑️ Borrar archivo (mover a papelera)

```bash
$ ./borrar_archivo.bash mi_archivo.txt
```

### 🔄 Recuperar archivo

```bash
$ ./recuperar_archivo.bash mi_archivo.txt
```

---

## 🧠 Ejemplo Completo 

Ejemplo de uso

```bash
# Crear archivo de prueba
$ echo "Hola Mundo" > prueba.txt

# Borrar archivo
$ ./borrar_archivo.bash prueba.txt
El archivo 'prueba.txt' ha sido movido a la papelera.

# Verificar papelera
$ ls ~/.papelera
prueba.txt

# Recuperar archivo
$ ./recuperar_archivo.bash prueba.txt
El archivo 'prueba.txt' ha sido recuperado.

# Verificar recuperación
$ ls
prueba.txt
```