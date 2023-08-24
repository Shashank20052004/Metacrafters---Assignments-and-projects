# Function and Error Control

This smart contract is designed to handle age verification and access control for certain content or functionalities based on a minimum age requirement. It utilizes Solidity programming language and is intended to be deployed on a blockchain platform that supports Solidity, such as Ethereum.

## Functionality
1. Contract successfully uses require() statement.
2. Contract successfully uses assert() statement.
3. Contract successfully uses revert() statement.

## Getting Started
### Prerequisites
To interact with this smart contract, you need:

A development environment like Remix (https://remix.ethereum.org/) or a local Ethereum development setup.
Basic knowledge of Ethereum and smart contracts.

## Installation

1. Clone the repository or create a new Solidity file.
2. Ensure that you have a compatible Solidity compiler, preferably version 0.8.0 or higher.
3. Compile the contract using the Solidity compiler.
4. Deploy the contract to an Ethereum-compatible blockchain network of your choice.

## Table of Contents
- Overview
- Contract Details
- Usage
- Error Handling
- License

## Contract Overview

The Age Verification smart contract defines a simple access control mechanism where users are required to meet a minimum age requirement in order to access certain content. The contract's main components include:

A constructor to set the minimum age requirement upon deployment.
A modifier named `verifyAgeModifier` that enforces the age verification requirement.
A function named `checkAccess` that checks whether a user is granted access based on their provided age.

## Contract Details
The contract consists of the following main components:

### Constructor
The constructor initializes the `minAge` variable with the minimum age requirement specified during contract deployment. This requirement is used for age verification.

#### Modifier: `verifyAgeModifier`
The `verifyAgeModifier` modifier encapsulates the age verification logic. It requires that the user's age is greater than or equal to the minAge requirement. If the verification fails, the contract reverts with an error message.

## Functions
### `constructor(uint256 _minAge)`
The constructor initializes the contract with the provided `_minAge` parameter, which sets the minimum required age for content access.

### `checkAccess(uint256 _userAge)`
This function is used to check if a user is eligible to access the content based on their provided age (`_userAge`). It first ensures that the user's age is greater than 0, and then verifies if the user's age meets the minimum requirement using the `verifyAgeModifier` modifier. If the age requirement is met, the function returns a success message. Otherwise, it reverts with an error message.

### `verifyAgeModifier(uint256 _userAge)`
This internal modifier encapsulates the age verification logic. It requires that the provided `_userAge` is greater than or equal to the `minAge` specified during contract deployment. If the condition is satisfied, the function or modifier that uses it is executed; otherwise, an error is thrown.

## Error Handling
The `require()` statement is used to raise an error if the specified condition is not met. In this case, the condition is that the user's age is at least the minimum age. If the condition is not met, the `require()` statement will raise an error with the specified message.
The `assert()` statement is used to raise an error if the specified condition is not met. However, unlike the `require()` statement, the `assert()` statement will not prevent the contract from executing. This means that if the `assert()` statement is triggered, the contract will continue to execute, but the result of the execution may be unexpected.

## License

This contract is licensed under the MIT License. You can find the license text in the source code file using the SPDX-License-Identifier tag.

## Compatibility

The contract is written in Solidity version 0.8.0. It should be compatible with Solidity compilers of the same version or higher.

## Contribution

Contributions to this project are welcome. Feel free to open issues and submit pull requests to suggest improvements or fix any identified issues.

## Video Tutorial

