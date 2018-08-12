pragma solidity ^0.4.16;

/**
 * Stops the owner to perform the self-destruction of the contract.
 */
contract Suicidal {
  address owner;
  function suicide() public returns (address) {
    require(owner == msg.sender);
    selfdestruct(owner);
  }
}
contract C is Suicidal {
  address owner;
  function C() {
    owner = msg.sender;
  }
}