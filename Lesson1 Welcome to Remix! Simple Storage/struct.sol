// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; 

contract SimpleStorage{

    uint256 public favorateNumber;
    // People public person = People ({ favorateNumber:2, name: "Nitesh"});
    People[] public people;
    struct People {
        uint256 favorateNumber;
        string name;
    }

    function store(uint256 _favorateNumber) public{
        favorateNumber = _favorateNumber;
    }
    
    function addPerson(string memory _name, uint256 _favorateNumber) public{
        people.push(People({favorateNumber: _favorateNumber, name:_name}));
                // it's also vaild formate.
                // people.push(People(_favorateNumber,_name));
    }
}
