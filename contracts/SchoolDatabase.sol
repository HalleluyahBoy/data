// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SchoolDatabase {
    struct Subject {
        string name;
        uint256[] testScores;
    }

    mapping(address => mapping(string => Subject)) private studentSubjects;
    mapping(address => string[]) private studentSubjectNames;
    mapping(string => bool) private subjectExists;

    function addTestScore(string memory subjectName, uint256 testScore) public {
        require(subjectExists[subjectName], "Subject does not exist");
        Subject storage subject = studentSubjects[msg.sender][subjectName];
        subject.testScores.push(testScore);
        if (subject.testScores.length == 1) {
            subject.name = subjectName;
            studentSubjectNames[msg.sender].push(subjectName);
        }
    }

    function getTestScores(
        address studentAddress,
        string memory subjectName
    ) public view returns (uint256[] memory) {
        return studentSubjects[studentAddress][subjectName].testScores;
    }

    function getStudentSubjectNames(
        address studentAddress
    ) public view returns (string[] memory) {
        return studentSubjectNames[studentAddress];
    }

    function addSubject(string memory subjectName) public {
        require(!subjectExists[subjectName], "Subject already exists");
        subjectExists[subjectName] = true;
    }

    function removeSubject(string memory subjectName) public {
        require(subjectExists[subjectName], "Subject does not exist");
        subjectExists[subjectName] = false;
    }

    function getSubjectExists(
        string memory subjectName
    ) public view returns (bool) {
        return subjectExists[subjectName];
    }
}
