pragma solidity ^0.8.0;

//address.call, address.delegatecall, address.staticcall

contract Calculator{
    function add(address math, uint a, uint b) public returns(bool success, bytes memory result){
        bytes memory method = abi.encodeWithSignature("add(uint256,uint256)",a,b);
        (success,result) = math.call(method);
    }
}