pragma solidity ^0.7.0;

contract VisibilityKeyWord {
    uint256 value;

    //the private keyword function should _functionName best practice

    function _getValue() private view returns (uint256) {
        return value;
    }

    function setValue(uint256 _value) external {
        getValuepublic(); // only possible with public
        getValueInternal(); // possible with Internal
        //getValueExternal(); // not possible
        value = _value;
    }

    // slightly less restricted than private

    function getValueInternal() internal view returns (uint256) {
        return value;
    }

    //external can only be called from outside the smart contract

    function getValueExternal() external view returns (uint256) {
        return value;
    }

    function getValuepublic() public view returns (uint256) {
        return value;
    }
}
