// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract myConstructor {
    uint256 public a;
    uint256 public b;
    address public owner;
    uint256 public CreatedAt;

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
        owner = msg.sender;
        CreatedAt = block.timestamp;
    }
}
