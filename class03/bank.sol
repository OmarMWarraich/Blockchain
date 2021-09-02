pragma solidity ^0.8.4;

contract CryptoBank {

    uint256 public bankCapital;
    address payable owner;
    event bankNotice(string);

    modifier isOwner (address _owner) {
        if (_owner == owner) {
            _;
        }
    }
    constructor() payable {

        require (msg.value >= 50 ether, "Owner must send 50 ether to start the work");
        owner = payable(msg.sender);
        bankCapital = msg.value;
        emit bankNotice("The bank started with paidup capital of 50 ether);
    }

    function closeBank() payable public isOwner(msg.sender) {
        selfdestruct(owner);
        emit bankNotice("The bank is now closed");
    }
}