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
        emit sendMessageEvent(lastMessageId, msg.sender, _text);
    }
}
