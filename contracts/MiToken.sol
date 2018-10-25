import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';
import 'zeppelin-solidity/contracts/token/ERC20/BurnableToken.sol';
import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

pragma solidity 0.4.19;

contract MiToken is StandardToken, BurnableToken, MintableToken {

	string public constant name = "MiToken"; // solium-disable-line uppercase
	string public constant symbol = "MTK"; // solium-disable-line uppercase
	uint8 public constant decimals = 0; // solium-disable-line uppercase

	uint256 public constant INITIAL_SUPPLY = 10000;

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function MiToken() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }
  
}