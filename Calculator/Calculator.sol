// License
// SPDX-License-Identifier: LGPL-3.0-only

// Version
pragma solidity 0.8.30;

// Contract
contract Calculator {
    // Variables
    uint256 result;

    // Modifiers
    modifier checkMultiplier(uint256 num1_, uint256 num2_) {
        require(num1_ & num2_ > 0, "The multiplication is equal to 0.");
        _;
    }

    modifier checkDivision(uint256 num1_, uint256 num2_) {
        require(num2_ > 0, "The denominator ('num2_') must be greater than 0.");
        if (num1_ % num2_ != 0) revert("The reminder of the division must be 0.");
        _; 
    }

    // Events
    event Addition(uint256 number1, uint256 number2, uint256 result);
    event Substraction(int256 number1, int256 number2, int256 result);
    event Multiplier(uint256 number1, uint256 number2, uint256 result);
    event Division(uint256 number1, uint256 number2, uint256 result);

    // External Functions
    function addition(uint256 num1_, uint256 num2_) public returns(uint256 result_) {
        result_ = addition_logic(num1_, num2_);
    }

    function substraction(int256 num1_, int256 num2_) public pure returns(int256 result_) {
        result_ = substraction_logic(num1_, num2_);
    }

    function multiplier(uint256 num1_, uint256 num2_) public returns(uint256 result_) {
        result_ = multiplier_logic(num1_, num2_);
    }

    function division(uint256 num1_, uint256 num2_) public returns(uint256 result_) {
        result_ = division_logic(num1_, num2_);
    }

    // Internal Functions
    function addition_logic(uint256 num1_, uint256 num2_) internal returns(uint256 result_) {
        result_ = num1_ + num2_;
        
        emit Addition(num1_, num2_, result);
    }

    function substraction_logic(int256 num1_, int256 num2_) internal pure returns(int256 result_) {
        result_ = num1_ - num2_;
    }

    function multiplier_logic(uint256 num1_, uint256 num2_) internal checkMultiplier(num1_, num2_) returns(uint256 result_) {
        result_ = num1_ * num2_;

        emit Multiplier(num1_, num2_, result);
    }

    function division_logic(uint256 num1_, uint256 num2_) internal checkDivision(num1_, num2_) returns(uint256 result_) {
        result_ = num1_ / num2_;

        emit Division(num1_, num2_, result);

    }


}

