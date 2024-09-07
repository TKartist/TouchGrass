// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Lock {
    string public name;
    string public nickname;
    uint256 public age;
    address public referee_id;
    address public god_id
    address public owner_id;
    uint256 public score;


    // Constructor to initialize the profile data at deployment
    constructor(string memory _name, uint256 _age, address memory referee_id, address memory _god_id) {
        name = _name;
        age = _age;
        referee_id = _parentName;
        god_id = _god_id;
        owner = msg.sender;  // The address that deploys the contract is the owner
    }

    // Function to update the user score on the platform
    function updateScore(uint256 _score_up) public {
        require(msg.sender == god_id, "Only the system can update the profile");
        score = score + _score_up;
    }

    // Function to retrieve profile information
    function getProfile() public view returns (string memory, string memory, uint256 memory, uint256 memory) {
        return (name, nickname, age, score);
    }

    // Function to retrieve referee address
    function getReferee() public view returns (address memory) {
        return (owner_id)
    }
}
