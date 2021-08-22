pragma solidity ^0.8.0;


contract Human{
    uint age;
    
    event logString(string);
    
    constructor(uint a) public{
        age= a;
        emit logString("in Human Constructor");
    }
    
    function setAge(uint _age) public{
        age = _age;
    }
    
    function getAge() public view returns (uint){
        return age;
    }
}

contract Student is Human{
    constructor(uint a) Human(a) {
        emit logString("in Student constructor");
    }
}
    
    

contract DemoObject{
    function doSomething() public returns(uint){
        Student s = new Student(5);
        s.setAge(21);
        return s.getAge();
    }
}