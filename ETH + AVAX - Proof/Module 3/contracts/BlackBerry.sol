// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// MyToken is an ERC20 token contract with added ownership functionality.
contract MyToken is ERC20, Ownable {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    // Mint new tokens to the specified account.
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    // Burn (destroy) tokens from the sender's balance.
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Override ERC20 transfer function to add custom functionality.
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        // Only allow transfers to addresses that have been approved by the sender.
        require(isApprovedForTransfer(msg.sender, recipient));

        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    // Function to approve an address to transfer tokens on behalf of the sender.
    function approve(address spender, uint256 amount) public override returns (bool) {
        _approve(_msgSender(), spender, amount);
        return true;
    }

    // Function to get the allowance for an address to transfer tokens on behalf of the sender.
    function allowance(address owner, address spender) public view override returns (uint256) {
        return super.allowance(owner, spender);
    }

    // Function to revoke an address's approval to transfer tokens on behalf of the sender.
    function revokeApproval(address spender) public returns (bool) {
        _approve(_msgSender(), spender, 0);
        return true;
    }

    // Helper function to check if an address is approved for transferring tokens.
    function isApprovedForTransfer(address sender, address recipient) internal view returns (bool) {
        return allowance(sender, recipient) >= balanceOf(sender);
    }
}
