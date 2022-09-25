## Welcome to the Fire Jump DnD Template!

# OVERVIEW

This project is an upgraded version of the Fire Jump
tutorials that can be found here:
https://www.yoyogames.com/en/tutorials/fire-jump-dnd

The game is centered around the main character who
is a firefighter. The player controls this character
and helps them rescue civilians that are stuck on 
windows and put out fires. The game is infinite, so
it only stops when the player loses from a fire or
by falling down.

Please use this project to learn more about 
GameMaker Studio 2, and feel free to modify it
to your liking.

# TECHNICAL OVERVIEW

	Note: Most objects will contain comments with their 
	actions so you get a better understanding of what is
	going on.

Most of the concepts and techniques are explained in
the tutorial, so here is a very basic overview of 
how the base game loop works.

obj_player is the main player object that can move 
horizontally and jump on windows.

The room is static and there are no moving cameras.
Instead, all instances other than the player are moved
down to give the illusion of the player going up.

The obj_move_parent object is a parent object that 
groups all those objects that need to move down.

# NEW FEATURES

The "New" folder under "Objects" contains those objects
that were not created in the tutorial and were added
for this demo project only.

# SUPPORT

For any questions related to the project and/or programming,
please use the GameMaker Community forums:
https://forum.yoyogames.com/

To report GMS2 bugs and get technical support, please
submit a ticket:
https://accounts.yoyogames.com/contact-us

# LICENCE

You may not use any of the provided art and audio
assets for any free or commercial projects and you may not
redistribute any of the assets. You may use these to create
personal projects for learning purposes.