//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract messageContext {
    address public owner;
    uint public valueReceived;
    uint public gasLimit;

    constructor() {
        owner = msg.sender;
    }

    //Function to receive ether and store the amount received
    function receiveEther() external payable {
        valueReceived = msg.value;
    }

    //Function to demonstrate accessing gas-related functions
    function getGasDetails() external {
        gasLimit = gasleft();
    }

    //Function to get the sender's address
    function getSender() external view returns (address) {
        return msg.sender;
    }

    //Function to get the amount of wei sent with the message
    function getSentValue() external payable returns (uint) {
        return msg.value;
    }

    //Function to get the data sent with the message
    function getData() external pure returns (bytes memory) {
        return msg.data;
    }

    //Function to demonstrate reverting a transaction
    function revertTransaction() external pure {
        require(false, "Intentional revert");
    }
}
