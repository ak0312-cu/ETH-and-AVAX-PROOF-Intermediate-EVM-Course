//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract newcon{
    uint a;
    uint b;

    modifier is_admin{
        require(msg.sender==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,"Not an Admin");
    _;}

    function call(uint _a,uint _b) public is_admin{
        a=_a;
        b=_b;
    }


}