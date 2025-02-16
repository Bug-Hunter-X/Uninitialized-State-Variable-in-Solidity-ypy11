# Uninitialized State Variable in Solidity

This example demonstrates a common error in Solidity: using an uninitialized state variable.  The `balances` mapping is declared, but not initialized, leading to unexpected behavior.

## Bug

The `balanceOf` function attempts to return the value from the `balances` mapping, however, this mapping is never initialized.  This could result in unexpected values (usually zero), potentially leading to incorrect balances and vulnerabilities.

## Solution

The solution initializes the `balances` mapping in the constructor, ensuring that each address starts with a balance of zero.  This addresses the uninitialized variable issue, preventing unexpected behavior.

## Usage

The provided Solidity files illustrate the erroneous and corrected code. You can compile and deploy these contracts to observe the effects of uninitialized state variables.