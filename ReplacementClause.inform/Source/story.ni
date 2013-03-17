"ReplacementClause" by Makana Tavepholjalern

Release along with cover art, a file of "Cover Art" called "Cover".

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

The lamp is a device.  The lamp is switched off and unlit.  The lamp is in the Home Room.  A thing can be lit or unlit.  The lamp is unlit.  The description of the lamp is " Hanging from the wall is a lamp.  This one looks like a really old fashioned brass one.  There is a curvy brass handle at the top, and a container of oil with a wick sticking out.  The wick is surrounded by an oblong piece of hollow glass with an opening on the top for ventilation.  Pretty cool indeed."

After switching on the lamp:
	say " You light the lamp in the fire, and you're happy that it's buring bright.";
	Now the lamp is lit.

Understand "light [something]" as turning on.  Turning on is an action applying to one thing.

[Understand the command "light [something] with [something]" as something new.
Lighting it with is an action applying to two things.   
Understand "light [something] with [something]" as lighting it with. 

Check lighting it with:
	if the first noun is lamp, the second noun is fire:
		say " ."

Check lighting it with:
	If the first noun is not the lamp: 
		say " why would you want to light that?";
		stop the action;
	If the second noun is not fire:
		say "You can't light anything with that.";
		stop the action.]


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

The description of the metal key is " An ornate metal key with the design of a present at the end."

Understand "Take me away"  as Bubbling.  Bubbling is an action out of world.

[Carry out Bubbling: 
	Open white door.  Opening is an action applying to one thing.]


Chapter 1 ~ A Beginning
	
The Home Room is a room.  The description of the Home Room is " A beautifully old fashioned room with red brick walls.  The carpet is made of unbleached wool, and is soft and comforting to the touch.  There is a fireplace in the north facing wall.  The fire within the hearth is buringing merrily, and you can feel its gentle warmth.  Above it, there is a lamp hanging on the wall. Looking around, there is a gate to the west, a hardwood door to the south, a white door to the east, and an open door to the north through which you can smell roasting root vegitables."

Lamp is a thing. Understand "unlit lamp" as the Lamp.

Fireplace is a thing.

Envelope is a closed openable container.  Letter is a thing.  Letter is inside envelope.  When play begins, move envelope to player.  The description of the envelope is " A wrinkled beige colored envelope.  Even though the outside of the envelope looks worn, the seal is still intact.  The front of the envelope reads, Max Tave 2344 Beckwith Street Honolulu Hawaii."  The description of the letter is " My dear Max, I would love to deliver Christmas presents one last time, but one cannot go on working forever!  Every year I have seen you growing into a fine young man.  I hate to pull you away from the family, but I have decided to go on a vacation.  You will need to become Santa Clause for a day, and use my magic toy bag to deliver presents to one last house.  If you don't want to help, you can leave through the front door.  You'd have to live outside for a little while until I get home to take you back to Hawaii, but I know I can count on you, right?  You can find the Santa Transformer in my office; that is what really makes you into Santa.  You'll need to find some food and a strand of my hair, which goes in the fuel holder on the side of the side of the Santa Transformer.  You'll also need to find the runestone, which also powers the machine.  Oh yea, there is also a secret word that unlocks the Santa Transformer, so find Mr. Jingles the elf and ask him, he'll remember."

The description of player is " You still smell like the poi and kalua pig breakfast you ate last night.  You are wearing a white shirt that says Punahou Computer science and blue P.E. pants.  You're pretty skinny, and have a six pack.  You stand up, ready to look for the toybag not wanting to dissapoint Santa."

Instead of going south:
	if player has unlocked hardwood door:
		continue the action;
	otherwise:
		say " Are you going to walk through a hardwood door?  Who do you think you are?  You'll need to fix your keys."

Chapter 2

Toy window is scenery.  Toy window is in toy room.  The printed name of toy window is "window." The description of Toy window is " Outside is pitch black; you can't see a thing.  You better get a move on anyway since it will take you a while to get to anywhere from the artic, even if you have a magic sleigh."

Toy Room is a room.  The Toy room is east of White Door. The description of the Toy room is " A long room with a worktable stretching all the way down the middle.  This must be where all of the toys are made.  There is also a workbench, which is probably where the elves sit while they are doing their work.  On the eastern wall is a window looking out into the night. Way down in the corner is a big red bag, and sitting on the table right infront of you is a mini hammer."

White Door is a door.  White door is east of the Home Room.  White door is west of Toy Room.  The white door is locked.  The description of the White Door is " A wooden door painted white.  It is made of thick sturdy wood.  Upon closer inspection, you see something etched into the wood.  A picture of reindeer pulling Santa's sleigh through the night sky with a full moon. The picture is intricate, yet smooth to the touch, this must be the handywork of elves."

