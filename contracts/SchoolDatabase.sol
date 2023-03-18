// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SchoolDatabase {
    struct Student {
        string name;
        uint256 age;
        string major;
    }

    Student[] public students;

    function addStudent(
        string memory name,
        uint256 age,
        string memory major
    ) public {
        students.push(Student(name, age, major));
    }

    function getStudent(
        uint256 index
    ) public view returns (string memory, uint256, string memory) {
        return (
            students[index].name,
            students[index].age,
            students[index].major
        );
    }

    function getNumStudents() public view returns (uint256) {
        return students.length;
    }
}
