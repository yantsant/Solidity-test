// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MinContract{
    function min(uint256 a, uint256 b) public pure returns (uint256){
        assembly{
            mstore(0x80, a)
            mstore(0xa0, b)
            return(add(0x80,mul(0x20,gt(a, b))), 0x20)
        }
    }
}