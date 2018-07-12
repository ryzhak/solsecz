pragma solidity ^0.4.24;

contract Reentrancy {
    mapping (address => uint) public balances;

    constructor() payable {
        put();
    }

    function put() payable {
        balances[msg.sender] = msg.value;
    }

    function get() {
        if (!msg.sender.call.value(balances[msg.sender])()) {
            revert();
        }
        balances[msg.sender] = 0;
    }

    function() {
        revert();
    }
}