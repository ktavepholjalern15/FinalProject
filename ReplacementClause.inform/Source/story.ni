"ReplacementClause" by Makana Tavepholjalern

When play begins:
	now left hand status line is "Exits: [exit list]";
	now right hand status line is "[location]".
To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way]".
[^ from Capri]


Include Secret Doors by Andrew Owen. [extension]

When play begins:
	say " Ah, it's so warm and cozy at home.  And today is Christmas Eve!  There will probably be tons of presents under the tree, and the food! The best food ever, roast beef, garlic mashed potatoes and gravy, how delicious.  Hey, what's up with this room?  This isn't my house, I don't have a fireplace, a lamp on the wall, or wooly carpet like this!  Ah, and why am I carrying a keyring and a letter?";  

The lamp is a thing.  The lamp is in the Home Room.  A thing can be lit or unlit.  The lamp is unlit.  The description of the lamp is " Hanging from the wall is a lamp.  This one looks like a really old fashioned brass one.  There is a curvy brass handle at the top, and a container of oil with a wick sticking out.  The wick is surrounded by an oblong piece of hollow glass with an opening on the top for ventilation.  Pretty cool indeed."

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


The Fireplace is a container that is fixed in place.  The Fireplace is in the Home Room.  The Fire is a thing.  Fire is in Fireplace.  

Instead of taking fire: say "You're gonna carry that with your bare hands? Try looking around for something you can light instead."

Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
   say "Hey, no cheating, do you want to get coal in your stockings?." instead

Key Ring is a container.  When play begins, move key ring to player.  

The Silver key is a thing.   Silver key is in key ring.  The Silver key unlocks the Gate.

The description of the Silver key is " ."

The Brass key is a thing. The printed name is "brass key". Understand "brass key" or "key" or "brass" as Brass key. The Brass key unlocks the Hardwood Door.

The description of the Brass key is " An old Brass key which is bent.  You try to bend it back, but you aren't strong enough.  You'll have to use some tool to bend it back in place."

BentKey is a thing. BentKey is in Key ring.  The printed name is "brass key". Understand "brass key" or "key" or "brass" as BentKey.


Understand "hit [something] with [something]" as Hitting. Hitting is an action applying to two things.
Check hitting:
	if player is in Toy Room:
		if noun is BentKey and second noun is Mini Hammer:
			say "You hammer the key back into shape! Now it works. Yay.";
			now BentKey is off-stage;
			now player has Brass Key.


The Metal key is a thing.  Metal key is in key ring.  The Metal Key unlocks the White Door.

The description of the metal key is " ."

Understand "Take me away"  as Bubbling.  Bubbling is an action out of world.

Carry out Bubbling: 
	move Silver Key to player.


Chapter 1 ~ A Beginning
	
The Home Room is a room.  The description of the Home Room is " A beautifully old fashioned room with red brick walls.  The carpet is made of unbleached wool, and is soft and comforting to the touch.  There is a fireplace in the north facing wall.  The fire within the hearth is buringing merrily, and you can feel its gentle warmth.  Above it, there is a lamp hanging on the wall. Looking around, there is a gate to the west, a hardwood door to the south, a white door to the east, and an open door to the north through which you can smell roasting root vegitables."

Lamp is a thing. Understand "unlit lamp" as the Lamp.

Fireplace is a thing.

Envelope is a closed openable container.  Letter is a thing.  Letter is inside envelope.  When play begins, move envelope to player.  The description of the envelope is " A wrinkled beige colored envelope.  Even though the outside of the envelope looks worn, the seal is still intact.  The front of the envelope reads, Max Tave 2344 Beckwith Street Honolulu Hawaii."  The description of the letter is " My dear Max, I would love to deliver Christmas presents one last time, but one cannot go on working forever!  Every year I have seen you growing into a fine young man.  I hate to pull you away from the family, but I have decided to go on a vacation.  You will need to become Santa Clause for a day, and use my magic toy bag to deliver the presents.  I know I can count on you, but if you don't deliver the presents, you'll just have to live outside for a little while until I get home to take you back to Hawaii.  You can find the Santa Transformer in my office; that is what really makes you into Santa.  You'll need to find some food, the runestone, and a strand of my hair to fuel the santa transformer.  Oh yea, there is also a secret word to unlock the Santa Transformer, so find Mr. Jingles the elf and ask him, he'll remember."

[say something differnet when opening the envelope]

The description of player is " You still smell like the poi and kalua pig breakfast you ate last night.  You are wearing a white shirt that says Punahou Computer science and blue P.E. pants.  You're pretty skinny, and have a six pack.  You stand up, ready to look for the toybag not wanting to dissapoint Santa."

[instead of going south withought unlocking the door first say " ."]

Chapter 2

Toy Room is a room.  The Toy room is east of White Door. The description of the Toy room is " A long room with a worktable stretching all the way down the middle.  This must be where all of the toys are made.  There is also a workbench, which is probably where the elves sit while they are doing their work.  Way down in the corner is a big red bag, and sitting on the table right infront of you is a mini hammer."

White Door is a door.  White door is east of the Home Room.  White door is west of Toy Room.  The white door is locked.  The description of the White Door is " A wooden door painted white.  It is made of thick sturdy wood.  Upon closer inspection, you see something etched into the wood.  A picture of reindeer pulling Santa's sleigh through the night sky with a full moon. The picture is intricate, yet smooth to the touch, this must be the handywork of elves."

