// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 

contract SimpleStorage{

    uint256 favorateNumber;

    // People public person = People ({ favorateNumber:2, name: "Nitesh"});
    
    struct People {
        uint256 favorateNumber;
        string name;
    }

    People[] public people;

    mapping(string => uint256) public nameToFavorateNumber;

    function store(uint256 _favorateNumber) public virtual{
        favorateNumber = _favorateNumber;
    }

    // virtual which thinks you want to change keep it virtual

    function retrieve() public view returns (uint256){
        return favorateNumber;
    }

    
    function addPerson(string memory _name, uint256 _favorateNumber) public{
        people.push(People(_favorateNumber,_name));
        nameToFavorateNumber[_name] = _favorateNumber;
    }
}
