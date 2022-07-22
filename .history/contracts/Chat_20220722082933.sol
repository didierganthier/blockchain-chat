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

    uint lastMessageId;

    event sendMessageEvent(uint indexed _id, address indexed _from, string _message);


}
