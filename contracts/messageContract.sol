pragma solidity >=0.4.22 <0.6.0;

import "./messageStorage.sol";

contract Messenger is MessageStorage{

     address owner;
     
    constructor() public{
        owner = msg.sender;
    }

    modifier onlyOwner() {
       require(msg.sender == owner);
        _;
    }
        // *** Getter Methods ***
    function addMessage(string memory newMessage) public onlyOwner {
        messages.push(newMessage);
    }
    function getMessagesByIndex(uint msgIndex) public view returns(string memory) {
        return messages[msgIndex];
    }
    function getMessageIndex(address msgAddress)public view returns(uint){
        return messageStorage[msgAddress];
    }
    function countMessage() view public returns(uint){
        return messages.length;
    }
    function msgIndex(uint index)view public returns(uint){
    index = countMessage();
    }

}