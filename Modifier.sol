// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract FunctionModifier {
    // They are used piece of reusable code used before or after the function

    // 1. Restricting write access (basic syntax)
    // 2. Validating inputs (inputs and why useful)
    // 3. Reentracy guard

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not an owner");
        _;
    }

    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not a Valid Address");
        _;
    }

    function changeOwner(address _newOwner)
        public
        onlyOwner
        validAddress(_newOwner)
    {
        owner = _newOwner;
    }
}
