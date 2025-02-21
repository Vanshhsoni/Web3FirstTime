# Voting Rewards Smart Contract

## Overview
The **VotingRewards** smart contract allows users to vote for candidates while earning token rewards. This contract ensures that each voter can only vote once and tracks the votes and token balances.

## Features
- Users can vote for a candidate and receive tokens as a reward.
- The owner can set the token reward amount.
- The contract prevents multiple votes from the same user.
- Votes and token balances can be queried.
- Deployed on the **Edu Chain** blockchain.

## Deployed Address
**0x8223555313b9Ca629E890025d2849e769Db889eb** (Edu Chain)

## Functions
### `setOwner()`
- Sets the contract owner (can only be set once).
- Restriction: Can only be called once.

### `setTokenReward(uint256 reward)`
- Allows the owner to define the reward per vote.
- Restriction: Only the owner can call this function.

### `vote(string memory candidate)`
- Allows a user to vote for a candidate.
- Restriction: Each user can vote only once.
- Increases the candidate's vote count and rewards the voter with tokens.

### `getVotes(string memory candidate) public view returns (uint256)`
- Returns the total votes a candidate has received.

### `getTokenBalance(address voter) public view returns (uint256)`
- Returns the token balance of a voter.

## Deployment & Usage
1. Deploy the contract on an Ethereum-compatible blockchain.
2. Call `setOwner()` to assign an owner.
3. Use `setTokenReward()` to define the token reward per vote.
4. Users call `vote()` to vote and receive tokens.
5. Votes and token balances can be queried using `getVotes()` and `getTokenBalance()`.

## License
This contract is provided "as is" without any warranties. Use at your own risk.

