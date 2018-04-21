pragma solidity 0.4.19;

import './GustavoCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';
import 'zeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol';


contract GustavoCoinCrowdsale is TimedCrowdsale, MintedCrowdsale {
    uint totalRaised;
    function GustavoCoinCrowdsale
        (
            uint256 _openingTime,
            uint256 _closingTime,
            uint256 _rate,
            address _wallet,
            MintableToken _token
        )
        public
        Crowdsale(_rate, _wallet, _token)
        TimedCrowdsale(_openingTime, _closingTime) {

        }
        function createNewToken() internal returns (MintableToken) {
             return new GustavoCoin();
        }
        function () external payable {
         buyTokens(msg.sender);
         }
         function getBal(address _sender) external view returns(uint256) {
            uint256 bal=token.balanceOf(_sender);
            return bal;
         }    
         function getTotalRaised() view public returns (uint) {
            return totalRaised;
         }
  }
