// SPDX-License-Identifier: Vinee
pragma solidity ^0.7.0;

contract ForLoop {
    mapping(uint256 => uint256) blockNUmber;
    uint256 counter;

    event uintNumber(uint256);

    function setNumber() external {
        blockNUmber[counter++] = block.number;
    }

    function getNumber() public {
        for (uint256 i = 0; i < counter; i++) {
            emit uintNumber(blockNUmber[i]);
        }
    }
}

contract forLOOP {
    uint256 public count;
    uint256[100] public shareHolder;

    function foo(uint256 _n) public {
        for (uint256 i = 0; i < _n; i++) {
            count += 1;
        }
    }

    function pay() public {
        for (uint256 i = 0; i < shareHolder.length; i++) {}
    }
}
