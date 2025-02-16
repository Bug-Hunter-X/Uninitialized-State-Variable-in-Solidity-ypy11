```solidity
contract Token {
    mapping(address => uint256) balances;
    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() public {
        // Initialize balances
    }

    function transfer(address _to, uint256 _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }
}
```