//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract functions {
    uint value;

    constructor(uint _initialValue) {
        value = _initialValue;
    }

    //View function
    function getValue() public view returns (uint) {
        return value;
    }

    //Pure function
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    //Payable function
    function updateValue(uint newValue) public payable {
        require(msg.value > 0, "Value cannot be 0");
        value = newValue;
    }
}

//Derived contract inheriting contract functions
contract DerivedContract is functions {
    //Constructor inherits the parent constructor with an initial value
    constructor(uint _initialValue) functions(_initialValue) {}

    //Inherited view function
    function getValueFromParent() public view returns (uint) {
        return getValue();
    }

    //Inherited pure function
    function addNumbers(uint a, uint b) public pure returns (uint) {
        return add(a, b);
    }

    //Inherited payable function
    function updateValueFromParent(uint newValue) public payable {
        updateValue(newValue);
    }
}
