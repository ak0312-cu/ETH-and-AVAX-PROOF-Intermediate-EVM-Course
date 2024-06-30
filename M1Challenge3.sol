//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Events {
    event Event1(address indexed sender, uint indexed amount);
    event Event2(uint indexed number);
    event Event3(string indexed message, uint indexed timestamp);

    function triggerEvents() public payable {
        emit Event1(msg.sender, msg.value);
        emit Event2(block.number);
        emit Event3("Hello Event!", block.timestamp);

    }
}
