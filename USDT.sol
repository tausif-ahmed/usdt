// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FlashUSD is ERC20, ERC20Burnable, Ownable {
    uint8 private _decimals = 6;
    
    constructor() ERC20("Flash USDT", "USDT") Ownable(msg.sender) {
        uint256 initialSupply = 100_000_000_000 * 10**_decimals;
        _mint(msg.sender, initialSupply);
    }
    
    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }
    
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
