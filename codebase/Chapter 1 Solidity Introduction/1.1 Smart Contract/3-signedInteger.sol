// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    int8 public a = 40;
    int8 public b = -10;
    int16 public difference;
    constructor(){
        difference = int16(a) - int16(b);
    }
}