pragma solidity ^0.5.0;

contract DeferredEquityPlan {

    uint fakenow = now;

    address human_resources;

    address payable employee;
    bool active = true; 

    uint total_shares = 1000;
    uint annual_distribution = 250;

    uint start_time = fakenow; 

    uint unlock_time = fakenow + 365 days;

    uint public distributed_shares; 

    constructor(address payable _employee) public {
        human_resources = msg.sender;
        employee = _employee;
    }

    function fastforward() public {
    fakenow += 100 days;
}
    
    function distribute() public {
        require(msg.sender == human_resources || msg.sender == employee, "You are not authorized to execute this contract.");
        require(active == true, "Contract not active.");

        require(unlock_time <= fakenow, "You cannot transact because unlock time is not reached!");
       
        require(distributed_shares < total_shares, "You cannot transact because total shares have been allocated!");

      
        unlock_time += 365 days;

     
        distributed_shares = (fakenow - start_time) / 365 days * annual_distribution;
        
        if (distributed_shares > 1000) {
            distributed_shares = 1000;
        }
    }

    function deactivate() public {
        require(msg.sender == human_resources || msg.sender == employee, "You are not authorized to deactivate this contract.");
        active = false;
    }

    function() external payable {
        revert("Do not send Ether to this contract!");
    }
}