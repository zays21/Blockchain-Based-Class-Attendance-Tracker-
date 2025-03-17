// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ClassAttendanceTracker {
    address public teacher; // Address of the teacher who controls the contract
    mapping(address => bool) public students; // Mapping to track registered students
    mapping(address => mapping(uint256 => bool)) public attendance; // Mapping to track attendance by student and class session
    uint256 public sessionCount; // Counter for class sessions

    // Events for logging actions
    event StudentRegistered(address student);
    event AttendanceMarked(address student, uint256 sessionId, bool present);
    event TeacherTransferred(address oldTeacher, address newTeacher);

    // Modifier to restrict functions to the teacher only
    modifier onlyTeacher() {
        require(msg.sender == teacher, "Only the teacher can perform this action");
        _;
    }

    // Constructor to set the deploying address as the teacher
    constructor() {
        teacher = msg.sender;
        sessionCount = 0;
    }

    // Function to register a student
    function registerStudent(address _student) external onlyTeacher {
        require(_student != address(0), "Invalid student address");
        require(!students[_student], "Student already registered");
        students[_student] = true;
        emit StudentRegistered(_student);
    }

    // Function to mark attendance for a student in a specific session
    function markAttendance(address _student, bool _present) external onlyTeacher {
        require(students[_student], "Student not registered");
        attendance[_student][sessionCount] = _present;
        emit AttendanceMarked(_student, sessionCount, _present);
    }

    // Function to start a new session (increments session count)
    function startNewSession() external onlyTeacher {
        sessionCount++;
    }

    // Function to check attendance of a student for a specific session
    function checkAttendance(address _student, uint256 _sessionId) external view returns (bool) {
        require(students[_student], "Student not registered");
        require(_sessionId <= sessionCount, "Invalid session ID");
        return attendance[_student][_sessionId];
    }

    // Function to transfer teacher role to another address
    function transferTeacherRole(address _newTeacher) external onlyTeacher {
        require(_newTeacher != address(0), "Invalid address");
        require(_newTeacher != teacher, "New teacher must be different");
        address oldTeacher = teacher;
        teacher = _newTeacher;
        emit TeacherTransferred(oldTeacher, _newTeacher);
    }
}write a readme for this smart contract
