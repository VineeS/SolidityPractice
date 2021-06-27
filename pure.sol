pragma solidity ^0.7.0;

contract pureKeyWod {
    uint256 value;

    function getValue() external view returns (uint256) {
        return value;
    }

    function setValue(uint256 _value) external {
        value = _value;
    }

    function getValuePure() external pure returns (uint256) {
        //return value; this does not modify the data
        return 1 + 1;
    }
}
