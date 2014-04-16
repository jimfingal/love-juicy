love-juicy
==========
![echo breakout](img/echobreakout.png)

This package is an implementation of some of Martin Jonasson &amp; Petri Purho's "[Juice It Or Lose It](http://www.youtube.com/watch?v=Fy0aCDmgnxg)" features in Love2d.

This was built in a week or so. The goals were:

* To be an exercise in learning about game development and more about lua and love2d. The approach was to look at a number of the interesting features in the Juicy game, and try to figure out how to implement them in Lua / Love2d without directly porting code.
* To provide some readable, reasonably organized concrete examples of doing these sorts of Juicy features. I'm not Flash-literate, and after watching the Juice It video and started looking at the code, I had a hard time seeing what was what and what was happening where -- this was built with the goal of making the logic of what is happening more straightforward.

All code comes without guarantees and is probably at its core ripped off from somewhere else.


Overview of Code
----------------

The basic framework of the game is a basic Entity-Component framework inspired by [Artemis](http://gamadu.com/artemis/) and [posts by Adam Martin](http://t-machine.org/index.php/2007/09/03/entity-systems-are-the-future-of-mmog-development-part-1/). Just about everything in the game is an Entity; every data attribute is packaged in a Component; and everything that happens to update or react to those Components happens in a System. For a basic overview of the theory behind this, check out [this post](http://t-machine.org/index.php/2007/11/11/entity-systems-are-the-future-of-mmog-development-part-2/).

All of the (relatively) generic / reusable code is in src/shared. (What is there is a subset of some of the shared libraries I have in my [main love repository](https://github.com/jimmytheleaf/love-lonelyatoms).) All of the game-specific code is in src/games/juicy. The build script copies all of this into a build directory and zips it up into a .love file.


To Build
--------
Directories are organized to make it easier to have multiple game projects, even though there is just one here. To build after any chanages, run:

	./build.sh

This script will build and automatically run the .love package.


External Things Used
--------------------

* [Middleclass](https://github.com/kikito/middleclass) by Kikito
* [Indonesian Chiptunes from the Free Music Archive](http://freemusicarchive.org/music/Indonesian_Chiptunes/Micro_Invasion_-_East_Jakarta_Chiptunes_Compilation)
* [Press Start 2P](http://www.dafont.com/press-start-2p.font) font.
* Lua implementation of [Robert Penner's Easing Functions](https://github.com/EmmanuelOga/easing/blob/master/lib/easing.lua)
* [SLAM](https://github.com/vrld/slam) and port of [HUMP](https://github.com/vrld/hump) Vector class by Matthias Richter
* [UUID implementation](https://github.com/Tieske/uuid/blob/master/src/uuid.lua) by Thijs Schreijer
