// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Import this file to use console.log
import "hardhat/console.sol";

contract Chat {
    
    struct Message {
        uint id;
        address from;
        string message;
    }

    event sendMessageEvent(uint indexed _id, address indexed _from, string _message);

    uint lastMessageId;

    function sendMessage(string memory _text) public {
        lastMessageId++;

        // loads the message into the list.
        messageList[messageIdCounter] = Message(
        lastMessageId,
        msg.sender,
        _text
        );

        emit sendMessageEvent(lastMessageId, msg.sender, _text);
    }

    mapping(uint => Message) public messagesList;
    
    function listMessages() public constant returns (uint[]){
        if(lastMessageId == 0) {
            return new uint[](0);
        }

        uint[] memory ids = new uint[lastMessageId];

           for (uint i = 1; i <= lastMessageId; i++) {
      
      // if the sender is different than me.
      if(messages[i].sender != msg.sender) {
        ids[numOfMessages] = messagesList[i].id;
      }
    }
    return ids;
    }
}