Toybag is a container. The toybag is in the toy room. The description of the toybag is " A gigantic bag is as round as a tomato, and goes all the way up to your chest.  It is bright crimpson, and the top is tied with golden string.  ." 

[when try to pick it up, super heavy, but when santa, as light as a feather
when try to open, impossible unless santa.]

[How to make toy bag immovable unless player is santa]

Mini Hammer is a thing. Understand "hammer" as Mini Hammer. Mini Hammer is on the Worktable.  The description of Mini Hammer is " It would be small for a human hammer, but for an elf, it's perfect for hammering in the metal soles of shoes.  An elf must have forgotten to put it away."

Workbench is scenery.  Understand "bench" as workbench.  The description of Workbench is " A nice bench, good for sitting."

[instead of taking work bench say " ."]

Understand "table" as worktable.  Worktable is a scenery supporter.  Worktable is in Toy Room.  The description of worktable is " A rectangular table good for working, and just the right height for an elf, about half a meter tall.  There is a mini hammer on it."

Toy Room is a Dark Room.

Chapter 3

Santa's office is a room.  The Santa's office is south of the Hardwood Door.  The description of Santa's Office is " So this is Santa's office.  As you walk into the room, you take notice of a strange machine bolted to the western wall.  This must be the Santa Transformer."

Hardwood Door is a door.  Hardwood Door is south of home room.  Hardwood door is north of Santa's Office.  Hardwood Door is locked and lockable.  The description of the Hardwood Door is " A dark brown wooden door with many knots and natural patters."

The Santa Transformer is closed openable container.  Santa's Transformer is a locked lockable container.  The Santa container is a supporter.  The Santa Transformer is scenery.  The Santa transformer is in Santa's office.  The description of Santa Transformer is " A big machine that looks like a large cilender.  It is made of stone, and there is a door with a handle infront.  The machine looks big enough to fit santa in it, or at least a big well rounded man.  On the side of the santa transformer there are three holders ____, ____, and ____."

[how to make it also turn on and off]

understand "machine" as santa transformer.

Understand the command "put [something] in [something]"as something new.
Putting it in is an action applying to two things.
Understand "put [something] in [something]" as putting it in.

[^ from mrs. Kiang for carrying capacity of certain containers]

Containero is part of The Santa Transformer. The containero is a container. The description of containero is " ____ is carved into the Santa Transfomer, it looks like it can fit a round stone."  The carrying capacity of containero is 1.  
	
		
Instead of putting something in containero :
	if the noun is the runestone and the second noun is the containero:
		say " you place the rune in the rune holder.  It fits perfectly and the rune begins to glow.";
	otherwise:
		say " that doesn't go there";
		stop the action.
		
[^ from Mrs. Kiang]


Container 2 is part of The Santa Transformer.  Container 2 is a container.  The description of Container 2 is " ____ is also carved into the Santa transformer, but it looks more like a shelf for you to place something on."  The carrying capacity of container 2 is 1.  

[Instead of putting something in container 2 :
	If the noun is food and the second noun is container 2:
		say "You place the food in the container.";
	Otherwise:
		say " That doesn't go there";
		stop the action.]
		
Containerm is part of the Santa Transformer.  Containerm is a container.  The description of Containerm is " ____ is just a little niche in the side of the Santa transformer."  The carrying capacity of containerm is 1.

[understand hang the hair as place the hair is containerm]

Understand "transformer" or "contraption" as the Santa Transformer.

[After ___ and this goes in the container 1; after ___ goes in container 2;
	say " ."  The player description is now " ."
	The player is now outside of Santa Machine.  
	The food and hair are off stage.]

Kenaz is a thing.
Casting Kenaz is an action applying to nothing.  Understand "Kenaz" or "say Kenaz" or "cast Kenaz" as casting Kenaz.  

Instead of casting Kenaz: say " You shout the word, and a bright green light flashes from the santa transformer outlining the door.  The Santa transformer can now be opened, but the green light fades away.";
	Now the Santa Transformer is unlocked;  
	Now the description of the Santa Transformer is "."
[rule: can not go inside machine until put food and hair and rune stone into santa transformer and say magic words  how to make something not work until all of the stuff is inside the machine.  ]


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

Elf's Room is a room.  The Elf's Room is east of the stone door.  The description of the Elf's Room is " ."  The description of the stone door is " ."

Stone door is a secret door.  Stone door is east of the kitchen.  Stone door is west of elf's room.  

Instead of examining the wall:
	now stone door is revealed;
	say " ."
	
The wall is undescribed.  The wall is a thing.  The wall is in the kitchen.

Elf's Room is a dark room.

Elf is a man.  The elf is in the Elf's room.

Table of Supplies
Topic	Reply
"Rune Stone"	"it comes from the elves."

Chapter 10

Spain is a room.  Spain is north of the Sky.  The description of Spain is " ."

Hawaii is a room.  Hawaii is west of the Sky.  The description of Hawaii is " ."

[if player has delivered presents, end the game in victory]

[if player has does not deliver presents within certain ammount of turns, end the game in defeat]


use no scoring.

Chapter 11

[The front door is a door.  The front door leads to a room.  Antartica is a room.  The description of antartica is " ."  Igloo is a container in antartica.  The description of the Igloo is " ."  The eskimo is a man.  The eskimo is in the Igloo.  Table.]
[can go outside and live with the eskimoes]

