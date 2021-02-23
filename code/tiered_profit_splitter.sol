pragma solidity ^0.5.0;

contract tieredprofitsplitter {
    address payable employee_one; 
    address payable employee_two;
    address payable employee_three;
    
    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
    
    function deposit() public payable {
        uint points = msg.value / 100;
        uint total;
        
        employee_one.transfer(points * 60); 
        total += points * 60;
        employee_two.transfer(points * 25);
        total += points * 25;
        employee_three.transfer(points * 15);
        total += points * 15;
        
        employee_one.transfer(msg.value - total);
        
    }
    
     function() external payable {
        deposit();
    }
}