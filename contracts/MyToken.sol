/*
   Step1: Installed Hardhat and dependencies like @openzeppelin
   Step2: Created MyToken contract
   Step3: Modified the "deploy.js" script for MyToken
   Step4: Modified the Hardhat.config.js file for the Goerli Eth testnetwork
          Added wallet private key and endpoint provider url
   Step5: in the CMD prompt run: npx hardhat compile
   Step6: In the CMD prompt run: npx hardhat run ./scripts/deploy.js --network goerli

*/

//SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

contract MyToken is ERC20 {
  
    constructor() ERC20("MyToken", "MYTKN"){
        _mint(msg.sender, 10000*10**18);
    }
}