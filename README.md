# Blockchain-based Class Attendance Tracker

## Project Title
Blockchain-based Class Attendance Tracker

## Project Description
Title: Blockchain-based Class Attendance Tracker  
This smart contract establishes a decentralized platform for marking and tracking class attendance on the blockchain. Deployed at the address `[CONTRACT_AD0x0f7c9Db4b75df141ec700EDBcA62d620d2949bFfDRESS]` (replace with the actual deployed address), it leverages Solidity `^0.8.9` to provide a secure and transparent solution. Key features include teacher-controlled student registration, session-based attendance marking, and immutable record-keeping. The contract ensures that only the designated teacher can manage attendance, offering a tamper-proof system for educational institutions.

## Project Vision
The vision of this project is to create a decentralized, blockchain-powered attendance tracking system that ensures trust, transparency, and reliability. By storing attendance data immutably on-chain, it eliminates discrepancies and provides a verifiable record for students, teachers, and administrators, revolutionizing traditional attendance management.

## Future Scope
- Build a front-end interface (e.g., with Web3.js or Ethers.js) for user-friendly interaction.
- Extend functionality to support multiple teachers or courses in one contract.
- Add student verification mechanisms (e.g., via cryptographic signatures or NFTs).
- Include analytics tools to generate attendance summaries or reports.
- Adapt the system for broader applications, such as event attendance or workforce management.

## Key Features
- Teacher Role: The teacher (initially the deployer) controls student registration, attendance marking, and session management.
- Student Registration: Registers students using their Ethereum addresses, preventing duplicates.
- Session-based Tracking: Tracks attendance per student for each session, managed by a `sessionCount` counter.
- Immutable Records: Stores attendance data on the blockchain, ensuring it cannot be altered.
- Role Transfer: Allows the teacher to transfer their role to another address securely.
- Event Logging: Emits events (`StudentRegistered`, `AttendanceMarked`, `TeacherTransferred`) for transparency.
- Security: The `onlyTeacher` modifier restricts critical functions to the teacher, enhancing access control.
## Smart contract address:(0x0f7c9Db4b75df141ec700EDBcA62d620d2949bFf)
