// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract NewSelfContract {

    struct Numbers {
    uint256 value;
    uint256 secondValue;
    uint256 thirdValue;
}
Numbers public numbers;

address public owner;

    event ValueSet(address indexed caller, uint256 newValue);
event SecondValueSet(address indexed caller, uint256 newSecondValue);

    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner,"Not the owner");
        _;
    }
    
event ThirdValueSet(address indexed caller, uint256 newValue);

function setValue(uint256 _value) public onlyOwner {
    numbers.value = _value;
    emit ValueSet(msg.sender, _value);
}

function setSecondValue(uint256 _secondValue) public onlyOwner {
    numbers.secondValue = _secondValue;
    emit SecondValueSet(msg.sender, _secondValue);
}

function setThirdValue(uint256 _thirdValue) public onlyOwner {
    numbers.thirdValue = _thirdValue;
    emit ThirdValueSet(msg.sender, _thirdValue);
}


    function getBoth() public view returns (uint256, uint256) {
    return (numbers.value, numbers.secondValue);
}

function getAll() public view returns (uint256, uint256, uint256) {
    return (numbers.value, numbers.secondValue, numbers.thirdValue);
}
}
