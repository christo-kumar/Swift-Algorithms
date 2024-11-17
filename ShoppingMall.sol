// SPDX-License-Identifier: GPL-3.0

//Compiler Version for solidity
pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract DataTypes {
    
    struct Shop {
        string ownerName;
        string shopName;
        uint ownerAge;
        address ownerAddress;
        bytes ownerDP;
        bool isSmallScale;
    }

    Shop public firstShop;
    Shop[] public shoppingMall;

    constructor() {
        firstShop = Shop("Abhinav", "Four Blocks", 65, msg.sender, "someBase64String", false);
        shoppingMall.push(firstShop);
    }

    function logShop() public view {
        for(uint i; i<shoppingMall.length;i++){
            Shop memory shop = shoppingMall[i];
            console.log('OwnerName: ', shop.ownerName);
            console.log('OwnerName: ', shop.ownerName);
        }
    }
}