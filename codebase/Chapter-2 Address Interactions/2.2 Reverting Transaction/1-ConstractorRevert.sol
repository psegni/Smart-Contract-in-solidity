// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;
    constructor() payable {
        require(msg.value >=1 ether, "Insufficient ether deposit");
        owner = msg.sender;
    }
    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }
}