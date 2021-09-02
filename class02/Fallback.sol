pragma solidity ^0.8.0;
/**
fallback is a function that does not take any arguments and does not return anything.

It is executed either when

1) a function that does not exist is called or
2) Ether is sent directly to a contract but receive() does not exist or msg.data is not empty
3) fallback has a 2300 gas limit when called by transfer or send.
 */ 

contract Fallback{
    event Log(string);
    event LogInt(uint);
    address public owner;
    
    constructor(){
        owner = msg.sender; // deployer is owner
    }
    
    fallback() external payable{
        payable(owner).transfer(msg.value);
        // emit LogInt(msg.value);
    }
    
    recieve external payable{   //2300 gas
        // value transactions
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

contract CallFallback{
    function doSomething(address payable _to) public payable{
        _to.transfer(msg.value); //2300
        // Fallback.transfer
        // value transaction
    }
}


