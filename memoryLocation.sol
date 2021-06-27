pragma solidity ^0.7.0;

contract memoryLocation {
    // 1. storage
    // 2. memory

    //1. storage
    //  state variable
    uint256 value; // this will have memory location as storage

    struct User {
        string name;
    }

    User[] public arrayOfStruct;

    function AddValueToStruct(string memory _name) public {
        User memory user1 = User(_name); // we are taking input hence specified as memory
        arrayOfStruct.push(user1);
    }

    function updateTheStruct(uint256 _index, string memory _name) public {
        User storage user = arrayOfStruct[_index]; // we are updating the data which is already in the smart contract hence storage
        user.name = _name;
    }

    // always mention string as memoory
}
