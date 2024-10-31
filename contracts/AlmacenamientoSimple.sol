// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

contract AlmacenamientoSimple{
    uint public datoAlmacenado;

    
    function Establecer(uint dato) public{
        datoAlmacenado= dato;
    }

    function Obtener() public view returns (uint){
        return datoAlmacenado;
    }
}