pragma solidity ^0.7.0;

contract payableCon {
    // payable function
    // payable address

    event Deposit(address sender, uint256 amount, uint256 balance);
    event Withdraw(uint256 amount, uint256 balance);
    event Transfer(address to, uint256 amount, uint256 balance);
    address payable public owner;

    constructor() payable {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }

    function deposit() public payable {
        emit Deposit(msg.sender, msg.value, address(this).balance); // here this refers to contract
    }

    function withdraw(uint256 _amount) public onlyOwner {
        owner.transfer(_amount);
        emit Withdraw(_amount, address(this).balance);
    }

    function TransferAmount(address payable _to, uint256 _amount)
        public
        onlyOwner
    {
        _to.transfer(_amount);
        emit Transfer(_to, _amount, address(this).balance);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

// [
// 	{
// 		"from": "0xd457540c3f08f7F759206B5eA9a4cBa321dE60DC",
// 		"topic": "0x90890809c654f11d6e72a28fa60149770a0d11ec6c92319d6ceb2bb0a4ea1a15",
// 		"event": "Deposit",
// 		"args": {
// 			"0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
// 			"1": "0",
// 			"2": "0",
// 			"sender": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
// 			"amount": "0",
// 			"balance": "0"
// 		}
//
// ]

// [
// 	{
// 		"from": "0xc4753C8802178e524cdB766D7E47cFc566e34443",
// 		"topic": "0x90890809c654f11d6e72a28fa60149770a0d11ec6c92319d6ceb2bb0a4ea1a15",
// 		"event": "Deposit",
// 		"args": {
// 			"0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
// 			"1": "0",
// 			"2": "1",
// 			"sender": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
// 			"amount": "0",
// 			"balance": "1"
// 		}
// 	}
// ]
