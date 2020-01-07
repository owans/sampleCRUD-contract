pragma solidity >=0.4.22 <0.6.0;

contract MessageStorage{
    mapping(address => uint) internal messageStorage;
    string[] messages;
}