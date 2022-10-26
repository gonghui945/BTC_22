pragma solidity ^0.5.1;

contract AddPerson{
    
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    uint256 openingTime = 1613261700;
    
    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }
    
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    
    function addPerson(string memory _firstName, string memory _lastName) public onlyWhileOpen{
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal {
        peopleCount += 1;
    }
}