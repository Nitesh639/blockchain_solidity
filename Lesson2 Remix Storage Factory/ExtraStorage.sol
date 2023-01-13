// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage{
    function store(uint256 _favorateNumber) public override{
        // +5 
        // virtual
        // override
        favorateNumber = _favorateNumber + 5;
    }
}