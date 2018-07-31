# Towers of Hanoi Challenge for Ruby!

Task: Build a Ruby program that allows a player to play ToH from the command line, specifying the initial height of the tower.

Dont know about TOH? Read about it here: 
https://en.wikipedia.org/wiki/Tower_of_Hanoi

This will give you a chance to create an interactive command-line game. You'll want to:

1. Wrap everything in a class and focus on separating different functionality into methods instead of creating one long run-on game method.

2. Create a game loop that finishes when the user either quits (for instance, by entering quit on the input line) or wins.

3. Check for valid user inputs

4. Create a render method which prints out the current state of the game board in between turns. START SIMPLE! The render method usually gives people the most frustration. Start by just printing the game state in numeric form before you try to get creative with your output.

Bonus: Use a stack class and implement your solution using stacks. 

**Before you begin, whiteboard/pseudocode your solution! Start high level and add detail until you're ready to code it up.**

```
#Example code
> ruby 'towers.rb'


t = TowerOfHanoi.new(3)
#<TowerOfHanoi:0x007f8ea03c93e0 @towers=3>
t.play

# Welcome to Tower of Hanoi!
# Instructions:
# Enter where you'd like to move from and to
# in the format '1,3'. Enter 'q' to quit.
# Current Board:
# o
# o
# o    
# 1    2    3
# Enter move >
# ...
```
