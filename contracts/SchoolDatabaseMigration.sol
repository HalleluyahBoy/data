// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SchoolDatabase.sol";

contract SchoolDatabaseMigration {
    SchoolDatabase public oldDatabase;
    SchoolDatabase public newDatabase;

    constructor(SchoolDatabase _oldDatabase) {
        oldDatabase = _oldDatabase;
        newDatabase = new SchoolDatabase();
    }

    function migrate() public {
        uint256 numStudents = oldDatabase.getNumStudents();

        for (uint256 i = 0; i < numStudents; i++) {
            (string memory name, uint256 age, string memory major) = oldDatabase
                .getStudent(i);
            newDatabase.addStudent(name, age, major);
        }
    }
}
