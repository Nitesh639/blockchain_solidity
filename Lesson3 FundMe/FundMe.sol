// Get the funds from user
// withdraw the funds
// Set the min value

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract fundMe{
    uint256 public usdPriceMin = 5;
    function fund() public payable {
        // Set the min amount
        require(getConversionRate(msg.value) >= usdPriceMin, "Not posible");       // 1e18 = 1 ether 
    }
    function getPrice() public view returns(uint256){
        (,int256 price,,,) = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e).latestRoundData();
        return uint256(price * 1e10);
    }

    function getVersion() public view returns (uint256){
        return AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e).version();
    }
    function getConversionRate(uint256 ethAmount) public view returns(uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUSD = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUSD;
    }
}