// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract FunctionTypes {
    uint256 public number = 5;

    // 默认function
    function add() external {
        number = number + 1;
    }

    // pure
    function addpure(uint256 _number) external pure returns(uint256 new_number) {
        new_number = _number + 1;
    }

}