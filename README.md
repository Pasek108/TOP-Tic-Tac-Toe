<h1 align="center">TOP-Rock-Paper-Scissors - Readme</h1>
<p align="center">
  <strong>
    My solution for <a href="https://www.theodinproject.com/lessons/ruby-tic-tac-toe" target="_blank">Project: Tic Tac Toe</a> on  <a href="https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby" target="_blank">Ruby Course</a> from <a href="https://www.theodinproject.com" target="_blank">The Odin Project (TOP)</a>
  </strong>
</p>
<div align="center">
  <a href="https://www.theodinproject.com">
    <img src="_for_readme/banner.png">
  </a>
</div>

<br>

# Table of Contents
* [The Odin Project :thinking:](#the-odin-project-thinking)
  * [What is it](#what-is-it)
  * [Is it worth doing](#is-it-worth-doing)
* [Overview :sparkles:](#overview-sparkles)
  * [About](#about)
  * [Features](#features)
  * [Technologies](#technologies)
  * [Setup](#setup)
* [Details :scroll:](#details-scroll)
  * [User interface](#user-interface)

<br>

# The Odin Project :thinking:

## What is it  
[The Odin Project](https://www.theodinproject.com) is a free, open-source curriculum that teaches web development from the ground up. It covers HTML, CSS, JavaScript, Ruby, Git, React, and back-end technologies like Node.js and Ruby on Rails, offering a structured path from beginner to job-ready developer. The curriculum includes hands-on projects, coding exercises, and real-world applications to reinforce learning.

## Is it worth doing  
The Odin Project is an excellent resource for self-taught developers looking for a structured and comprehensive learning path. It encourages active learning through projects and collaboration with the community. However, since it requires self-discipline and problem-solving skills, those who prefer guided instruction with direct mentorship might find it challenging.

<br>

# Overview :sparkles:

## About
This project is my solution for [Project: Tic Tac Toe](https://www.theodinproject.com/lessons/ruby-tic-tac-toe) on [Foundations Course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby) from [The Odin Project (TOP)](https://www.theodinproject.com) which is an open-source curriculum for learning full-stack web development.

<br>

![preview](/_for_readme/preview.png)

## Technologies
Languages:
- Ruby
  
Programs:
- [VSCode](https://code.visualstudio.com)
- [ShareX](https://getsharex.com)
- [GIMP](https://www.gimp.org)

## Features
### Project requirements
- ✅ The game is played on a grid that's 3 squares by 3 squares.
- ✅ Players take turns putting their marks in empty squares.
- ✅ The first 3 marks in a row is the winner.
- ✅ When all 9 squares are full, the game ends in a tie. 

## Setup
- Download this repository
- Open folder in terminal
- Run `ruby ./lib/main.rb`

## Acknowledgements
- [Box-drawing characters](https://en.wikipedia.org/wiki/Box-drawing_characters)

<br>

# Details :scroll:

## User interface

### Pick Menu  
![Pick Menu](/_for_readme/UI/pick-menu.png)  
At the top, there is a menu with three options - rock, paper, and scissors, depicted as images. To play a round, the user must click on one of the options.  

---

### Frogs  
![Frogs](/_for_readme/UI/frogs.png)  
The game state is reflected by two frogs: the player’s frog on the left and the enemy frog on the right. Below them, a health bar represents their remaining health.  

---

### Attack  
![Attack](/_for_readme/UI/attack.png)  
When the user selects an option, the round is played, and the result is displayed. The losing pick is slashed, and the losing frog gets hit, losing an unit of health.  

---

### Winner  
![Winner](/_for_readme/UI/winner.png)  
If one of the frogs loses all its health, it disappears, and a win or lose message, along with music, is played.  

