# MyToken Smart Contract

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Description

This Solidity smart contract implements a basic token named `MyToken` with the symbol `dGD`. The contract allows users to mint new tokens and burn existing tokens.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Prerequisites

- Solidity 0.8.18 compiler

## Installation


1. Install Solidity compiler (if not already installed).
2. Download or clone the code repository containing MyToken.sol.
3. Compile the MyToken.sol contract using the Solidity compiler.
4. Deploy the compiled MyToken contract to an Ethereum-compatible blockchain.
5. Interact with the deployed contract using the mint and burn functions.

## Usage
1. Deploy the compiled MyToken contract to an Ethereum-compatible blockchain using your preferred method (e.g., Remix, Truffle, etc.).
2. Interact with the deployed contract through its functions:

## `mint(address _receiver, uint256 _amount)`

Mint new tokens and allocate them to the specified _receiver.

`_receiver`(address): The address to which the minted tokens will be allocated.
`_amount` (uint256): The amount of tokens to mint.
```solidity
function mint(address _receiver, uint256 _amount) public
```
## `burn(uint256 _amount)`
Burn a specific amount of tokens belonging to the caller of the function.

`_amount` (uint256): The amount of tokens to burn.
```solidity
function burn(uint256 _amount) public
```
1. Make sure to handle errors and check the return values of function calls.

## Authors
Shashank Singh
GitHub :- @Shashank20052004
Contact:- Shashank88880@outlook.com

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Video Tutorial

