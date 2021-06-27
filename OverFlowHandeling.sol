pragma solidity ^0.7.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0/contracts/math/SafeMath.sol";

contract EthDeposit {
    
    mapping(address => uint256) public balances;
    mapping(address => uint256) public lockTime
    
    function deposit() external payable{
        balances[msg.sender] += msg.value
    } 
}