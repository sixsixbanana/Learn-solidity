// SPDX-License-Identifier:MIT
//
pragma solidity ^0.8.4;

contract DataStorage{
    
    uint[] x = [1,2,3];   // 状态变量：数组 x

    function fStorage() public{
        //声明一个storage的变量xStorage，指向x。修改xStorage也会影响x
        uint[] storage xStorage = x;
        xStorage[0] = 100;
    }

    function fMemory() public view{
        //声明一个Memory的变量xMemory，复制x。修改xMemory不会影响x
        uint[] memory xMemory = x;
        xMemory[0] = 100;
        xMemory[1] = 200;
        uint[] memory xMemory2 = x;
        xMemory2[0] = 300;
    }

}

contract Variales{
    //状态变量
    uint public x = 1;
    uint public y;
    string public z;

    function foo() external{
        x = 5;
        y = 2;
        z ="sixsixbanana";
    }

    //局部变量
    function bar() external pure returns(uint){
        uint xx = 1;
        uint yy = 3;
        uint zz = xx + yy;
        return(zz);
    }

    //全局变量
    function global() external view returns(address, uint, bytes memory){
        address sender = msg.sender;
        uint blockNum = block.number;
        bytes memory data = msg.data;
        return(sender, blockNum, data);
    }

}

