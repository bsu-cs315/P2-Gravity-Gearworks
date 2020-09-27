# Project 2: Gravity Gearworks by Joel DeFries

Gravity Gearworks, a 2D-platforming game, ITERATION 1

Game Link: https://bsu-cs315.github.io/P2-Gravity-Gearworks/

CONTROLS:
  Move - arrow keys or A/D
  Jump - Spacebar

## Report

I was initially a bit worried about this iteration since my plans to work on this project on Friday and over the weekend were
slightly hindered when I got inexplicably sick on Friday. However, 2 days of intensive work proved more than enough to complete
this iteration as specified. Getting the physics to work with a KinematicBody2D was challenging, but I was able to utilize more
official Godot resources and tutorials to help me figure out how to implement functioning gravity and jumping. These included
website tutorials ("Using KinematicBody2D") and looking at the 2D platformer example. The platformer example actually
gave me a very good idea of how to structure levels with Nodes and Node2D's for organizational purposes, and also how
to implement parallax scrolling as well.

## Checklist & Self Evalutaion

- [X] D-1: The repository link is submitted to Canvas before the project deadline.
- [X] D-2: The repository contains a <code>README.md</code> file in its top-level directory.
- [X] D-3: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [X] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file and no unnecessary files tracked.
- [X] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, and the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [X] C-3: You have a clear legal right to use all incorporated assets, and the licenses for all third-party assets are tracked in the <code>README.md</code> file.
- [X] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game itself.
- [X] C-5: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of T or less.
- [X] C-6: The game includes a player-controlled character, implemented as a <code>KinematicBody</code> and positioned in a conventional, <code>TileMap</code>-based, 2D-platforming world.
- [X] C-7: The player's character can move left and right, with its movement bounded by impassable tiles.
- [X] C-8: The player's character can jump up and onto tiles.
- [X] C-9: The player's character falls down when walking off a ledge.
- [X] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [X] B-2: The playable game is published to GitHub Pages and linked from the <code>README.md</code> file.
- [X] B-3: The source code and project structure comply with our adopted style guides.
- [X] B-4: There is a sprite element in the level that the player can interact with, such as a collectible, an enemy, a book, or a switch.
- [X] B-5: The camera follows the character through a world that is larger than one screen.
- [X] A-1: Earn one star
- [X] ⭐ Animate the main character using either <code>AnimatedSprite</code> or cutout animation
- [X] ⭐ Include parallax scrolling in the background.
- [ ] ⭐ Include tiles that can be passed in one direction, such as being able to jump up through a tile and land atop it.

I definitely took care of all of the main requirements for this project. My player can jump and move around in a 2D platformer environment,
with the jump being limited, and with gravity allowing for you to fall off the edge. I added some basic gem collectibles that simply disappear
when collected and the camera functions perfectly well. I also went out of my way to get 2 stars complete already, getting the parallax scrolling
using the 2D platformer example as a guideline, and utilizing the convenient functionalities of AnimatedSprite.

I double-checked my code with the style guides again and noticed some variables and other aspects of Player.gd were misplaced,
and fixed them quickly. As mentioned before, I also took some organizational tips from the 2D platformer guide for structuring
the actual repository and scenes.


## Third-Party Assets

Level tiles, sprites, and background are from "Abstract Platformer". Created in 2016 by kenney.nl,
[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). 
Source: https://www.kenney.nl/assets/abstract-platformer