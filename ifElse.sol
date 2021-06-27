pragma solidity ^0.7.0;

contract controlStructure {
    uint256 value;
    string public str;

    function foo(uint256 _value) external {
        if (msg.sender == 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4) {
            value = _value;
        } else {
            str = "Hello World";
        }
    }
}
