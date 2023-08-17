// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public tokenName = "digiGOLD";
    string public tokenAbbrv = "dGD";
    uint256 public totalSupply = 0;

    mapping(address => uint256) public balances;

    function mint(address _receiver, uint256 _amount) public {
        totalSupply += _amount;
        balances[_receiver] += _amount;
    }

    function burn(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        totalSupply -= _amount;
        balances[msg.sender] -= _amount;
    }
}
