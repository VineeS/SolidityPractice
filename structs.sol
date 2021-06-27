pragma solidity ^0.7.0;

contract myStruct {
    // 1. declare struct
    // 2. C.R.U.D
    // 3. array of strcut
    // 4. mapping of struct
    struct User {
        address id;
        string name;
        uint256 score;
    }
    // array of struct
    User[] public arrayOfStruct;

    // mapping of struct
    mapping(address => User) public userList;

    function myStructFunc(uint256 _score, string calldata _name) external {
        // create
        User memory user1 = User(msg.sender, _name, _score); // in this syntax the order of argument is important
        User memory user2 = User(msg.sender, _name, _score);
        User memory user3 = User({name: _name, id: msg.sender, score: _score}); // order of argument is not important
        arrayOfStruct.push(user1); //

        // adding the values in mapping
        // first way
        userList[msg.sender] = user1;
        // second way
        userList[msg.sender] = User(msg.sender, _name, _score);

        //read
        user1.id;
        user1.name;

        // update
        // delete
    }

    //read
    function returnTheStruct(uint256 _index)
        public
        view
        returns (
            address id,
            string memory name,
            uint256 score
        )
    //0: address: id 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    //1:string: name Vinee
    //2:uint256: score 190

    //if you do not mention id, name, score then it will return in following way:

    // 0:address:  0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    // 1:string:  Vinee
    // 2:uint256:  190

    {
        User storage user = arrayOfStruct[_index];
        return (user.id, user.name, user.score);
    }

    //update the struct
    function updateTheStruct(uint256 _index, string memory _name) public {
        User storage user = arrayOfStruct[_index];
        user.name = _name;
    }
}
