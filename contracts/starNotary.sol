// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;


contract StarNotary{
    string public  starName;
    address public starOwner;


    event starClaimed(address owner);

    // constructor () public {
    //     starName = "Awesome Udacity Star";
    // }


    function claimStar() public {
        starOwner = msg.sender;

        emit starClaimed(msg.sender);
    }

    function setStarName(string memory name) public {
        starName = name;
    }
}