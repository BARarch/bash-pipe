# Quivers Technologies Bash-Pipe
This is a tester for computer science problems on the Hackerrank platform.  This script allows users to download problems and testcases offine from anywhere, for expedited testing and unlimted attempts.  This is also a tool to be used during competition [no worries it is legal and not considered cheating in most cases]. We are rerouting standard inputs to create bash shell processes that handle solution code and testcases locally.  

## Rerouting input put using bash
Set up a test repo for bash code. Find a bash command that rerouts input from the keyboard to the file testcase0.txt. Show the output using echo or cat.

Then write a python script that shows that reads the file like it is reading a standard input [with input()]. Show he output on the screen.

## Rerouting output
In most hackerrank problems, solutions are sent to a stdout stream. It is usually a text file.  The path to the file
is set as an evironment variable on the operating system. When a solution file is run the result are writen to that stream, the file is then echoed.

1. Create the solution stream file [the one ftpr points to]. 
2. Set the path as an environment variable. To automate multiple test cases we use bash to change the value of this environment variable. 
3. Write a dummy solution file that opens it. And then write a solution like “8”. Do a cat on the solutions file. 
4. Then clear the solutions file to be used again.

## The tester
In the hackerrank repo there will be a solutions file for each problem and a folder with test cases

## Solution
bash init.sh codename
bash case.sh codename
bash case.sh codename testId
bash test.sh codename
bash test.sh codename testcaseName
bash submitted.sh codename
bash submitted.sh codename message
