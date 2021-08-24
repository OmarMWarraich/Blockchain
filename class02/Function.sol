pragma solidity ^0.4.0;


contract Demo{
    // state
    uint a = 4;
    function doSomething(uint _a)  public returns(uint){
        a = _a; // state change
        return a;
    }
    function getA() public view returns(uint) {
        return a;
    }
}