// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ArrayAndStruct{
    // 固定长度 Array
    uint[8] array1;
    bytes1[5] array2;
    address[100] array3;

    // 可变长度 Array
    uint[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;

    // 初始化可变长度 Array
    uint[] array8 = new uint[](5);
    bytes array9 = new bytes(9);

}

contract StructTypes{
    // 结构体 Struct
    struct Student{
        uint256 id;
        uint256 score; 
    }
    // 初始化student
    Student student
}
