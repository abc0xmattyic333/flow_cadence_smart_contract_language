# Contract Area

The first area is the **contract area** or account.contracts.

This is the area that stores smart contracts deployed to the account. These contracts contain type definitions, fields, and functions that relate to common functionality. There is no limit to the number of smart contracts an account can store.

**Much of the functionality that you'd find in a Solidity smart contract is instead written in transactions or scripts for Cadence apps. These exist outside the smart contract, which means you don't need to anticipate absolutely everything you might want to do or view before deploying the contract.**

The information in the contract area cannot be directly accessed in a transaction unless the transaction imports the contract or returns (reads) a copy of the code deployed to and account.

The owner of an account can directly add or update contracts are deployed to it.