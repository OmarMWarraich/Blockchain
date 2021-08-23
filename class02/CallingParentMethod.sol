pragma solidity ^0.8.0;

contract A {
    
    function getAddress() virtual public returns(address){
        return address(this);
    }
}

contract B is A{
    function getAddress() virtual override public returns(address){
        return address(this);
    }
    
}

contract C is B{
    function getAddress() virtual override public returns(address){
        return address(this);
    }
    
    function getParentAddress() public returns(address){
        return super.getAddress();
    }
    
}

contract Call{
    event Log(address);
    function doSomething() public returns(address){
        C c = new C();
        emit Log(address(c));
        emit Log(c.getAddress());
        emit Log(c.getParentAddress());
        return c.getAddress();
    }
}
