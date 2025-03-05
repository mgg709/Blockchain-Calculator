//SPDX-License-Identifier: LGPL-3.0-only

pragma solidity 0.8.24;

contract RequireTest {

    address public admin;

    constructor(address admin_) {
        admin = admin_;
    }

    // Function: msg.sender sea igual a admin
    function checkAdmin() public view {
        if (msg.sender != admin) revert();
    }

    function checkAdminRequire() public view {
        require(msg.sender == admin, "Msg.sender is not admin");
    }
}