Toybag is a container. The toybag is in the toy room. The description of the toybag is " A gigantic bag is as round as a tomato, and goes all the way up to your chest.  It is bright crimpson, and the top is tied with golden string." 

[Instead of taking toybag:
	if player is santa:
		say " You pick up the bag, and despite its size it is as light as a feather.";
		continue the action;
	otherwise:
		say " You pull, and tug, but you can't move the bag an inch.  What's in this thing, stones?.";
		stop the action.]

Mini Hammer is a thing. Understand "hammer" as Mini Hammer. Mini Hammer is on the Worktable.  The description of Mini Hammer is " It would be small for a human hammer, but for an elf, it's perfect for hammering in the metal soles of shoes.  An elf must have forgotten to put it away."

Workbench is scenery.  Understand "bench" as workbench.  The description of Workbench is " A nice bench, good for sitting."

instead of taking workbench:
	say " Woah there, what would you want that for?  This work bench is bolted to the ground anyway."

Understand "table" as worktable.  Worktable is a scenery supporter.  Worktable is in Toy Room.  The description of worktable is " A rectangular table good for working, and just the right height for an elf, about half a meter tall.  There is a mini hammer on it."

Toy Room is a Dark Room.

Chapter 3

Santa's Window is scenery.  Santa's window is in Santa's office.  The printed name of Santa's window is "window."  The description of santa's window is " The sky is light grey outside, it will soon be morning! You better become santa and deliver the presents quick."

Santa's office is a room.  The Santa's office is south of the Hardwood Door.  The description of Santa's Office is " So this is Santa's office.  As you walk into the room, you take notice of a strange machine bolted to the western wall.  This must be the Santa Transformer.  There is also a brown leather coat hanging on the wall and a window."

Hardwood Door is a door.  Hardwood Door is south of home room.  Hardwood door is north of Santa's Office.  Hardwood Door is locked and lockable.  The description of the Hardwood Door is " A dark brown wooden door with many knots and natural patters."

The Santa Transformer is closed openable container.  Santa Transfomer is a switched off device.  Santa's Transformer is a locked lockable container.  The Santa Transformer is scenery.  The Santa transformer is in Santa's office.  The description of Santa Transformer is " A big machine that looks like a large cilender.  It is made of stone, and is smooth to the touch all the way around.  The machine looks big enough to fit santa in it, or at least a big well rounded man.  On the side of the santa transformer there are two groves in the stone, this must be the Rune Holder and Fuel Holder that Santa was talking about in his letter."

understand "machine" as santa transformer.

Understand the command "put [something] in [something]"as something new.
Putting it in is an action applying to two things.
Understand "put [something] in [something]" as putting it in.

[^ from mrs. Kiang for carrying capacity of certain containers]

Rune Holder is part of The Santa Transformer. The Rune Holder is a container. The description of Rune Holder is " This container carved into the Santa Transfomer looks like it can fit a round stone."  The carrying capacity of Rune Holder is 1.  
	
Instead of putting something in Rune Holder:
	if the noun is the runestone and the second noun is the Rune Holder:
		say " you place the rune in the rune holder.  It fits perfectly and the rune begins to glow.";
	otherwise:
		say " that doesn't go there";
		stop the action.
		
[^ from Mrs. Kiang]


FuelHolder is part of The Santa Transformer.  FuelHolder is a container.  The description of FuelHolder is " This large grove is also carved into the Santa transformer, but it looks more like a shelf for you to place something on."  The carrying capacity of FuelHolder is 1.  Understand "fuel holder" as fuelholder.

Fuel is a thing.  The printed name of fuel is "Roast Beef"

[Instead of putting something in the Fuel Holder:  
	If the noun is Fuel and the second noun is Fuel Holder:
		say " You place the [fuel] into the Fuel Holder.  You hear a sound like in Star Treck, where Captain Kirk is being beamed down to a planet, but anyway, the food is slowly dissapearing before your eyes.  As it does this, the Santa transformer has started to buzz and now has a green aura.";
		the santa transformer description is now " The machine now seems to be on, but there is still no door, no way to get in.  Where's that elf who knows the password?";
		The santa transformer is switched on.;
	Otherwise:
		say " Why would you want to put that into the fuel holder?  That's not fuel for this machine.";
		Stop the action.]

[How to make inform understand roast beef, mashed potatoes, and beans as fuel]


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

