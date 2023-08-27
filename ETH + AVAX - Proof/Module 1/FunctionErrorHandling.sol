// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgeVerification {
    uint256 public minAge; // The minimum age required for access

    constructor(uint256 _minAge) {
        minAge = _minAge; // Initialize the contract with a minimum age requirement
    }

    // Modifier to verify whether the user's age meets the minimum requirement
    modifier verifyAgeModifier(uint256 _userAge) {
        require(_userAge >= minAge, "You must be at least the minimum age.");
        _; // Continue executing the function if the age requirement is met
    }

    // Function to check if a user's age grants access to content
    function checkAccess(uint256 _userAge) external view returns (string memory) {
        require(_userAge > 0, "Age must be greater than 0."); // Ensure age is valid

        assert(_userAge <= 100); // Assert that age is within a reasonable range (for example purposes)

        if (_userAge >= minAge) {
            return "Access granted. You can now view the content."; // Age meets the requirement
        } else {
            revert("Access denied. You are not old enough to view the content."); // Age is below the requirement
        }
    }
}
