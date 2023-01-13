// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; 

contract SimpleStorage{

    uint256 public favorateNumber;

    function store(uint256 _favorateNumber) public{
        favorateNumber = _favorateNumber;
    }
    function retrieve() public view returns(uint256){
        return favorateNumber;
    }
}

// More about the functions
// https://docs.soliditylang.org/en/v0.8.17/contracts.html#functions 

// For the visibility
// https://docs.soliditylang.org/en/v0.8.17/contracts.html#visibility-and-getters

// view and pure functions, when called alone, don't spend gas.
// view used for just reading the function.
// pure function additionally disallowyou to read from blockchain stage. 