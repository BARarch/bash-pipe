# Quivers Technologies Bash-Pipe
This is a tester for computer science problems on the Hackerrank platform.  This script allows users to download problems and testcases offine from anywhere, for expedited testing and unlimted attempts.  This is also a tool to be used during competition [no worries it is legal and not considered cheating in most cases]. We are rerouting standard inputs to create bash shell processes that handle solution code and testcases locally.  

## Problem 1 Rerouting I put using bash
Set up a test repo for bash code. Find a bash command that rerouts input from the keyboard to the file testcase0.txt. Show the output using echo or cat.

Then write a python script that shows that reads the file like it is reading a standard input [with input()]. Show he output on the screen.

## Problem 2: Reroute output
In most hackerrank problems have solutions to a specialized stream. It is usually a text file and the path to that file
is set as an evironment variable on the os. When a solution file is run its result is written to that file, the file is then echoed.

Create the solution stream file [the one ftpr points to]. Set the path as an environment variable. To automate multiple test cases we will be using bash to change the value of this environment variable. Write a dummy solution file that opens it. And then write a solution like “8”. Do a cat on the solutions file. Then clear the solutions file to be used again.

## Problem 3: The tester
In the hackerrank repo there will be a solutions file for each problem and a folder with test cases

## Solution
bash init.sh codename
bash case.sh codename
bash case.sh codename testId
bash test.sh codename
bash test.sh codename testcaseName
bash submitted.sh codename
bash submitted.sh codename message
