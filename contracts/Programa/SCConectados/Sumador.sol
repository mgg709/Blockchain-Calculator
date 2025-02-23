//SPDX-License-Identifier: LGPL-3.0-only

pragma solidity 0.8.24;

import "./interfaces/IResultado.sol";

contract Sumador {

    //Object: Interfaz + address smart contract que se quiere inicializar
    address resultado;

    constructor(address resultado_) {
        resultado = resultado_;
    }

    function addition(uint256 num1_, uint256 num2_) external {
        uint256 resultado_ = num1_ + num2_;
        IResultado(resultado).setResultado(resultado_);
    }
}