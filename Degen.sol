// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {

    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    mapping(address => bool) public hasPurchased;

    struct Item {
        string name;
        uint256 price;
    }

    Item[] public items;

    constructor(address initialOwner) ERC20("Degen", "DGN") {
        owner = initialOwner;

        items.push(Item("SmonkyNFT", 100));
        items.push(Item("SWardt NFT", 200));
        items.push(Item("Slow Engine NFT", 300));
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transferrr(address recipient, uint256 amount) public  returns (bool) {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(_msgSender()) >= amount, "Insufficient balance");

        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function purchase(uint256 itemId) public {
        require(itemId < items.length, "Invalid item ID");
        require(!hasPurchased[msg.sender], "Already purchased");

        Item memory item = items[itemId];
        uint256 price = item.price;

        require(balanceOf(_msgSender()) >= price, "Insufficient balance");

        _burn(_msgSender(), price);
        hasPurchased[msg.sender] = true;
    }

    function burnnn(uint256 amount) public onlyOwner {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(_msgSender()) >= amount, "Insufficient balance");

        _burn(_msgSender(), amount);
    }

    function balanceOff(address account) public view  returns (uint256) {
        return super.balanceOf(account);
    }
}
