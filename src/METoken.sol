// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract METoken is ERC20 {
    address payable public  owner;

    constructor() ERC20("MASTERING ETHEREUM","MET"){
     owner = payable(msg.sender);
     _mint(owner, 70000000 * (10**decimals()));
    }
}
