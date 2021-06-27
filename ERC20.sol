pragma solidity ^0.7.0;

// SPDX-License-Identifier: Vinee

// 1. ICO - inital coin offering
// ERC-20 is kind of API specification on how a token should be build

//https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md

// State variables
//1. name: function name() public view returns (string)
//2. symbol: function symbol() public view returns (string)
//3. standard:
//4. totalSupply : Returns the total token supply.
//function totalSupply() public view returns (uint256)

//events
// 1. Transfer: event Transfer(address indexed _from, address indexed _to, uint256 _value)
//2. Approval: event Approval(address indexed _owner, address indexed _spender, uint256 _value)

//mapping
//1. balanceOf : Returns the account balance of another account with address _owner.
//function balanceOf(address _owner) public view returns (uint256 balance)
//2. allowance : function allowance(address _owner, address _spender) public view returns (uint256 remaining)

//transfer: function transfer(address _to, uint256 _value) public returns (bool success)

//transferFrom : function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)

//approve: function approve(address _spender, uint256 _value) public returns (bool success)

contract CachetToken {
    string public name = "Cachet Tocken";
    string public symbol = "CHT";
    string public standard = "CHT Tocken v1.0 beta";
    uint256 public totalSupply;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }

    // transfer money to address

    function transfer(address _to, uint256 _value)
        public
        returns (bool success)
    {
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] = _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    // to and from and how much
    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success) {
        require(_value <= balanceOf[_from]);
        require(_value <= allowance[_from][msg.sender]);
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }

    // approve the sender and value
    function approve(address payable _spender, uint256 _value)
        public
        returns (bool success)
    {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
}
