pragma solidity >=0.7.0 <0.9.0;

contract person {
    mapping(address => string) name;
    mapping(address => uint256) age;
    address ownership;

    function personfunc() private {
        ownership = msg.sender;
    }

    function getAge() public view virtual returns (uint256) {
        return age[msg.sender];
    }

    function getName() public view virtual returns (string memory) {
        return name[msg.sender];
    }

    function setNameAge(uint256 _age, string memory _name) public {
        age[msg.sender] = _age;
        name[msg.sender] = _name;
    }
}
