# Pruebas dentro de la consola de Truffle

Dentro de la consola de Truffle se pueden ejecutar transacciones de prueba.  

Nota: hay que tener la cuenta de wallet en modo desbloqueado y el geth minando para que las tx se lleven a cabo. 

Para ejecutar la consola de Geth (1.7) ejecutar: geth --datadir testchain/data attach  
Una vez dentro de la consola de Geth ejecutar: 
`personal.unlockAccount(eth.accounts[0],contraseña,15000)` para desbloquear la cuenta de la wallet  
`miner.start()` para arrancar el proceso de minado  
`miner.stop()` para parar el proceso de minado  

## Métodos del contrato inteligente disponibles
Este tipo de contrato extiende de un modelo ERC20, por lo que contiene una variable de estado `balancesOf` que guarda para cada address el numero de tokens que tiene.  
Dentro del proyecto en la carpeta `/contracts` se ubican los contratos inteligentes en lenguaje Solidity.  
Se puede modificar el contrato `MiToken.sol` para hacer pruebas. Antes hay que compilar los cambios con:  
`truffle.cmd compile`  
Y re-deployar el contrato con:  
`truffle.cmd migrate --reset`  

**truffle(development)>MiToken.address**  
Me da la dirección del contrato.  

**truffle(development)>MiToken.at(MiToken.address)**  
Es el contrato, visto desde Truffle.    

Nombre  
**truffle(development)>MiToken.at(MiToken.address).name()**  
Me da el nombre de mi token.  

Decimales  
**truffle(development)>MiToken.at(MiToken.address).decimals()**  
Me da el total de decimales de mi token.  

Símbolo  
**truffle(development)>MiToken.at(MiToken.address).symbol()**  
Me da el símbolo de mi token.  

Total de tokens  
**truffle(development)>MiToken.at(MiToken.address).totalSupply()**  
Me da el total de tokens que existen de todas las cuentas.  

Saldo de tokens de una address  
**truffle(development)>MiToken.at(MiToken.address).balanceOf(address)**  
Me dal el total de tokens que tiene esa address ("0x2a3d4cbc34df....") en concreto.  

Quemar tokens 
**truffle(development)>MiToken.at(MiToken.address).burn(m)**  
Quema m tokens de la cuenta que envía la tx y reduce el total supply restando m.  

Acuñar tokens  
**truffle(development)>MiToken.at(MiToken.address).mint(address, n)**  
Acuña n tokens en la cuenta address ("0x2abc456bcd..") y aumenta el total de supply sumando n.  

Transferir tokens  
**truffle(development)>MiToken.at(MiToken.address).transfer(hacia address, n)**  
Transfiere n tokens de la address del sender de la transaccion hacia address ("0x1c2d3a4bde...").  
