pragma solidity ^0.7.0;

contract Arrays {
    uint256[] public myArrays;

    function addElementToArray(uint256 _number) public {
        myArrays.push(_number);
    }

    function popElementFromArray() public {
        myArrays.pop();
    }

    function removeElementFromArray(uint256 _index) public {
        delete myArrays[_index];
    }

    function getLenOfArray() public view returns (uint256) {
        return myArrays.length;
    }

    function getArray() external view returns (uint256[] memory) {
        return myArrays;
    }
}

//keep the array length compact

contract compactArray {
    uint256[] Array;

    function popArray(uint256 _index) public {
        Array[_index] = Array[Array.length - 1];
        Array.pop();
    }
}

contract myContract {
    //1. storage arrays
    //2. memory arrays
    //3. array arguments and return arrays of function

    //1. storage arrays
    uint256 counter = 10;
    uint256[] myArray; // you can access the array element by giving the index number
    event LogStudentGrade(uint256);

    function foo() external {
        myArray.push(2);
        myArray.push(3);
        myArray.push(20);
        myArray[0] = 10;
        delete myArray[0];
    }

    //this will return the whole array
    function Array() external view returns (uint256[] memory) {
        return myArray;
    }

    function access() external {
        for (uint256 i = 0; i < myArray.length; i++) {
            emit LogStudentGrade(myArray[i]);
        }
    }

    //2. memory arrays
    // memory array are temerory storage while storage are not temerory
    // these are not dynamic size array you need to specify the size
    function memoryArray() external {
        uint256[] memory newArray = new uint256[](10); //--> 10 is the size of the array
        // add element in memory aaray
        newArray[0] = 50;
        newArray[1] = 51;
        newArray[2] = 52;
        newArray[3] = 53;

        delete newArray[0];
        newArray[3] = 54;
    }

    // 3. arrays in function
    //calldata --> external
    function function1(uint256[] calldata myArg) external {}

    //memory --> public and internal
    function function2(uint256[] memory myArg) public {}

    function function3(uint256[] memory myArg) internal {}

    //if you want to return a value from a function you need to write :
    function getArray() external view returns (uint256[] memory) {
        return myArray;
    }
}
