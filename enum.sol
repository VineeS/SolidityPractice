pragma solidity ^0.7.0;

contract enumUse {
    // declare enum
    // use enuum
    // accpet enum as an argument
    // enum with struct

    enum STATE {
        INACTIVE,
        ACTIVE
    }

    STATE state;

    // use enum inside the struct
    struct User {
        address addr;
        string name;
        STATUS status;
    }

    //update the status
    function setState() public {
        require(state == STATE.INACTIVE);
        state = STATE.ACTIVE;
    }

    function foo() external {
        if (state == STATE.ACTIVE) {}
    }

    //////
    enum STATUS {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    STATUS public status;

    function ship() public {
        require(status == STATUS.Pending);
        status = STATUS.Shipped;
    }

    function AcceptDelivery() public {
        require(status == STATUS.Shipped);
        status = STATUS.Accepted;
    }

    function RejectDelivery() public {
        require(status == STATUS.Shipped);
        status = STATUS.Rejected;
    }

    function CanceledDelivery() public {
        require(status == STATUS.Pending);
        status = STATUS.Canceled;
    }
}
