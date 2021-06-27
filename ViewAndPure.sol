pragma solidity ^0.7.0;

contract viewAndPure{
    
    uint256 public x = 2;
    
    function addTox(uint256 y) public view returns(uint256){
        return x+y; // does not modify 
    } 
    
    //1. Function declared as view, but this expression (potentially) modifies the state and thus
    //requires non-payable (the default) or payable. x +=1;
    
    // 2. solidity detects the potential state changes.
    
    // below function updateX throws above error 1
    // function updateX() public view {
    //     x +=1;
    // }
    
    // 3. View function cannot call other function as shown below
    // function foo() public {
        
    // }
    
    // function invalidViewFunction() public view {
    //     foo();
    // } 
    
    //VALID PURE function
    
    function add(uint256 i, uint256 j) public pure returns(uint256){
        return i+j;
    }
    
    //1. invalid code
    // function addTox(uint256 y) public pure returns(uint256){
    //     return x+y; // does not modify 
    // } 
    // As this is trying to change the value of x 
    
    //2. invalid use of pure
    
    // function foo() public {
        
    // }
    
    // function invalidViewFunction() public view {
    //     foo();
    // } 
    
    // A pure function can call other pure function
    
    //VALID PURE function
    
    function foo() public pure {
        
     }
    
    function invalidViewFunction() public view {
        foo();
    } 
    
}
