// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

//Importación de modulos que necesitaremos para este proyecto.
import "@openzeppelin/contracts@4.5.0/token/ERC1155/ERC1155.sol";

contract erc1155 is ERC1155{

    //Variables declaración - cada uno tiene que ir con un id distinto.
    uint256 public constant GOLD = 0;
    uint256 public constant SILVER = 1;
    uint256 public constant THOR_HAMMER = 2;
    uint256 public constant SWORD = 3;
    uint256 public constant SHIELD = 4;

    //Constructor del Smart Contract
    constructor() ERC1155("https://game.example/api/item/{id}.json"){
        _mint(msg.sender, GOLD, 10**18, "");
        _mint(msg.sender, SILVER, 10**27, "");
        _mint(msg.sender, THOR_HAMMER, 1, "");
        _mint(msg.sender, SWORD, 10**9, "");
        _mint(msg.sender, SHIELD, 10**8, "");
    }
}
