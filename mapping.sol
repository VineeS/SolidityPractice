pragma solidity ^0.6.0;

contract myContract {
    // 1. declare mapping
    // 2. C.R.U.D (create, read, update and delete
    // 3. default values
    // 4. Exotic mapping: nested mapping
    // 5. Exotic mapping: array inside mapping

    // 1. declare mapping
    //      keys => values
    mapping(address => uint256) balances;
    mapping(address => mapping(address => bool)) public approved; //can be used in ERC20 token
    mapping(address => uint256[]) scores;

    function foo(address spender) external {
        // 2. C.R.U.D (create, read, update and delete)
        // add
        balances[msg.sender] = 100;

        // read
        balances[msg.sender];

        //update
        balances[msg.sender] = 200;

        //delete
        delete balances[msg.sender];

        // 3. default values

        //balances[someaddressThatdonotExist] => 0 will return 0 as we mention uint as value in "mapping (address => uint) balances;
        //balances[someaddressThatdonotExist] => false is we have mentioned the value as bool "mapping (address => bool) balances;

        // 4. Exotic mapping 1: nested mapping
        // create
        approved[msg.sender][spender] = true;
        //read
        approved[msg.sender][spender];
        //update
        approved[msg.sender][spender] = false;
        // delete
        delete approved[msg.sender][spender];

        // 5.Exotic mapping: array inside mapping
        // create/ add element
        scores[msg.sender].push(1);
        scores[msg.sender].push(2);
        scores[msg.sender].push(3);
        scores[msg.sender].push(4);

        //read
        scores[msg.sender][0];

        //update
        scores[msg.sender][0] = 10;

        //delete
        delete scores[msg.sender][0];
    }
}

contract MyMapping {
    //key -> uint , address, string
    //value can be anything
    mapping(address => uint256) public myMap;

    // Create
    function getValue(address _add) public view returns (uint256) {
        return myMap[_add];
    }

    //add
    function setValue(address _add, uint256 _i) public {
        myMap[_add] = _i;
    }

    //delete
    function deleteVal(address _add) public {
        delete myMap[_add];
    }
}
// mapping always returns a  value even if there is nothing passed
