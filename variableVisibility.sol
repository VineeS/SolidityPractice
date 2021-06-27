pragma solidity ^0.7.0;

contract VariableVisibility {
    uint256 private val;
    // uint256 external x; // throws error not possible
    uint256 x;
    uint256 public num;

    function foo(uint256 _num, uint256 _val) external {
        val = _val;
        num = _num;
        x = val + num;
    }

    function get() external view returns (uint256) {
        return x;
    }
}

// Private -> cannot be read or accessed from outside the smart contract.
// Internal -> can only be accessed by the inherited smart contract.
// public -> can be accessed outside the smart contract and can be used by inherited smart contract.
// 1. when you define a variable public it creates a kind of function for the variable

// If not specified solidity takes it as private variable.

// **************External -> Cannot be used by a variable.
