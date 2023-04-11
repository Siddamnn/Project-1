// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // public variables here
    string public tokenName = "TUG";
    string public tokenAbbrv = "T";
    uint public supply = 0;
    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _addr, uint _value) public {
        supply += _value;
        balances[_addr] += _value;
    }

    // burn function
    function burn(address _addr, uint _value) public returns (string memory) {
        if (balances[_addr] >= _value) {
            supply -= _value;
            balances[_addr] -= _value;
            return "Burn Successful!";
        }
        return "Insufficient tokens!!!";
    }
}