Sleigh Room is a room.  The Sleigh Room is west of door.  The description of Sleigh Room is " A room built for a sleigh, and a sleigh there is.  In the middle of the room is huge red Sleigh.  The wood is painted a dark crimpson color, and the edges are lined in gold.  The Sleigh is hooked up to 12 reindeer. To the north is an opening, kind of like a garage door.  You can see that there is a long drop from the entrance.  This house must be on the side of a mountain or something.  You'll need to fly out of here."

[Instead of going north in sleigh room:
	If player is Santa:
		if player is not in Santa's Sleigh:
			say "Even santa can't fly without his sleigh.";
			end the game in death;
		otherwise:
			say "you fly off into the sunset";
			continue the action;
	otherwise
		say " ."]
	
[every turn rule:
	if blanks is in blank;
	if blanks is in blank; then]

[code for if player puts last thing in transformer then becomes santa]

[ How to make people fall off and die if go north without sleigh]

[ After Santa transformer is on:
	say " it buzzes to life."
	now the player is santa]

Gate is a door.  The Gate is west of the Home Room.  Gate is east of Sleigh Room.  The Gate is locked and lockable.  The description of the gate is " A large silver gate stands infront of you.  Through the vertical posts you feel the night chill of the artic.  You might not be able to go inside because there is no fireplace in there.  You can see that there is a red sleigh in the room behind the gate.  The gate arcs at the top, and there is a big lock holding both sides together."  Understand "silver gate" as the gate.

[cannot go into the sleigh room until wearing a coat]

The description of santa's sleigh is " A jumbo sized sleigh, almost the size of a car.  On the inside you can see a bench with a woolen coushin.  There are reins drooping over the front, and embedded into the dashboard is a stone."

Bench is part of Santa's sleigh.  The description of Bench is " A bench good for sitting.  There is even a coushin on top to make it extra confortable."

Reindeer is a part of Santa's Sleigh.  The description of Reindeer is " Dasher, Dancer, Prancer, Vixen, Comet, Cupid, Donner, Blitzen, and Rudolph.  The reindeer stamp the ground; they seem ready to go."

Coushin is part of Santa's Sleigh.  The description of Coushin is " It is warm, soft, and furry, just like the carpet you felt inside the house."

Instead of talking to reindeer:
	say " Are you crazy? Talking to reindeer?."

Santa's Sleigh is a thing.  Santa's Sleigh is in the Sleigh Room.  Understand "sleigh" as Santa's Sleigh.  Santa's Sleigh is a vehicle.  Container 3 is part of Santa's Sleigh.  Container 3 is a closed and openable container.  

Runestone is a thing.  Understand "stone" as runestone.  Runestone is in dashboard.  The description of Runestone is " The stone is oval in shape and primarily dark grey.  There are green cracks running through it, which emit a green light."  The description of dashboard is " The front of the sleigh has leather reigns drooping over it, and there is a mysterious stone held inside."

Chapter 5

Bedroom is a room.  The Bedroom is west of the Santa's Office.  The description of Bedroom is " ."

Bed is a thing in Bedroom.  The description of Bed is " The bed looks like a king sized matress, but upon closer inspection, the base is made from straw and covered with a layer of wool.  There is a maroon blanket covering the bed, and two soft pillows."

Blanket is part of bed.  Pillow is a part of bed.  understand "Maroon blanket" as blanket.  Understand "Pillows" as pillow.  Instead of taking blanket:
	Say " Why would you steal Mr and Mrs Claus' blanket?  Do you want them to be cold at night?."
Instead of taking pillow:
	say " Don't take santa's pillow, he's going to have a hard time sleeping at night."

Chapter 6

Sky is a room.  the sky is north of the Sleight Room. The description of the Sky is " You are flying through the night sky in santa's sleigh.  There are barely any couds tonight, and the starts are even brighter than ever.  There is a full moon, and you can your reindeer galloping higher into the sky.  There is a sheep's pasture below you, to the north is Spain, and to the west is Hawaii."

Max is a man. The player is Max.  

Santa1 is a man.  The printed name is "Santa".  The description of santa1 is " ."

Chapter 7

Sheep's Pastures is a room.  The Sheep's Pastures is below the Sleigh Room.  The description of the Sheep's pastures is " A large enclosure full of sheep.  There are wooden walls built around them, and a fire to keep them warm.  Santa must really like sheep.  The sheep are chewing on hay, and doing whatever else it is that sheep do."

Chapter 8

Kitchen is a room.  The Kitchen is north of the Home Room.  The description of the Kitchen is " The heat of the hearth in the home room is felt even in the kitchen.  The walls are made of red brick, and there is a dinging table laden with food.  The east wall has some characters carved into the wall that you are unable to understand. "

