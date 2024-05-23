// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    function double(uint x) public pure returns(uint result){
        result = x * 2;
    }
    function double(uint x, uint y) public pure returns(uint, uint){
        uint doubleX = double(x);
        uint doubleY = double(y);
        return (doubleX, doubleY);
    }
}