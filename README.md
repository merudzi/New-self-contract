# New Self Contract

This repository contains my first Solidity smart contract, built and tested in Remix as a hands-on learning project.

## What this contract includes

- Struct to store multiple values
- Owner-based access control (`onlyOwner`)
- Setters and getters
- Events emitted for frontend listening
- Reset functionality
- Two-step ownership transfer

## Features

- Stores three numbers:
  - `value`
  - `secondValue`
  - `thirdValue`
- Owner-only setters and reset
- Events emitted on state changes
- Two-step ownership transfer:
  - `proposeNewOwner(address)`
  - `acceptOwnership()`
  - Optional `cancelOwnershipTransfer()`

## Why I built this

This contract was created as a hands-on learning project while studying Solidity fundamentals, focusing on understanding state, access control, events, and ownership patterns.

## How to run in Remix

1. Open Remix: https://remix.ethereum.org  
2. Create a new file named `NewSelfContract.sol`  
3. Copy and paste the contract code from this repository  
4. Go to **Solidity Compiler**:
   - Select compiler version matching the pragma (e.g. `0.8.18`)
   - Click **Compile**
5. Go to **Deploy & Run Transactions**:
   - Environment: **Remix VM**
   - Click **Deploy**
6. Test functions:
   - `setValue`, `setSecondValue`, `setThirdValue`
   - `reset`
   - `getBoth`, `getAll`
   - Ownership flow:
     - `proposeNewOwner` (current owner)
     - `acceptOwnership` (pending owner)
7. Check **Logs** to see emitted events

## Tools used

- Solidity ^0.8.18
- Remix IDE
- GitHub
