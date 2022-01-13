pragma solidity ^0.8.9;

import '@openzeppelin/contracts/token/ERC1155/ERC1155.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract Nft is ERC1155, Ownable{
    uint256 public constant ARTWORK = 0; 
    uint256 public constant PHOTO = 1;
    constructor () ERC1155("") {
        _mint(msg.sender, ARTWORK, 1, "");
        _mint(msg.sender, PHOTO, 2, "");

    }

    function mint(address to,uint256 id,uint256 amount) onlyOwner public 
    {
        _mint(to, id, amount, "");
    }

    function burn(address from, uint256 id, uint256 amount) public {
        _burn(from, id, amount);
    }

}