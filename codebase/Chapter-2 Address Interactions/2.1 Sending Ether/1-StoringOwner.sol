// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;
    address public charity;
    receive() external payable{
    }
    constructor(address _charity ){
        owner = msg.sender;
        charity = _charity;
    }
    function tip() public payable {
        require(msg.value > 0, "Tip must be greater than 0");
        (bool success, ) = owner.call{value: msg.value}("");
        require(success, "Transfer failed");
    }
    function donate() public {
        uint256 balance = address(this).balance;
        require(balance > 0, "No funds to donate");
        address payable charityPayable = payable(charity);
        charityPayable.transfer(balance);
        selfdestruct(charityPayable);
    }
}