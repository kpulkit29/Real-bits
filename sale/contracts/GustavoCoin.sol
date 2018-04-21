pragma solidity 0.4.19;

import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract GustavoCoin is MintableToken {
  string public name = "Real bits coin";
  string public symbol = "RBC";
  uint256 public decimals = 18;
}
