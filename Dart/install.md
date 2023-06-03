# Guia de instalacion Dart

## Instalacion en Windows

Para instalar ek SDK de Dart en Windows, siga estos pasos:

1. Instalar [Chocolatey](https://chocolatey.org/install)

2. En este caso instalaremos la version individual de Chocolatey, para ello abrimos una terminal de powershell como administrador y ejecutamos el siguiente comando:

```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```
Este comando descargara el manejador de paquetes Chocolatey y lo instala en el sistema.

3. Una vez instalado Chocolatey, abrimos una terminal como administrador y ejecutamos el siguiente comando:

```bash
choco install dart-sdk
```

Este nos permitira instalar el SDK de Dart en nuestro sistema.

4. Adicionalmente para que nuestro sistema reconozca los comandos de Dart, debemos agregar la ruta de instalacion de Dart a las variables de entorno del sistema.

Oprimimos la tecla de windows y escribimos "variables de entorno" y seleccionamos la opcion "Editar las variables de entorno del sistema".

!('![image](https://github.com/pukinidev/Flutter/assets/98991254/6332ddbc-162e-45e5-a964-89df4cdba333')

Nos dirigimos a variables de entorno para el usuario actual y seleccionamos la opcionn 'Nuevo'.
Una vez alli, agregamos la ruta de instalacion de Dart, en este caso es:

```bash
C:\tools\dart-sdk
```
Y de nombre le ponemos dart-sdk.

Para verificar que la instalacion fue exitosa, abrimos una terminal y ejecutamos el comando:

```bash
dart --version
```




