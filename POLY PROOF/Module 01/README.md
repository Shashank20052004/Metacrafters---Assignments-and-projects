# |Naruto| NFT Collection on Polygon

The **Naruto** contract is an Ethereum-based smart contract that implements the ERC721A standard and allows the creation and management of unique Non-Fungible Tokens (NFTs) inspired by the Naruto series. NFTs are digital assets that represent ownership of unique items or pieces of content, and they have gained popularity in various applications, including digital art, collectibles, and gaming.

## Smart Contract Details

### SPDX License Identifier

```
// SPDX-License-Identifier: MIT
```

### Solidity Version

The contract is developed using Solidity version 0.8.9.

### ERC721A Import

The contract imports the `ERC721A` contract, which provides the implementation for the ERC721A standard.

### Contract Name and Symbol

```solidity
contract Naruto is ERC721A
```

The `Naruto` contract extends the `ERC721A` contract and represents a collection of unique NFTs inspired by the Naruto series.

### Maximum Quantity of Tokens

```solidity
uint256 public maxQuantity = 5;
```

The `maxQuantity` variable sets the maximum number of NFTs that can be minted within this collection. In this contract, the maximum limit is set to 5 tokens.

### Base URL for NFTs (IPFS Base URL)

```solidity
string baseUrl = "https://gateway.pinata.cloud/ipfs/QmaDLGW7KZ42W9eVitXwKxYZ1USYp8p4zk8Nu1CBHqXVvk";
```

The `baseUrl` variable defines the base URL for the NFTs' metadata. This URL will be combined with the token ID to form the complete URL for accessing each NFT's metadata stored on the IPFS platform.

### Prompt Description

```solidity
string public prompt = "Release your Chakra! ";
```

The `prompt` variable contains a descriptive prompt that is displayed to users of the NFT collection. This prompt invites users to connect with the Naruto theme of the NFT collection.

### Constructor

```solidity
constructor() ERC721A("Naruto", "NRT") {
    owner = msg.sender;
}
```

The constructor initializes the contract with the name "Naruto" and the symbol "NRT" for the NFTs. Additionally, the `owner` variable is set to the address of the contract deployer (the creator).

### Modifier: `onlyOwner`

```solidity
modifier onlyOwner() {
    require(msg.sender == owner, "Can be performed only by the owner.");
    _;
}
```

The `onlyOwner` modifier restricts certain functions to be executed only by the contract owner (the deployer). It checks if the caller's address matches the owner's address; otherwise, it will revert the transaction with an error message.

### Mint Function

```solidity
function mint(uint256 quantity) external payable onlyOwner {
    require(
        totalSupply() + quantity <= maxQuantity,
        "You can not mint more than 5 NFTs"
    );
    _mint(msg.sender, quantity);
}
```

The `mint` function allows the contract owner to mint a specified quantity of new NFTs. The `quantity` parameter indicates the number of NFTs to be minted. Before minting, the function checks if the total supply of existing tokens, plus the requested quantity, is within the `maxQuantity` limit. If the minting is allowed, the NFTs are created and assigned to the contract owner's address.

### Base URI Override

```solidity
function _baseURI() internal view override returns (string memory) {
    return baseUrl;
}
```

The `_baseURI` function is an internal function that overrides the base URI for the NFTs. It returns the `baseUrl`, which is the common base part of the metadata URLs for all NFTs in the collection.

### Prompt Description Function

```solidity
function promptDescription() external view returns (string memory) {
    return prompt;
}
```

The `promptDescription` function allows external parties to access the descriptive prompt stored in the `prompt` variable. It returns the text of the prompt that was set during contract deployment.

## Deploying and Interacting

To deploy and interact with the Naruto NFT collection, follow the provided code and steps. Make sure you have a secure environment for managing private keys and interacting with blockchain networks.

## License

This project is licensed under the [MIT License](LICENSE).
```

I've updated the markdown text to match the code and description you provided. Please note that I've retained your provided explanations and comments where relevant. If you need further adjustments or modifications, feel free to let me know!
```
## Video tutorial
https://www.loom.com/share/7fb11e1eb3d942b88718166cd1920699?sid=50193417-5cf1-4fac-9d2a-651b5ac9c652
