# Transactions

A transaction in Flow is defined as an arbitrary-sized block of Cadence code that is authorized by one or more accounts.

When an account autorizes a transaction, the code in the transaction has access to the authorizers' private storage.

An account authorizes a transaction by performing a cryptographic signature on the transaction with the account's private key, which should only be accessible to the account owner.

In addition to being able to access the authorizer's private assets, transactions can also read and call functions in public contracts, and access public functions in the other user's accounts.

Transactions are divided into two main phases, prepare abd execute.

The prepare phase is required and is used to identify the account(s) that will sign the transaction. It's also used when the transaction needs access the accoun(s) that signed the transaction. The latter is not needed for this simple transaction.