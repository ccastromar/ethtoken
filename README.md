# ethtoken
Proyecto para hacer un token ERC20

# Requisitos
Geth v1.7.x  
Truffle 4.x  

# Opcionalmente 
Ethereum Wallet (una wallet en modo gráfico)  
Ganache (una alternativa a Geth) que se puede obtener de la web de Truffle

# Instalar Truffle
Para instalar Truffle se requiere el gestor de paquetes de NodeJS (npm) y NodeJS versión 5 o superior.  
Se puede descargar NodeJS de aquí [https://nodejs.org/dist/v8.10.0/node-v8.10.0-x64.msi]  

Una vez instalado comprobar que se ha instalado npm, con `npm version`  

A continuación instalar Truffle con: `npm install -g truffle`  

# Descargar el proyecto mactoken
Crear un directorio en cualquier ruta de Windows. 
Clonar el proyecto: hacer un `git clone https://github.com/ccastromar/ethtoken.git`  

# Pasos para desplegar el contrato inteligente en Geth
Ejecutar Geth en la máquina local en el puerto 8545 (por defecto) con (para Geth 1.7):  
`geth --datadir testchain\data --rpc`  

Opcionalmente ejecutar `".\Ethereum Wallet.exe" --rpc http://localhost:8545` en la carpeta donde se ha descomprimido el zip de Ethereum Wallet.  
Con esta Wallet se pueden hacer traspasos de tokens entre cuentas de modo visual.  

Ir al directorio donde hemos clonado el proyecto (donde se ubica el truffle.js)  

Hacer `truffle.cmd compile` para compilar los contratos  
Luego `truffle.cmd migrate` para desplegar los contratos en Geth  
Nota: para re-deployar un contrato modificado usar: `truffle.cmd migrate --reset`  
Luego `truffle.cmd console` para arrancar la consola  

Dentro de la consola de Truffle escribir `MiToken` y return.   
Si se ha desplegado correctamente nos volcará el objeto contrato en formato JSON.  

Se pueden realizar llamadas a métodos del contrato definidas en el documento Pruebas.md[https://github.com/ccastromar/ethtoken/blob/master/Pruebas.md]






