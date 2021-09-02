pragma solidity ^0.8.0;
//require -- initial/input parameters validation
//revert  -- execution unexpected value
//assert  -- state parameter validation

contract Math{
    uint public result;
    error InvalidIntValue(uint, uint);
    event InvalidIntValue1(uint, uint);
    function add(uint a, uint b) public returns(uint) {
        require(a > 0 && b > 0,"Invalid Value: Should be greater than 0");
        emit InvalidIntValue1(a,b);
        assert(a+b < 255);
        result = a + b;
        return result;
    }
    function sub(uint a, uint b) public returns(uint){
        if( a == 0 && b == 0 ){
            // revert("InValid Value: Should be greater than 0");
            emit InvalidIntValue1(a, b);
            revert InvalidIntValue(a,b);
        }
        assert(b <= a);
        result = a - b;
    }
}

