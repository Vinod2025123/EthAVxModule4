# DegenToken Solidity Smart Contract

## Overview

This Solidity smart contract implements the DegenToken, an ERC20 token with additional functionalities such as minting, transferring, burning, and purchasing NFT items. The contract owner has exclusive privileges to mint and burn tokens.

## Installation

1. Ensure you have a compatible development environment with Solidity compiler version ^0.8.
2. Install the OpenZeppelin library:
3. Deploy the contract to your desired Ethereum network.

## Contract Details

- **Name**: DegenToken
- **Inherits from**: ERC20
- **License**: MIT

## Usage

1. **Constructor**:

Initialize the contract with the desired initial owner address, and set the name and symbol of the token.


constructor(address initialOwner) ERC20("Degen", "DGN")

## Modifiers:

- onlyOwner: Restricts access to certain functions only to the owner.

## Functions:

- mint: Mint new tokens and assign them to a specified address.

- function mint(address to, uint256 amount) public onlyOwner
- transferrr: Transfer tokens from the sender's address to the specified address.

- function transferrr(address recipient, uint256 amount) public returns (bool)
- purchase: Purchase NFT items using tokens.

- function purchase(uint256 itemId) public
- burnnn: Burn tokens from the sender's address.

- function burnnn(uint256 amount) public onlyOwner
- balanceOff: Get the balance of tokens for a specific account.

function balanceOff(address account) public view returns (uint256)
## Security Considerations
- Ensure that only trusted entities are designated as owners to prevent unauthorized access to critical functions.
- Implement access control measures to restrict certain actions to specific roles or addresses.
- Use caution when purchasing NFT items, ensuring that sufficient token balance is available.

## License
- This smart contract is licensed under the MIT License. See the LICENSE file for details.



