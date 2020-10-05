# Project 2: Gravity Gearworks by Joel DeFries

Gravity Gearworks, a 2D-platforming game, ITERATION 2

Game Link: https://bsu-cs315.github.io/P2-Gravity-Gearworks/

CONTROLS:

  Move - arrow keys or A/D

  Jump - Spacebar

## Report

The videos on "juice" were very interesting, and I was surprised to see a dev I actually recognized (JW Nijman) and his classic
video on screenshake being presented to this class. I love the game design choices in Nuclear Throne (thats why I have 270 hours on it),
so that was cool to see! For this iteration, I had a clear game plan for how to tackle each of the points, and I zoomed through them, using
the Godot official docs occasionally to see what I can do with certain nodes (like Camera2D, AnimatedSprite, and AnimationPlayer).
I did some cross-referencing to Project 0 and 1 as well to remember what nodes to use where.

## Self-Evaluation

This iteration keeps all the features from Iteration 1, and adds as applicable. I added a Main Menu and End Screen that uses a button that
can be pressed with the mouse or with the jump key. I expanded the level and implemented music, a sound effect for collecting a gem, and
a working HUD. 


Not sure if this counts as "juice" or not, but I used an aspect of the Camera2D node to implement camera smoothing, which looks way nicer
than the forcefully player-in-the-center camera that's used by default.


Juice Example 1: I utilized Godot's AnimationPlayer node and its ability to create quadratic motion for animations to make the gem collecting
animation look a lot poppier, just as described in this presentation: https://www.youtube.com/watch?v=mr5xkf6zSzk I did this by having the gem's
position and transparency move with a "smooth stop," and I think it looks pretty good!


Juice example 2: I utilized a feature in Godot's AnimatedSprite node, mainly the variable "speed_scale," to make the player's animations go faster
(as if the player is getting more and more hyperactive) after every gem collected. This is taken from the idea that sprites/assets can
change based on game circumstances, as seen at the end of the presentation here: https://youtu.be/Fy0aCDmgnxg?t=817

## Checklist

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
- [X] C-10: Include a full player experience loop: title, gameplay, end.
- [X] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [X] B-2: The playable game is published to GitHub Pages and linked from the <code>README.md</code> file.
- [X] B-3: The source code and project structure comply with our adopted style guides.
- [X] B-4: There is a sprite element in the level that the player can interact with, such as a collectible, an enemy, a book, or a switch.
- [X] B-5: The camera follows the character through a world that is larger than one screen.
- [X] B-6: Include sound effects and music.
- [X] B-7: Include a HUD that tracks game-appropriate data such as score or time remaining.
- [X] B-8: Include a clear example of <em>juice</em> and describe it in the <code>README.md</code>.
- [X] A-1: Include two clear examples of <em>juice</em> and describe them in the <code>README.md</code>.
- [X] A-2: Earn two stars.
- [X] ⭐ Animate the main character using either <code>AnimatedSprite</code> or cutout animation
- [X] ⭐ Include parallax scrolling in the background.
- [ ] ⭐ Include tiles that can be passed in one direction, such as being able to jump up through a tile and land atop it.

## Self-Made Assets

Music was composed by me, using 0CC-Famitracter.

Sound effect was also made by me.

## Third-Party Assets

Level tiles, sprites, and background are from "Abstract Platformer". Created in 2016 by kenney.nl,
[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). 
Source: https://www.kenney.nl/assets/abstract-platformer