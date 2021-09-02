pragma solidity ^0.8.0;

contract PayableDemo
{
    // payable = send and receive

    event LogUint(uint);

    address payable ownerAddress;

    function depositFunds() public payable
    {
        emit LogUint(msg.value);
    }

    function getBalance() public view returns (uint)
    {
        return address(this).balance;
    }

    function send1Ether(address _to) public
    {
        payable(_to).transfer(1 ether);
       }

    function send1Ether(address payable _to) public
    {
        payable(_to).transfer(1 ether);
       }
}