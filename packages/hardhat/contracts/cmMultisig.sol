pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

contract CmMultisig {

    uint8 signersNeeded;
    address owner;

    event deposed (address from, uint256 value);
    constructor (uint8 _signers) {
        signersNeeded = _signers;
        owner = msg.sender;
    }

    //Should have a deposit function that anybody can call

    function deposit() payable public{
        emit deposed (msg.sender, msg.value);
    }

    //AskWithdraw function , ask the permision to withdraw and all signersNeeded has to vote to aprouve or not
    function withdraw (uint256 _amount) internal {
        require (_amount > 0, "test");
    }
}