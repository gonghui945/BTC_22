pragma solidity ^0.5.1;

contract MyContract{
    string public value;
    
    constructor() public{
        value = "myValue";
    }
    
    function set(string memory _value) public {
        value = _value;
    }
    
}