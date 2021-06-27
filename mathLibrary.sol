pragma solidity ^0.5.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.3.0/contracts/math/Math.sol";

contract myContract {
    uint256 c;
    uint256 d;
    uint256 e;

    function Values(uint256 a, uint256 b) public {
        c = Math.max(a, b);
        d = Math.min(a, b);
        e = Math.average(a, b);
    }

    function MaxValIs() public view returns (uint256) {
        return c;
    }

    function MinValIs() public view returns (uint256) {
        return d;
    }

    function AvgVal() public view returns (uint256) {
        return e;
    }
}
