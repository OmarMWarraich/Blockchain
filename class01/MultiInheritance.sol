pragma solidity ^0.8.0;


contract Human{
    uint age;
    
    event logString(string);
    
    constructor() public{
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
    constructor(){
        emit logString("in Student constructor");
    }
}
    
contract Teacher is Human{
    constructor(){
        emit logString("in Teacher Constructor");
    }    
}

contract StudentAndTeacher is Student,Teacher{
    constructor(){
        emit logString("in StudentAndTeacher Constructor");
    }    
}

contract DemoObject{
    function doSomething() public returns(uint){
        StudentAndTeacher s = new StudentAndTeacher();
        s.setAge(21);
        return s.getAge();
    }
}