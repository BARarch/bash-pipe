# Quivers Technologies Bash-Pipe Problem Set
We are rerouting standard inputs to create an offline Hackerrank problem tester that is to handle solution codes and testcases offline.  Hackerrank is fundamentally useless and is, in many cases a waste of time, and I will not let my coding skills atrophy.  

## Problem 1 Rerouting I put using bash
Set up a test repo for bash code. Find a bash command that rerouts input from the keyboard to the file testcase0.txt. Show the output using echo or cat.

Then write a python script that shows that reads the file like it is reading a standard input [with input()]. Show he output on the screen.

## Problem 2: Reroute output
In most hackerrank problems have solutions to a specialized stream. It is usually a text file and the path to that file
is set as an evironment variable on the os. When a solution file is run its result is written to that file, the file is then echoed.

Create the solution stream file [the one ftpr points to]. Set the path as an environment variable. To automate multiple test cases we will be using bash to change the value of this environment variable. Write a dummy solution file that opens it. And then write a solution like “8”. Do a cat on the solutions file. Then clear the solutions file to be used again.

## Problem 3: The tester
In the hackerrank repo there will be a solutions file for each problem and a folder with test cases
