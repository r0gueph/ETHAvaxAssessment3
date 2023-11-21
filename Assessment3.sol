// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor(string memory tokenName, string memory tokenSymbol) ERC20(tokenName, tokenSymbol) Ownable(msg.sender) {}

    function mint(address account, uint256 amount) public onlyOwner {
        require(account != address(0), "Invalid recipient address");
        require(amount > 0, "Mint amount must be greater than zero");

        _mint(account, amount);
    }

    function transfer(address account, uint256 amount) public override returns (bool) {
        require(account != address(0), "Invalid recipient address");
        require(amount > 0, "Transfer amount must be greater than zero");
        require(balanceOf(_msgSender()) >= amount, "Insufficient balance");

        _transfer(_msgSender(), account, amount);
        return true;
    }

    function burn(uint256 amount) external {
        require(amount > 0, "Burn amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");

        _burn(msg.sender, amount);
    }
}
