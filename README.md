# Docker Robotframwork3

<img width="300" alt="Docker Robotframwork3" src="https://user-images.githubusercontent.com/8040954/77850583-becd1f80-71fd-11ea-92ed-b79d40ef4357.png">

Run automation test with robot framework on docker container

# Test software
Acceptance testing is also known as user acceptance testing (UAT), end-user testing, operational acceptance testing (OAT), acceptance-test-driven development (ATTD) or field (acceptance) testing. Acceptance criteria are the criteria that a system or component must satisfy in order to be accepted by a user, customer, or other authorized entit

Keyword-driven testing also known as table-driven testing or action word based testing (not to be confused with action driven testing), is a software testing methodology suitable for both manual and automated testing. This method separates the documentation of test cases – including the data to use – from the prescription of the way the test cases are executed.

Data-driven testing is a software testing methodology that is used in the testing of computer software to describe testing done using a table of conditions directly as test inputs and verifiable outputs as well as the process where test environment settings and control are not hard-coded. In the simplest form the tester supplies the inputs from a row in the table and expects the outputs which occur in the same row.

Test-driven development development (TDD) is a software development process that relies on the repetition of a very short development cycle: requirements are turned into very specific test cases, then the code is improved so that the tests pass. This is opposed to software development that allows code to be added that is not proven to meet requirements.

# Folder in images 
- /tests is for robotframework files.
- /result is for result of running automate test

# How to docker run automate test
$> git clone https://github.com/openkengboy/robotframwork3.git
$> cd robotframwork3
$> docker run --rm -it -v $(pwd)/example:/tests -v $(pwd)/example/result:/result kengboy/robotframework3

# Run robot with arguments 
$> docker run --rm -it -v $(pwd)/example:/tests -v $(pwd)/example/result:/result kengboy/robotframework3 -i 01
