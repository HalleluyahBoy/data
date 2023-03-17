pragma solidity ^0.8.0;

import "./SchoolDatabase.sol";

contract SchoolDatabaseMigration {
    SchoolDatabase oldDatabase;
    SchoolDatabase newDatabase;

    constructor(SchoolDatabase _oldDatabase, SchoolDatabase _newDatabase) {
        oldDatabase = _oldDatabase;
        newDatabase = _newDatabase;
    }

    function migrate() public {
        uint256 numStudents = oldDatabase.numStudents();
        for (uint256 i = 0; i < numStudents; i++) {
            (
                address studentAddress,
                string memory name,
                uint256 age,
                string memory gender,
                uint256 grade
            ) = oldDatabase.getStudent(i);
            newDatabase.addStudent(studentAddress, name, age, gender, grade);
        }
    }

    function migrate() public {
        SchoolDatabase oldDatabase = SchoolDatabase(deployedAddresses[0]);
        uint256 numStudents = oldDatabase.getNumStudents();
        for (uint256 i = 0; i < numStudents; i++) {
            (string memory name, uint256 age, string memory class) = oldDatabase
                .getStudent(i);
            addStudent(name, age, class);
        }
    }
}
