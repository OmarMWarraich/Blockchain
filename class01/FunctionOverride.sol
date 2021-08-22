pragma solidity ^0.8.0;


contract Human{
    uint age;
    
    event logString(string);
    
    constructor(){
        emit logString("in Human Constructor");
    }
    
    function setAge(uint _age) virtual public{
        age = _age;
    }
    
    function getAge() public view returns (uint){
        return age;
    }
}

contract Student is Human{
    constructor() {
        emit logString("in Student constructor");
    }
    function setAge(uint _age) public override{
        if(_age < 16){
        }
    }
    // overload when function same but parameters differ
    function setAge(uint _age, uint _a) public{
        age = _age;
    }
}
    
    

contract DemoObject{
    function doSomething() public returns(uint){
        Human s = new Student();
        s.setAge(21);
        return s.getAge();
    }
}