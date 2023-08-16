# NFT Collection Management

This JavaScript code provides a simple mechanism to manage a collection of NFTs (Non-Fungible Tokens). It includes functions for minting new NFTs, listing existing NFTs' metadata, and obtaining the total supply of NFTs in the collection.

## Description

This JavaScript code defines a collection called `nftCollection` to store NFT objects. It includes the following functions:

- `mintNFT(uid, name, state, grade)`: This function creates an NFT object using the provided parameters and adds it to the `nftCollection`.

- `listNFTs()`: This function iterates through the `nftCollection` array and prints the metadata (uid, name, state, and grade) of each NFT.

- `getTotalSupply()`: This function returns the total number of NFTs created in the collection.

## Getting Started

### Installation

1. Download the JavaScript code file.
2. Place the file in your desired project directory.

### Execution

To execute the program:

1. Open a terminal or command prompt.
2. Navigate to the directory containing the JavaScript file.
3. Run the JavaScript file using Node.js by entering the following command:

## Usage

1. The `mintNFT` function is used to add NFTs to the collection. It takes four parameters: `uid`, `name`, `state`, and `grade`.
```javascript
mintNFT("22BCS80150", "Shashank", "Bihar", "A");
```
2. The `listNFTs` function iterates through the collection and prints the metadata of each NFT.
```javascript
listNFTs();
```
3. The `getTotalSupply` function returns the total number of NFTs in the collection.
```javascript
const totalSupply = getTotalSupply();
console.log("Total NFTs: " + totalSupply);
```

## Authors

Contributors names and contact info:

Shashank Singh                           
Contact: Shashank88880@outlook.com

## License 
This project is licensed under the MIT License - see the LICENSE.md file for details

## Video Tutorial/Execution
https://www.loom.com/share/6c820071650a46e6ae63b49ecf1e341a?sid=84004d99-e3bf-42c5-b115-d08e8c9ee3d7
