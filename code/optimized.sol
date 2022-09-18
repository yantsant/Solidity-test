// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MinContract{
    function min(uint256 a, uint256 b) public pure returns (uint256 result){
        assembly{
            mstore(result, add(mul(a, add(eq(a, b), lt(a, b))), mul(gt(a, b),b)))
            return(result, 32)
        } 
    }
}