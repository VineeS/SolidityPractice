pragma solidity ^0.7.0;

contract EtherWei {
    uint256 public etherValue = 1 ether;
    uint256 public weiValue = 1 wei;

    function testEther() public view returns (bool) {
        return 1 ether == 1e18 wei;
    }

    function testwei() public view returns (bool) {
        return 1 wei == 1;
    }
}
