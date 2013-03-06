"ReplacementClause" by Makana Tavepholjalern

Include Secret Doors by Andrew Owen.

When play begins:
	say " You are carrying a big keyring.";  
Move silver key to player.; Move bentkey to player.; Move Metal Key to player.  



The description of player is " ."

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
	
The Home Room is a room.  The description of the Home Room is " ."

Chapter 2

Toy Room is a room.  The Toy room is east of White Door. The description of the Toy room is " ."

White Door is a door.  White door is east of the Home Room.  White door is west of Toy Room.  The description of the White Door is " ."

Mini Hammer is a thing. Understand "hammer" as Mini Hammer. Mini Hammer is on the Worktable.

Worktable is a scenery supporter.  Worktable is in Toy Room.  

Chapter 3

Santa' office is a room.  The Santa's office is south of the Hardwood Door.  The description of Santa's Office is " ."

Hardwood Door is a door.  Hardwood Door is south of home room.  Hardwood door is north of Santa's Office.  Hardwood Door is locked and lockable.  The description of the Hardwood Door is " ."

Chapter 4

Sleigh Room is a room.  The Sleigh Room is west of door.  The description of Sleigh Room is " ."

Gate is a door.  The Gate is west of the Home Room.  Gate is east of Sleigh Room.  The Gate is locked and lockable.  The description of the gate is " ."

Chapter 5

Bedroom is a room.  The Bedroom is west of the Santa's Office.  The description of Bedroom is " ."

Chapter 6

Sky is a room.  the sky is north of the Sleight Room. The description of the Sky is " ."

Chapter 7

Sheep's Pastures is a room.  The Sheep's Pastures is below the Sleigh Room.  The description of the Sheep's pastures is " ."

Chapter 8

Kitchen is a room.  The Kitchen is north of the Home Room.  The description of the Kitchen is " ."

Chapter 9

Elf's Room is a room.  The Elf's Room is east of the Kitchen.  The description of the Elf's Room is " ."

Chapter 10

Spain is a room.  Spain is north of the Sky.  The description of Spain is " ."

Hawaii is a room.  Hawaii is west of the Sky.  The description of Hawaii is " ."


