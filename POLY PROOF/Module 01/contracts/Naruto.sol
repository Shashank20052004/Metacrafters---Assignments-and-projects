// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract Naruto is ERC721A {
    address public owner;

    uint256 public maxQuantity = 5;

    string baseUrl =
        "https://gateway.pinata.cloud/ipfs/QmaDLGW7KZ42W9eVitXwKxYZ1USYp8p4zk8Nu1CBHqXVvk";

    string public prompt = "Release your Chakra! ";

    constructor() ERC721A("Naruto", "NRT") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Can be performed only by the owner.");
        _;
    }

    function mint(uint256 quantity) external payable onlyOwner {
        require(
            totalSupply() + quantity <= maxQuantity,
            "You can not mint more than 5 NFTs"
        );
        _mint(msg.sender, quantity);
    }

    function getBalance(address _owner) external view returns (uint256) {
        return balanceOf(_owner);
    }

    function _baseURI() internal view override returns (string memory) {
        return baseUrl;
    }

    function promptDescription() external view returns (string memory) {
        return prompt;
    }
}
