pragma solidity ^0.8.0;


contract Human{
    uint age;
    
    constructor(uint a) public{
        age = a;
    }
    
    function setAge(uint _age) public{
        age = _age;
    }
    
    function getAge() public view returns (uint){
        return age;
    }
}

contract DemoObject{
    function doSomething() public returns(uint){
        Human h = new Human(2);
        return h.getAge();
    }
}