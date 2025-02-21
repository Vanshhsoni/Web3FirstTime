pragma solidity ^0.8.0;

contract VotingRewards {
    address owner;
    uint256 tokenReward;
    mapping(address => uint256) public tokenBalance;
    mapping(string => uint256) public votes;
    mapping(address => bool) public hasVoted;
    
    function setOwner() public {
        require(owner == address(0), "Owner already set");
        owner = msg.sender;
    }
    
    function setTokenReward(uint256 reward) public {
        require(msg.sender == owner, "Only owner can set reward");
        tokenReward = reward;
    }
    
    function vote(string memory candidate) public {
        require(!hasVoted[msg.sender], "Already voted");
        votes[candidate]++;
        tokenBalance[msg.sender] += tokenReward;
        hasVoted[msg.sender] = true;
    }
    
    function getVotes(string memory candidate) public view returns (uint256) {
        return votes[candidate];
    }
    
    function getTokenBalance(address voter) public view returns (uint256) {
        return tokenBalance[voter];
    }
}
