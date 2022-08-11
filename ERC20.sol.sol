// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.7.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.7.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.7.2/access/Ownable.sol";



// Below  there is constructor to setup ERC-20 Token and pre-mint a 10,000 token with
// decimal place upto 18
contract W3Dev is ERC20, ERC20Burnable, Ownable {



    constructor() ERC20("W3Dev", "WTD") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

// Below Function Helps in Minting New Tokens (Access - To Only Owner)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

}
