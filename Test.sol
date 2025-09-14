                    pragma solidity ^0.8.0;
                    
                    contract Test {
                        mapping(address => uint256) public balances;
                        
                        function deposit() public payable {
                            balances[msg.sender] += msg.value;
                        }
                        
                        function withdraw(uint256 amount) public {
                            require(balances[msg.sender] >= amount);
                            balances[msg.sender] -= amount;
                            payable(msg.sender).transfer(amount);
                        }
                    }
