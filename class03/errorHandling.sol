pragma solidity ^0.8.0;

contract errorHandling{
    event logString(string);
    modifier checkValue(uint value) {
        require(value >= 1 ether, "Amount should be greater than or equal to 1 ether")
        emit logString("modifier call one)
        _;
        require(value >= 1 ether, "Amount should be greater than or equal to 1 ether")
        emit logString("modifier call Two)
        _;
    }
    
    function buy() public payable checkValue(msg.value) {
        emit logString("buy method call");
    }

    function getBalance() public view returns (uint){
        return address(this).balance;
    }
}