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

![variables de entorno]('https://filestore.community.support.microsoft.com/api/images/289adc92-a95e-4309-8b2f-c73ae598839e?upload=true&fud_access=wJJIheezUklbAN2ppeDns8cDNpYs3nCYjgitr%2BfFBh2dqlqMuW7np3F6Utp%2FKMltnRRYFtVjOMO5tpbpW9UyRAwvLeec5emAPixgq9ta07Dgnp2aq5eJbnfd%2FU3qhn5498QChOTHl3NpYS7xR7zASsaF20jo4ICSz2XTm%2B3GDR4XitSm7nHRR843ku7uXQ4oF6innoBxMaSe9UfrAdMi7owFKjdP9m1UP2W5KAtfQLOIDMfhTpZosYoSU6ynTCpzzGIjrvYhOgdTCiyd0Bsq4g1n%2F%2FV6km5B03fNTgOYq%2Bt9L0xTDWAw%2FobQ1HShgg1fEwR7n7YTPUSHKFPzhu8B%2Bt7YyF5eFR%2BtGKafVYouYebu9Us8Unbgb3AhE1Il88BTB%2BEwJPsVgyzny4rObZ3vUIbkFj4mW6AFU3BpAqCCwBc%3D')

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




