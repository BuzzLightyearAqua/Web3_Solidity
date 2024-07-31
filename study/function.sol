// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract FunctionTypes {

    uint256 public number = 5;

    // 函数类型
    // function (<parameter types>) {internal|external} [pure|view|payable] [returns (<return types>)]
    // 默认function
    function add() external {
        number = number + 1;
    }

    // pure
    function addpure(uint256 _number) external pure returns(uint256 new_number) {
        new_number = _number + 1;
    }

    // view
    function addView() external view returns(uint256 new_number) {
        new_number = number + 1;
    }

    // internal：内部函数
    function minus() internal {
        number = number - 1;
    }

    // 合约内的函数可以调用内部函数
    function minusCall() external {
        minus();
    }

    // payable：递钱 能给合约支付ETH的函数
    function minusPayable() external payable returns(uint256 balance) {
        minus();
        balance = address(this).balance;
    }



}