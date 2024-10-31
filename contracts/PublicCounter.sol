// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

contract PublicCounter{
    uint public cuenta = 0;
    address public propietario;

    constructor(){
        propietario = msg.sender;
    }

    function increment() public{
        cuenta = cuenta+1;
    }

    function resetCount() public{
        require(msg.sender == propietario, "Solo el propietario puede acceder a esta funcion");
        cuenta =0;
    }

}
