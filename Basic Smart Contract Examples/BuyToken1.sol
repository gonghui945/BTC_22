pragma solidity ^0.5.1;

contract BuyToken{
    
    mapping(address => uint256) public balances;
    address payable wallet;
    
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    
    function buyToken() public payable {
        // buy a token
        balances[msg.sender] += 1;
        // send ehter to the wallet
        wallet.transfer(msg.value);
    }
}