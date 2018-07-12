pragma solidity ^0.4.24;

contract UninitializedStotagePointer {
    address public owner;

    struct MyStruct{
        address someField;
    }
    
    function rewriteOwner(address _where) public {
        MyStruct tmp;
        tmp.someField = _where;
    }
}