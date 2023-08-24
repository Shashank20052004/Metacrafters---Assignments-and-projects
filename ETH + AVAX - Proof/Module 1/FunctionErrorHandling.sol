// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgeVerification {
    uint256 public minAge;

    constructor(uint256 _minAge) {
        minAge = _minAge;
    }

    modifier verifyAgeModifier(uint256 _userAge) {
        require(_userAge >= minAge, "You must be at least the minimum age.");
        _;
    }

    function checkAccess(uint256 _userAge) external view returns (string memory) {
        require(_userAge > 0, "Age must be greater than 0.");

        assert(_userAge <= 100); // Assert that age is reasonable (for example purposes)

        if (_userAge >= minAge) {
            return "Access granted. You can now view the content.";
        } else {
            revert("Access denied. You are not old enough to view the content.");
        }
    }
}
