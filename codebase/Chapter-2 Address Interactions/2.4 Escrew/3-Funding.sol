// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
	address public arbiter;
	address public beneficiary;
	address public depositor;
	constructor(address _arbiter, address _beneficiary) payable {
        depositor = msg.sender;
        arbiter = _arbiter;
        beneficiary = _beneficiary;
    }
}