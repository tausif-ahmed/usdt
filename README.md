# Tether USD (USDT) Smart Contract

A Solidity implementation of the Tether USD (USDT) ERC20 token.

## Features

- **Name**: Tether USD
- **Symbol**: USDT
- **Decimals**: 6 (to match actual USDT)
- **Total Supply**: 200 Billion USDT
- **Functionality**: Mintable and burnable

## Technical Details

This implementation uses OpenZeppelin's ERC20, ERC20Burnable, and Ownable contracts as a foundation. The contract allows:

- The owner to mint new tokens
- Any token holder to burn their tokens
- A fixed decimal of 6 (instead of the ERC20 default of 18)

## Dependencies

- OpenZeppelin Contracts v5.0.0 