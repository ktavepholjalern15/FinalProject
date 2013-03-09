"ReplacementClause" by Makana Tavepholjalern

Include Secret Doors by Andrew Owen.

When play begins:
	say " You are carrying a big keyring.";  
Move silver key to player.; Move bentkey to player.; Move Metal Key to player.  

The lamp is a thing.  The lamp is in the Home Room.  A thing can be lit or unlit.  The lamp is unlit.  

Understand the command "light [something] with [something]" as something new.
Lighting it with is an action applying to two things.   
Understand "light [something] with [something]" as lighting it with. 

Check lighting it with:
	If the noun is not the lamp: 
		say " why would you want to light that?";
		stop the action;
	If the second noun is not fire:
		say "You can't light anything with that.";
		stop the action.

The description of player is " ."

The Fireplace is a container that is fixed in place.  The Fireplace is in the Home Room.  The Fire is a thing.  Fire is in Fireplace.  

Instead of taking fire: say "You're gonna carry that with your bare hands? Try looking around for something you can light instead."

Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
   say "Hey, no cheating, do you want to get coal in your stockings?." instead

The Silver key is a thing.   The Silver key unlocks the Gate.

The description of the Silver key is " ."

The Brass key is a thing. The printed name is "brass key". Understand "brass key" or "key" or "brass" as Brass key. The Brass key unlocks the Hardwood Door.

The description of the Brass key is " An old Brass key which is bent.  You try to bend it back, but you aren't strong enough.  You'll have to use some tool to bend it back in place."

BentKey is a thing. The printed name is "brass key". Understand "brass key" or "key" or "brass" as BentKey.


Understand "hit [something] with [something]" as Hitting. Hitting is an action applying to two things.
Check hitting:
	if player is in Toy Room:
		if noun is BentKey and second noun is Mini Hammer:
			say "You hammer the key back into shape! Now it works. Yay.";
			now BentKey is off-stage;
			now player has Brass Key.


The Metal key is a thing.  The Metal Key unlocks the White Door.

The description of the metal key is " ."

Understand "Take me away"  as Bubbling.  Bubbling is an action out of world.

Carry out Bubbling: 
	move Silver Key to player.


Chapter 1 ~ A Beginning
	
The Home Room is a room.  The description of the Home Room is " there is an unlit lamp hanging on the wall."

Lamp is a thing. Understand "unlit lamp" as the Lamp.

Fireplace is a thing.

[rule: player can not go into toyroom or elf's room without lighted lamp]

Chapter 2

Toy Room is a room.  The Toy room is east of White Door. The description of the Toy room is " ."

White Door is a door.  White door is east of the Home Room.  White door is west of Toy Room.  The description of the White Door is " ."

Mini Hammer is a thing. Understand "hammer" as Mini Hammer. Mini Hammer is on the Worktable.

Worktable is a scenery supporter.  Worktable is in Toy Room.  

Toy Room is a Dark Room.

Chapter 3

Santa's office is a room.  The Santa's office is south of the Hardwood Door.  The description of Santa's Office is " there is some machine here."

Hardwood Door is a door.  Hardwood Door is south of home room.  Hardwood door is north of Santa's Office.  Hardwood Door is locked and lockable.  The description of the Hardwood Door is " ."

The Santa Transformer is closed openable container.  Santa's Transformer is a locked lockable container.  The Santa container is a supporter.  The Santa Transformer is scenery.  The Santa transformer is in Santa's office.

understand "machine" as santa transformer.

Container 1 is part of The Santa Transformer. The container 1 is a closed openable container. The description of container 1 is " ."

Container 2 is part of The Santa Transformer.  Container 2 is a closed and openable container.  The description of Container 2 is " ."

Understand "transformer" or "contraption" as the Santa Transformer.

[After ___ and this goes in the container 1; after ___ goes in container 2;
	say " ."  The player description is now " ."
	The player is now outside of Santa Machine.  
	The food and hair are off stage.]

YYY is a thing.
Casting yyy is an action applying to nothing.  Understand "yyy" or "say yyy" or "cast yyy" as casting yyy.  

Instead of casting yyy: say " The Santa Transformer is open.";
	Now the Santa Transformer is unlocked;  
	Now the description of the Santa Transformer is "."
[rule: can not go inside machine until put food and hair and rune stone into santa transformer and say magic words]


Chapter 4

Sleigh Room is a room.  The Sleigh Room is west of door.  The description of Sleigh Room is " ."

Gate is a door.  The Gate is west of the Home Room.  Gate is east of Sleigh Room.  The Gate is locked and lockable.  The description of the gate is " ."

Santa's Sleigh is a thing.  Santa's Sleigh is in the Sleigh Room.  Understand "sleigh" as Santa's Sleigh.  Santa's Sleigh is a vehicle.  Container 3 is part of Santa's Sleigh.  Container 3 is a closed and openable container.  

Runestone is a thing.  Understand "stone" as runestone.  Runestone is in Container 3.  The description of Runestone is " ."


[how to make container only able to hold runestone]

Chapter 5

Bedroom is a room.  The Bedroom is west of the Santa's Office.  The description of Bedroom is " ."

Chapter 6

Sky is a room.  the sky is north of the Sleight Room. The description of the Sky is " ."

Chapter 7

Sheep's Pastures is a room.  The Sheep's Pastures is below the Sleigh Room.  The description of the Sheep's pastures is " ."

Chapter 8

Kitchen is a room.  The Kitchen is north of the Home Room.  The description of the Kitchen is " ."

Beef roast is a thing.  understand "roast" as Beef Roast.  Mashed potatoes is a thing. Understand "Potatoes" as the mashed potatoes.  Roast Turkey is a thing.  Understand "Turkey" as Roast Turkey.  Smoked ham is a thing.  Understand "ham" as smoked ham.  Green beans is a thing.  Understand "Beans" as the green beans.  Bread Pudding is a thing.  Understand "pudding" as Bread Pudding.

Chapter 9

Elf's Room is a room.  The Elf's Room is east of the Kitchen.  The description of the Elf's Room is " ."

Elf's Room is a dark room.

Chapter 10

Spain is a room.  Spain is north of the Sky.  The description of Spain is " ."

Hawaii is a room.  Hawaii is west of the Sky.  The description of Hawaii is " ."

[if player has delivered presents, end the game in victory]

[if player has does not deliver presents within certain ammount of turns, end the game in defeat]