Dining table is a supporter.  Dining table is in kitchen.  Fuel is on the dining table.  Mashedpotatoes is a thing. Understand "Potatoes" as the Mashedpotatoes.  Mashedpotatoes is on dining table.  Roast Turkey is a thing.  Mashedpotatoes is edible.  Understand "Turkey" as Roast Turkey.  Roast turkey is on Dining table.  Roast Turkey is edible.  Smoked ham is a thing.  Understand "ham" as smoked ham.  Smoked ham is edible.  Smoked ham is on dining table.  Green beans is a thing.  Green beans is edible.  Understand "Beans" as the green beans.  Beans is on dining table.  Bread Pudding is a thing.  Bread Pudding is edible.  Understand "pudding" or "bread" as Bread Pudding.  Bread Pudding is on Dining table.  Understand "Mashed Potatoes" as mashedpotatoes.

Instead of eating fuel:
	say " Remember what santa said in his letter? You'll need some food later on.  Why don't you dig into some of this other stuff."

Instead of eating Mashedpotatoes:
	say " .";
	Remove Mashedpotatoes from play.

Chapter 9

Elf's Room is a room.  The Elf's Room is east of the stone door.  The description of the Elf's Room is " After opening the stone door, you reveal a room dimly lit by the light from the kitchen.  There is an elf here sleeping in a hammock.  He seems to be sleeping soundly."  
Stone door is a secret door.  Stone door is east of the kitchen.  Stone door is west of elf's room.  

Understand "examine characters" or "x characters"  as examining wall. Examining Wall is an action applying to one thing.  
Instead of examining the wall:
	now stone door is revealed;
	say " You examine the curvy lines of the characters, but see nothing that you understand.  Upon closer inspection, you see that there is a line that marks out a rectangle that goes from the floor until your waist.."
	
Understand "Push wall" or "open door" or "push door" or "open wall" as opening stone door.  Opening stone door is an action applying to one thing.

The wall is undescribed.  The wall is a thing.  The wall is in the kitchen.

Elf's Room is a dark room.

Understand "Talk to [someone]" or "hello" as talking to. Talking To is an action applying to one thing.

Instead of talking to elf for the first time:
	say " The elf rolls out of bed, 'Ah, what happened, and who are you?  What did you do with santa?'."

Elf is a man.  The elf is in the Elf's room.  The description of the elf is " He seems like a minature human, except with small brown eyes and pointed ears."

The hammock is scenery.  The hammock is in the elf's room.  The description of the hammock is " A nicely woven hammock; there sems to be an elf in it."




Table of Supplies
Topic	Reply
"Rune Stone"	"it comes from the elves. You need to throw the stone in the air to stop time."
"Kitchen"	" ."
"Home Room"	" ."
"Santa Transformer"	" ."
"Santa's Sleigh"	" ."
"How to deliver presents"	" ."
"Elf"


Chapter 10

Spain is a room.  Spain is north of the Sky.  The description of Spain is " ."

Hawaii is a room.  Hawaii is west of the Sky.  The description of Hawaii is " ."

[if player has delivered presents, end the game in victory]

use no scoring.

Chapter 11

[The front door is a door.  The front door leads to a room.  Antartica is a room.  The description of antartica is " ."  Igloo is a container in antartica.  The description of the Igloo is " ."  The eskimo is a man.  The eskimo is in the Igloo.  Table.]
[can go outside and live with the eskimoes]

The front door is a door.  The front door is north of the kitchen.  The description of the front door is " ."

Antartica is a room.  Antartica is north of the front door.  The description of Antartica is " there is an igloo."

Igloo is scenery.  Igloo is a container.  The description of Igloo is " ."  Eskimo is a man.  Eskimo is in Igloo.

Table of Eskimo
topic	reply
"hello"	"Hi";
	
[if the player consents: 
	say " you live out the rest of the winter with an eskimo";
	end the game in victory.;
otherwise:
	say "Why not?  I don't bite"]
	


Coat is a thing.  The coat is wearable.  The description of the coat is " Hanging on the opposite wall hangs a brown leather coat, it could help you keep warm through the winter."   The coat is in Santa's Office.  Understand "brown leather coat" as coat.

Cold is a region.  Sleigh room and antartica are in cold.


Instead of going to cold:
	if player is not wearing coat:
		say "You need to put on the coat before going to such a cold place.";
		stop the action;
	otherwise:
		continue the action.

Presents is a thing.

[At every turn rule:
	If the player said yes to live with the eskimo:
		say " you live out your winter with the eskimo, eating sardines out of the cold atlantic water."]
			
[At every turn rule:
	if player has delivered presents;
			say " you have saved christmas yay!"
			
At every turn rule:
	if player has delivered presents;
		end the game in victory.]
