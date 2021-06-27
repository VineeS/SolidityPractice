pragma solidity ^0.7.0;

contract VariableTypes {
    //Fixed type
    bool isReady;
    bytes32 data;
    uint256 number;
    address recepient;

    // Variable type
    string name; //any length
    bytes _data;
    uint256[] arrayOfAmounts; // array of same type
    mapping(uint256 => string) users; //example- users[10] = "string"

    // User-defined type
    struct User {
        uint256 id;
        string name;
        uint256[] friendID;
    }

    enum UserCode {
        RED,
        BLUE,
        GREEN
    }

    // User.RED;
}
