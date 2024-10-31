// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

contract NumberStorage{
    uint public numero = 0;

    
    function setNumber(uint dato) public {
        require(dato > 10, "Solo se permiten numeros mayores a 10");
        numero = dato;
    }

    function retrieveNumber() public view returns (uint){
        return numero;
    }
}
