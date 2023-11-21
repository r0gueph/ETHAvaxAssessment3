# ETH+AVAX Assessment 3
## Description

This smart contract serves as the 3rd assessment project for Metacrafters's ETH + AVAX Course.

## Overview

This Solidity smart contract is a basic implementation of an ERC-20 token on the Ethereum blockchain. The contract incorporates key functionalities such as minting, transferring, and burning tokens. It also includes ownership control using the OpenZeppelin `Ownable` contract.

## Features

### ERC-20 

* The smart contract follows the ERC-20 standard, making it compatible with various decentralized applications and platforms that support ERC-20 tokens.

### Minting

* The owner of the smart contract can mint new tokens by calling the `mint` function. This allows for controlled issuance of tokens to specified addresses.

### Token Transfers

* The contract supports secure and efficient transfer of tokens between addresses. The `transfer` function enables users to send tokens to other valid Ethereum addresses.

### Token Burning

* The `burn` function allows any address to destroy a specified amount of their own tokens, effectively reducing the total supply.

### Ownership Control

* The smart contract utilizes the `Ownable` contract from OpenZeppelin, providing basic authorization control. The owner has exclusive access to certain functions like minting.

## Getting Started

### Prerequisites

- An Ethereum development environment (e.g., [Remix](https://remix.ethereum.org/), [Truffle](https://www.trufflesuite.com/truffle))

### Usage
1. Deploy the smart contract, providing a name and symbol for your token.
2. As the owner, use the mint function to create new tokens and allocate them to specific addresses.
3. Utilize the transfer function to send tokens securely to other valid Ethereum addresses.
4. Experiment with the burn function to destroy a specified amount of tokens.

## Authors
Zedric James Ramoso\
[r0gueph](https://github.com/r0gueph)

## License
This project is licensed under the MIT License
