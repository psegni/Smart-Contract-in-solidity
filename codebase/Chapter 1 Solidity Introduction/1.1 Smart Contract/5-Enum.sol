// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    enum Foods { Apple, Pizza, Bagel, Banana }

	Foods public food1  ;
	Foods public food2  ;
	Foods public food3  ;
	Foods public food4  ;
	constructor(){
		food1 = Foods.Apple;
		food2 = Foods.Pizza;
		food3 = Foods.Bagel;
		food4 = Foods.Banana;
	}
}