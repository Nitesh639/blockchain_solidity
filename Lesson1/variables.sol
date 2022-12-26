// SPDX-Lince-Identifire : MIT
pragma solidity ^0.8.7;  // always we have to define the version of the solidity
                        // ^ mean it's also accept the upper version than 0.8.7
                        // >=0.8.7 <0.9.0 it's mean version b/w 0.8.7 to less than 0.9.0
                        
// contract SimpleStorage working here like objects in JavaScript and other OOPs languages.
contract SimpleStorage{
    // boolen, unit, int address, bytes
    bool hasFavorateNumber = true;
    uint256 favorateNumber = 3;
    string favorateNumberInText = "five";
    address favorateNumberAddress = 0x9b9E14E272D19188ec33d2E7cc5FFA2758C5127E;
    bytes favorateNumberInBytes = "32";
}

// If we are not provide variable values than stored values are defalt.