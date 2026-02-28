# New-self-contract# New Self Contract

This repository contains my first Solidity smart contract built and tested in Remix.

## What this contract includes
- Struct to store multiple values
- Setters and getters
- Events to track state changes
- Owner-based access control (`onlyOwner`)
- Deployed and tested using Remix VM

## Why I built this
This contract was created as a hands-on learning project while studying Solidity fundamentals.

## Tools used
- Solidity ^0.8.18
- Remix IDE
- GitHub

# New-self-contract

A simple Solidity practice contract built in Remix.

## Features
- Stores three numbers (value, secondValue, thirdValue)
- Owner-only setters + reset
- Events emitted for frontend listening
- Two-step ownership transfer:
  - `proposeNewOwner(address)`
  - `acceptOwnership()`
  - optional `cancelOwnershipTransfer()`

## How to use (Remix)
1. Open Remix
2. Create `NewSelfContract.sol`
3. Paste code from this repo
4. Compile with Solidity ^0.8.18
5. Deploy
6. Try:
   - setValue / setSecondValue / setThirdValue
   - reset
   - proposeNewOwner (from owner)
   - acceptOwnership (from pending owner)
## How to run in Remix

1. Open Remix: https://remix.ethereum.org
2. In Remix, create a new file named `NewSelfContract.sol`
3. Copy/paste the contract code from this repo into that file
4. Go to **Solidity Compiler**:
   - Select compiler version that matches the pragma (ex: 0.8.18)
   - Click **Compile**
5. Go to **Deploy & Run Transactions**:
   - Environment: **Remix VM**
   - Click **Deploy**
6. Test functions:
   - Call `setValue`, `setSecondValue`, `setThirdValue`
   - Call `getBoth` and `getAll` to read values
   - Check **Logs** to see emitted events
