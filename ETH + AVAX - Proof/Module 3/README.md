# Minting Token on Local Hardhat Network
MyToken is an Ethereum ERC20 token contract with added ownership functionality. It allows for token minting, burning, and ownership management. This contract is written in Solidity and inherits from the OpenZeppelin ERC20 and Ownable contracts.

## Overview
This smart contract provides an ERC20 token with extended features for token management and ownership control. It supports minting new tokens, transferring tokens, and burning tokens. The contract follows the ERC20 token standard while enhancing functionality.

## ERC20 Token Standard
The contract adheres to the ERC20 token standard and offers the following fundamental capabilities:

- Token transfers between addresses.
- Inquiring account balances.
- Retrieving the total supply of tokens.

## Minting
The contract owner is granted the ability to mint new tokens and allocate them to specified accounts. Minting is restricted to the contract owner.

## Burning
Token holders have the power to burn (destroy) a specific quantity of their tokens, effectively reducing the overall token supply.

## Getting Started
To deploy and interact with the MyToken ERC20 contract on a local Hardhat network, follow these steps:

1. Use the `npx hardhat init` command to initialize a new Hardhat project.

2. Install the `@remix-project/remixd` package using npm i @remix-project/remixd to enable connecting your local filesystem to the Remix IDE.

3. Launch a local server to connect your local filesystem to Remix IDE using `npx remixd`.

4. Start a local Ethereum node for development and testing with `npx hardhat node`.

5. Open Remix IDE and change the workspace to localhost. Click the "Connect" button to establish the connection.

## Contract Overview
### Constructor
The contract constructor accepts two parameters:

`name`: The name of the ERC20 token.
`symbol`: The symbol of the ERC20 token.
### Functions
`mint(address account, uint256 amount)`: Allows the owner to mint new tokens and allocate them to the specified account.

`transfer(address recipient, uint256 amount)`: Transfers tokens from the sender to the specified recipient. This function overrides the ERC20 transfer function to incorporate custom logic.

`burn(uint256 amount)`: Destroys a specified amount of tokens from the sender's balance, effectively reducing the total supply.

## License
This smart contract is released under the MIT License. Refer to the LICENSE file for more information.

## Video Tutorial
