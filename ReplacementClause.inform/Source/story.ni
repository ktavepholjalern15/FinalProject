"ReplacementClause" by Makana Tavepholjalern

Release along with cover art, a file of "Cover Art" called "Cover".

When play begins:
	Now left hand status line is "Exits: [exit list]";
	Now right hand status line is "[location]".
To say exit list:
	Let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way]".
[^ from Capri]


Include Secret Doors by Andrew Owen. [extension]

Instead of taking when the player is carrying 7 things:
say "You can't hold more than 7 things at a time. You'll need to drop something, before you can pick-up something else."

The carrying capacity of the player is 7.

When play begins:
	say " Ah, it's so warm and cozy at home.  And today is Christmas Eve!  There will probably be tons of presents under the tree, and the food! The best food ever, roast beef, garlic mashed potatoes and gravy, how delicious.  Hey, what's up with this room?  This isn't my house, I don't have a fireplace, a lamp on the wall, or wooly carpet like this!  Ah, and why am I carrying a keyring and a letter?";  

The lamp is a device.  The lamp is switched off and unlit.  A thing can be lit or unlit.  The lamp is unlit.  The description of the lamp is " Hanging from the wall is a lamp.  This one looks like a really old fashioned brass one.  There is a curvy brass handle at the top, and a container of oil with a wick sticking out.  The wick is surrounded by an oblong piece of hollow glass with an opening on the top for ventilation.  You're gonna have to turn it on before it'll be any use to you."

After switching on the lamp:
	say " You gingerly lift the lamp from its hanger and light it in the fire, and you're happy that it's burning bright.";
	Now the lamp is lit.
	
Hanger is scenery.  Hanger is a supporter.  Hanger is in home room.  Lamp is on hanger.  The description of hanger is " A hanger that is built into the metal wall.  It's more like a metal hook to keep the lamp off the ground."

Instead of taking hanger:
	say " The hanger is built into the wall."
	
[Understand "light [something]" as turning on.  Turning on is an action applying to one thing.]

[Understand the command "light [something] with [something]" as something new.
[Lighting lamp with is an action applying to two things.]   
Understand "light [something] with [something]" as switching on lamp. 

Understand "light lamp" or "light lamp with fire" or "light lamp using fire" or "light lamp in fire" as switching on lamp.  switching on lamp is an action applying to one thing.]

[Check switching on lamp with:
	if noun is lamp:
		if the second noun is fire:
			say " .";
			continue the action;
	If noun is lamp:
		if second noun is not fire:
			say " .";
			stop the action;
	If noun is not the lamp: 
		say " why would you want to light that?";
		stop the action;
	If the second noun is not fire:
		say "You can't light anything with that.";
		stop the action.]


The Fireplace is a container that is fixed in place.  The Fireplace is in the Home Room.  The Fire is a thing.  Fire is in Fireplace.  

Instead of taking fireplace:
	say " This fireplace, like all the ones made before it, are cemented into the wall, and very difficult to move."

Instead of taking fire: say "You're gonna carry that with your bare hands? Try looking around for something you can light instead."

Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
   say "Hey, no cheating, do you want to get coal in your stockings?." instead

[ ^ rule for dissabling take all from Matt]

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

Carry out Bubbling: 
	say "poof.";
	now white door is open;
	now hardwood door is open;
	now gate is open;
	now santa transformer is switched on.

Chapter 1 ~ A Beginning
	
The Home Room is a room.  The description of the Home Room is " A beautifully old fashioned room with red brick walls.  The carpet is made of unbleached wool, and is soft and comforting to the touch.  There is a fireplace in the north-facing wall.  The fire within the hearth is burning merrily, and you can feel its gentle warmth.  Above it, there is a lamp hanging on the wall. Looking around, there is a gate to the west, a hardwood door to the south, a white door to the east, and an open door to the north through which you can smell roasting root vegetables."

Lamp is a thing. Understand "unlit lamp" as the Lamp.

Fireplace is a thing.

Envelope is a closed openable container.  Letter is a thing.  Letter is inside envelope.  When play begins, move envelope to player.  The description of the envelope is " A wrinkled beige colored envelope.  Even though the outside of the envelope looks worn, the seal is still intact.  The front of the envelope reads, Max Tave 2344 Beckwith Street Honolulu Hawaii."  The description of the letter is " My dear Max, I would love to deliver Christmas presents one last time, but one cannot go on working forever!  Every year I have seen you growing into a fine young man.  I hate to pull you away from the family, but I have decided to go on a vacation.  You will need to become Santa Clause for a day, and use my magic toy bag to deliver presents to one last house.  If you don't want to help, you can leave through the front door.  You'd have to live outside for a little while until I get home to take you back to Hawaii, but I know I can count on you, right?  You can find the Santa Transformer in my office; that is what really makes you into Santa.  You'll need to find some food and a strand of my hair, which goes in the fuel holder on the side of the side of the Santa Transformer.  You'll also need to find the runestone, which also powers the machine.  Oh yea, there is also a secret word that unlocks the Santa Transformer, so find Mr. Jingles the elf and ask him, he'll remember."

The description of player is " You still smell like the poi and kalua pig breakfast you ate last night.  You are wearing a white shirt that says Punahou Computer science and blue P.E. pants.  You're pretty skinny, and have a six-pack.  You stand up, ready to look for the toybag not wanting to disappoint Santa."

[Instead of going south:
	if player has unlocked hardwood door:
		continue the action;
	If the player has opened the door: 
		continue the action;
	If the player has not opened the door:
		say " Are you going to walk through a hardwood door?  Who do you think you are?.";
	If the player has not unlocked hardwood door:
		say " You're going to need the door first silly."]



Chapter 2

Toy window is scenery.  Toy window is in toy room.  The printed name of toy window is "window." The description of Toy window is " Outside is pitch black; you can't see a thing.  You better get a move on anyway since it will take you a while to get to anywhere from the artic, even if you have a magic sleigh."

Toy Room is a room.  The Toy room is east of White Door. The description of the Toy room is " A long room with a worktable stretching all the way down the middle.  This must be where all of the toys are made.  There is also a workbench, which is probably where the elves sit while they are doing their work.  On the eastern wall is a window looking out into the night. Way down in the corner is a big red bag, and sitting on the table right in front of you is a mini hammer."

White Door is a door.  White door is east of the Home Room.  White door is west of Toy Room.  The white door is locked.  The description of the White Door is " A wooden door painted white.  It is made of thick sturdy wood.  Upon closer inspection, you see something etched into the wood.  A picture of reindeer pulling Santa's sleigh through the night sky with a full moon. The picture is intricate, yet smooth to the touch, this must be the handiwork of elves."

Toybag is a container. The toybag is in the toy room. The description of the toybag is " A gigantic bag is as round as a tomato, and goes all the way up to your chest.  It is bright crimson, and the top is tied with golden string."  Understand "bag" as toybag.

Instead of taking toybag:
	if player is santa1:
		say " You pick up the bag, and despite its size it is as light as a feather.";
		continue the action;
	otherwise:
		say " You pull, and tug, but you can't move the bag an inch.  What's in this thing, stones?.";
		stop the action.

Mini Hammer is a thing. Understand "hammer" as Mini Hammer. Mini Hammer is on the Worktable.  The description of Mini Hammer is " It would be small for a human hammer, but for an elf, it's perfect for hammering in the metal soles of shoes.  An elf must have forgotten to put it away."

Workbench is scenery.  Understand "bench" as workbench.  The description of Workbench is " A nice bench, good for sitting."

instead of taking workbench:
	say " Whoa there, what would you want that for?  This work bench is bolted to the ground anyway."

Understand "table" as worktable.  Worktable is a scenery supporter.  Worktable is in Toy Room.  The description of worktable is " A rectangular table good for working, and just the right height for an elf, about half a meter tall.  There is a mini hammer on it."

Toy Room is a Dark Room.

Chapter 3

Santa's Window is scenery.  Santa's window is in Santa's office.  The printed name of Santa's window is "window."  The description of Santa's window is " The sky is light grey outside, it will soon be morning! You better become Santa and deliver the presents quick."

Santa's office is a room.  The Santa's office is south of the Hardwood Door.  The description of Santa's Office is " So this is Santa's office.  As you walk into the room, you take notice of a strange machine bolted to the western wall.  This must be the Santa Transformer.  There is also a brown leather coat hanging on the wall and a window."

Hardwood Door is a door.  Hardwood Door is south of home room.  Hardwood door is north of Santa's Office.  Hardwood Door is locked and lockable.  The description of the Hardwood Door is " A dark brown wooden door with many knots and natural patters."

The Santa Transformer is closed openable container.  Santa tranformer is a switched off device.  Santa Transformer is a locked lockable container.  The Santa Transformer is scenery.  The Santa transformer is in Santa's office.  The description of Santa Transformer is " A big machine that looks like a large cylinder.  It is made of stone, and is smooth to the touch all the way around.  The machine looks big enough to fit Santa in it, or at least a big well-rounded man.  On the side of the Santa transformer there are two groves in the stone, this must be the Rune Holder and Fuel Holder that Santa was talking about in his letter."

understand "machine" as Santa transformer.

Understand the command "put [something] in [something]"as something new.
Putting it in is an action applying to two things.
Understand "put [something] in [something]" as putting it in.

[^ from Mrs. Kiang for carrying capacity of certain containers]

Rune Holder is part of The Santa Transformer. The Rune Holder is a container. The description of Rune Holder is " This container carved into the Santa Transformer looks like it can fit a round stone."  The carrying capacity of Rune Holder is 1.  
	
Instead of putting something in Rune Holder:
	if the noun is the runestone and the second noun is the Rune Holder:
		say " you place the rune in the rune holder.  It fits perfectly and the rune begins to glow.";
	otherwise:
		say " that doesn't go there";
		stop the action.
		
[^ from Mrs. Kiang]


FuelHolder is part of The Santa Transformer.  FuelHolder is a container.  The description of FuelHolder is " This large grove is also carved into the Santa transformer, but it looks more like a shelf for you to place something on."  The carrying capacity of FuelHolder is 1.  Understand "fuel holder" as fuelholder.

Instead of putting something in fuelholder:
	If noun is Fuel and the second noun is Fuelholder:
		say " You place the food into the Fuel Holder.  You hear a sound like in Star Treck, where Captain Kirk is being beamed down to a planet, but anyway, the food is slowly disappearing before your eyes.  As it does this, the Santa transformer has started to buzz and now has a green aura.";
		Now the description of the Santa transformer is " The machine now seems to be on, but there is still no door, no way to get in.  Where's that elf who knows the password?";
		Now the Santa transformer is switched on.;
	Otherwise:
		say " Why would you want to put that into the fuel holder?  That's not fuel for this machine.";
		Stop the action.
		
Instead of taking fuel when fuel is in fuelholder:
	say " The Santa Transformer has absorbed the food as energy."

Fuel is a kind of thing.  Mashed Potatoes, Beef Roast, Green Beans, Smoked Ham, Bread Pudding, and Roasted Turkey are fuel.

Understand "transformer" or "contraption" as the Santa Transformer.

every turn rule:
	if rune holder contains runestone:
		If fuel in fuelholder:
			say " The Santa Transformer glows bright green.  It seems to be alive an kicking, so you must have turned it on.  But where's the door; you're going to have to unlock it somehow.";
		Now the Santa Transformer is switched on.
	
every turn rule:
	If Santa transformer is switched on:
		if Santa transformer contains player:
			say " You feel a tingling in your belly and on your face, and poof, now you're Santa." ;
			remove max from play;
			now player is santa1;
			move player to Santa's office;
			Now Santa transformer is locked;
			Now the description of Santa transformer is " The Santa Transformer looses its glow and looks just like before, a cylender of stone.  The door has dissapeared."

Kenaz is a thing.
Casting Kenaz is an action applying to nothing.  Understand "Kenaz" or "say Kenaz" or "cast Kenaz" as casting Kenaz.  

Instead of casting Kenaz: say " You shout the word, and a bright green light flashes from the Santa transformer outlining the door.  The Santa transformer can now be opened, but the green light fades away.";
	Now the Santa Transformer is unlocked;  
	Now the description of the Santa Transformer is "."

Chapter 4

Sleigh Room is a room.  The Sleigh Room is west of door.  The description of Sleigh Room is " A room built for a sleigh, and a sleigh there is.  In the middle of the room is huge red Sleigh.  The wood is painted a dark crimson color, and the edges are lined in gold.  The Sleigh is hooked up to 12 reindeer. To the north is an opening, kind of like a garage door.  You can see that there is a long drop from the entrance.  This house must be on the side of a mountain or something.  You'll need to fly out of here."

Instead of going north in sleigh room:
	If Runestone is in dashboard:
		If santa1 is in Santa's sleigh:
			say " you fly off into the twilight sky.";
			continue the action;
	If player is santa1:
		If player is not in santa's sleigh:
			say "Even Santa can't fly without his sleigh.";
			end the game in death;
	If max is in Santa's sleigh:
		if runestone is in dashboard:
			say " This sleigh was not built for humans, only Santa can fly this sleigh.";
			stop the action;
	If santa1 is in santa's sleigh:
		if runestone is not in dashboard:
			say " You crack the whip, and the reindeer pull, but the sleigh doesn't go anywhere.  You're going to need to need some extra power to power the sleigh."
		
[Understand "fly sleigh" or "fly" or "operate sleigh" as going north in sleigh room.  Going noth in sleigh room is an action applying to two things.]

Gate is a door.  The Gate is west of the Home Room.  Gate is east of Sleigh Room.  The Gate is locked and lockable.  The description of the gate is " A large silver gate stands infront of you.  Through the vertical posts you feel the night chill of the artic.  You might not be able to go inside because there is no fireplace in there.  You can see that there is a red sleigh in the room behind the gate.  The gate arcs at the top, and there is a big lock holding both sides together."  Understand "silver gate" as the gate.

The description of Santa's sleigh is " A jumbo sized sleigh, almost the size of a car.  On the inside you can see a bench with a woolen cushion.  There are reins drooping over the front, and embedded into the dashboard is a stone."

Bench is part of Santa's sleigh.  The description of Bench is " A bench good for sitting.  There is even a cushion on top to make it extra confortable."

Reindeer is a part of Santa's Sleigh.  The description of Reindeer is " Dasher, Dancer, Prancer, Vixen, Comet, Cupid, Donner, Blitzen, and Rudolph.  The reindeer stamp the ground; they seem ready to go."

Cushion is part of Santa's Sleigh.  The description of Cushion is " It is warm, soft, and furry, just like the carpet you felt inside the house."

Instead of talking to reindeer:
	say " Are you the reindeer whisperer?  That's crazy!"

Santa's Sleigh is a thing.  Santa's Sleigh is in the Sleigh Room.  Understand "sleigh" as Santa's Sleigh.  Santa's Sleigh is a vehicle.  Dashboard is part of Santa's Sleigh.  Dashboard is a container.  

Runestone is a thing.  Understand "stone" as runestone.  Runestone is in dashboard.  The description of Runestone is " The stone is oval in shape and primarily dark grey.  There are green cracks running through it, which emit a green light."  

Instead of putting runestone in dashboard:
	say " You push the stone back into place, and the dashboard lights up.  The sleigh seems alive, and the reindeer are making more noise than ever.";
	continue the action.;
	Now the description of dashboard is " The front of the sleigh has leather reigns drooping over it, and there is a mysterious stone held inside.  There are various buttons and lights covering the dashboard.  They are all beeping and buzzing."
	
Instead of taking runestone in dashboard:
	say " You pull and tug at the runestone until it comes out with a 'pop.'  The dashboard looses its color and seems to power off.";
	continue the action;
	now the description of the dashboard is " The dashboard is riddled with buttons and lights, but all of them are dark."
	

[Chapter 5

Bedroom is a room.  The Bedroom is west of the Santa's Office.  The description of Bedroom is " ."

Bed is a thing in Bedroom.  The description of Bed is " The bed looks like a king sized mattress, but upon closer inspection, the base is made from straw and covered with a layer of wool.  There is a maroon blanket covering the bed, and two soft pillows."

Blanket is part of bed.  Pillow is a part of bed.  understand "Maroon blanket" as blanket.  Understand "Pillows" as pillow.  Instead of taking blanket:
	Say " Why would you steal Mr. and Mrs. Claus' blanket?  Do you want them to be cold at night?."
Instead of taking pillow:
	say " Don't take Santa's pillow, he's going to have a hard time sleeping at night."]

Chapter 6

Sky is a room.  the sky is north of the Sleigh Room. The description of the Sky is " You are flying through the night sky in Santa's sleigh.  There are barely any clouds tonight, and the starts are even brighter than ever.  There is a full moon, and you can your reindeer galloping higher into the sky.  There is a sheep's pasture below you, to the north is Spain, and to the west is Hawaii.  If you don't understand Spanish, you should probably go to Hawaii"

Max is a man. The player is Max.  

Santa1 is a man.  The printed name is "Santa".  The description of santa1 is " the big man himself."  Redcoat is a thing.  Redcoat is wearable.  Redcoat is worn by santa1.  the description of redcoat is " Santa's iconic red coat with white lining.  It's just as comfortable as you thought it would be.  It protects you from the cold, and keeps you cool in the heat; there must be something magical about it."  The printed name of redcoat is "red coat."  Understand "red coat" as redcoat. Red pants is a thing.  Red pants is wearable.  Red pants is worn by Santa1.  The description of red pants is " Santa's gotta have a pair of pants.  These long red pants reach all the way down to your boots, and are made from the same red fabric and white lace as your coat."  Santa's boots are a thing.  Santa's boots is wearable. Santa's boots are worn by santa1.  Understand "boots" as Santa's boots.  The description of Santa's boots is " Santa's black boots with a golden buckle.  They keep your feet warm and dry.  They are also as light as a feather, so that you don't make any noise walking on roofs."  Santa's Hat is a thing.  Santa's hat is wearable.  Santa's hat is worn by santa1.  Understand "hat" as Santa's hat.  The description of Santa's hat is " A Santa hat just like you see everyone wearing during Christmas, except one thing, it's not itchy, it's not made from plastic, it's one of a kind, and it keeps your head warm.  What more could you ask for?"

Chapter 7

Sheep's Pastures is a room.  The Sheep's Pastures is below the Sleigh Room.  The description of the Sheep's pastures is " A large enclosure full of sheep.  There are wooden walls built around them, and a fire to keep them warm.  Santa must really like sheep.  The sheep are chewing on hay, and doing whatever else it is that sheep do."  Sheep is a thing.  Sheep is in Sheep's pastures.  The description of sheep is " Baaaa goes one of the sheep.  They really look like white balls of fluff.  They must have grown extra fur because of the cold winters.  The ones that have short horns are probably the males."

Chapter 8

Kitchen is a room.  The Kitchen is north of the Home Room.  The description of the Kitchen is " The heat of the hearth in the home room is felt even here in the kitchen.  The walls are made of red brick, and there is a dining table laden with food.  The east wall has some characters carved into the wall.  To the north is the front door of the house."

Dining table is a supporter.  Dining table is in kitchen.  Mashed potatoes is a thing. Understand "Potatoes" as the Mashed potatoes.  Mashed potatoes is on dining table.  Roast Turkey is a thing.  Mashed potatoes is edible.  Understand "Turkey" as Roasted Turkey.  Roasted turkey is on Dining table.  Roasted Turkey is edible.  Smoked ham is a thing.  Understand "ham" as smoked ham.  Smoked ham is edible.  Smoked ham is on dining table.  Green beans is a thing.  Green beans is edible.  Understand "Beans" as the green beans.  Beans is on dining table.  Bread Pudding is a thing.  Bread Pudding is edible.  Understand "pudding" or "bread" as Bread Pudding.  Bread Pudding is on Dining table.  beef roast is a thing. beef roast is on the dining table.  Understand "roast" as beef roast.

The description of the dining table is " A circular oak dining table with four legs, supporting a Christmas feast.  On the table there are mashed potatoes, roasted turkey, smoked ham, green beans, bread pudding, and beef roast."

Instead of eating beef roast:
	say " Remember what Santa said in his letter? You'll need some food later on.  Why don't you dig into some of the other stuff."

The description of beef roast is " A huge hunk of meat, seared and roasted to perfection.  The Beef Roast is crusted with salt, pepper, garlic, and oregano.  There's so much food, maybe you should save this dish for later."

Instead of eating mashedpotatoes:
	say " Creamy, buttery, and salty with the aftertaste of roasted garlic.  Just what holiday mashed potatoes should taste like.";
	Remove mashedpotatoes from play.
	
The description of mashedpotatoes is " A bowl of white mashed potatoes; it smells delicious."

Instead of eating Roasted Turkey:
	say " The light and dark meat is juicy and delicious.  The crispy skin is slightly salted, and you can smell the aroma of rosemary and thyme.  You eat the entire turkey, you really have the appetite of a true Santa.";
	remove Roasted Turkey from play.

The description of the Roasted Turkey is " This 12 lb. bird has been roasted to golden brown perfection; makes me want to sample."

Instead of eating Smoked Ham:
	say " Mmm, smoked elven ham, glazed with mustard and honey.  The sugars have caramelized on the outside of the meat, and the bone keeps in all the juices.  How can you eat so much?";
	Remove Smoked Ham from Play
	
The description of Smoked Ham is " Smoked ham with some kind of glaze on it.  The ham must be at least 10 lbs.; who could eat all this food?."

Instead of eating Green Beans:
	say " Crispy green bean casserole.  Here's your serving of vegetables for the day.  Even though they're green, they're delicious.  The perfect compliment to every holiday meal.";
	Remove Green Beans from play.
	
The description of Green Beans is " Green bean casserole fresh from the oven.  It looks dangerously delicious with all those fried onions on top."
	
Instead of eating Bread Pudding:
	say " Sweet, soft, and still warm.  There are chunks of chewy candied fruits just like how mom makes every year.  The undertones of cinnamon and allspice permeate the room as you polish off every last bite.";
	Remove bread pudding from play.
	
The description of the Bread Pudding is " Christmas bread pudding; mmm, it smells like cinnamon."

Chapter 9

Elf's Room is a room.  The Elf's Room is east of the stone door.  The description of the Elf's Room is " After opening the stone door, you reveal a room dimly lit by the light from the kitchen.  There is an elf here sleeping in a hammock.  He seems to be sleeping soundly."  
Stone door is a secret door.  Stone door is east of the kitchen.  Stone door is west of elf's room.  Stone door is an unlocked door.

Understand "examine characters" or "x characters"  as examining wall. Examining Wall is an action applying to one thing.  
Instead of examining the wall:
	now stone door is revealed;
	say " You examine the curvy lines of the characters, but see nothing that you understand.  Upon closer inspection, you see that there is a line that marks out a rectangle that goes from the floor until your waist."
	
the description of the stone door is " A secret stone door, I wonder what's behind it, do you want to push it open?"

After examining the stone door:
	say " A secret stone door, I wonder what's behind it, do you want to push it open?";
	If the player consents:
		say " With some effort, you push at the stone door.  At first it doesn't budge, but on the second try you hear the grinding of stone against stone, and soon the door swings to the left revealing an unlit room..";
	Otherwise:
		say " You turn a blind eye to the markings, do you usually do that , and do you think it's a good habit?."
	
Understand "Push wall" or "open door" or "push door" or "open wall" as opening stone door.  Opening stone door is an action applying to one thing.

The wall is undescribed.  The wall is a thing.  The wall is in the kitchen.

Elf's Room is a dark room.

Understand "Talk to [someone]" or "hello" as talking to. Talking To is an action applying to one thing.

Instead of talking to elf for the first time:
	say " The elf rolls out of bed, 'Ah, what happened, and who are you?  What did you do with Santa?'."

Elf is a man.  The elf is in the Elf's room.  The description of the elf is " He seems like a miniature human, except with small brown eyes and pointed ears."

The hammock is scenery.  The hammock is in the elf's room.  The description of the hammock is " A nicely woven hammock; there seems to be an elf in it."




Table of Supplies
Topic	Reply
"Rune Stone"	"it comes from the elves. You need to throw the stone in the air to stop time."
"Kitchen"	" That is where all us elves make food for Santa, Mrs. Clause, and ourselves.  The elf gets out of the hammock and walks around."
"Home Room"	" That is where anyone can go to relax.  The elf rolls over in the hammock."
"Santa Transformer"	" Every once in a while Santa needs to take a vacation.  That's when we need someone like you, a replacementclause to fill in for Santa until he comes back.  The Santa Transformer is what turns the average Joe like you into Santa Clause."
"Santa's Sleigh"	" Santa's sleigh is a pretty magical machine.  I even helped to carry the lumber during construction.  It runs on the power of Christmas Spirit.  "
"How to deliver presents"	" You need to become Santa first, get his toybag, and then deliver the presents to Spain or Hawaii.  Just one of these places will do."
"Elf"	" My adopted son was a human named Buddy.  All the other elves are on vacation with Santa.  But I stayed behind to watch the house, and Santa chose me since I have the most experience with humans."
"Spain"	" Spain is a country that Santa always delivers presents to.  Do you speak Spanish?  Well if not, becoming Santa imbues you with the knowledge to understand Spanish."
"magic word"	" to turn on the Santa transformer you must say Kenaz, which literally means torch.  It symbolizes knowledge, intellect, illumination, and searching for enlightenment."
"password"	" The password for the Santa transformer is Kenaz, which literally means torch.  It symbolizes knowledge, intellect, illumination, and searching for enlightenment."

Chapter 10

Spain is a region.  El pueblo is in Spain.  La chimnea is north of the Sky.   El pueblo is a room.    The description of el pueblo is " Una casa en españa.  Es bastante grande, pero solamente hay una habitación.  En la sala de estar hay un alter para los tres hombres sabios.  Este alter es para contener los regalos de Navidad.  'This is a house in spain.  It's quite big, but only has one room.  In the living room is an alter for the three wise men where people usually put presents.'"  La chimnea is a door.    La chimnea is above el pueblo. El pueblo is below la chimnea.  the description of la chimnea is " Este chimnea es muy grande y hecho de piedras.  'This chimny is very big and made of stone.'"

Instead of going north from sky:
	say " Vas al sur por la chimnea.  Ahora tú estas en una casa.  ' you go south through the chimney and lower yourself into a house."  
	
Understand " put presents on alter" or "pon los regalos en la mesa" or "pon los regalos en el alter" as dropping presents in el pueblo.  Dropping presents in el pueblo is an action applying to two things. understand "pueblo" as el pueblo.  El alter is a supporter.  El alter is in el pueblo.  Understand "alter" as el alter.
	
Instead of dropping presents in el pueblo:
	if player is holding presents:
		say " Pones los regalos en el alter.  'you put the presents on the alter";
		continue the action.;
	Otherwise:
		say " Tú nececitas que obtener los regalos antes de ponerlos.  'You need to get the presents before you can put them anywhere'."
		
after going to Spain for the first time:
	say "I bet you didn't know Santa could speak Spanish."

Hawaii is a region.  House is in Hawaii.  House is a room.  Housewindow is west of the Sky.  Housewindow is a closed door.  Housewindow is east of house.  The description of Housewindow is " A clear glass window.  Well, now I know what Santa does if there is no chimney."  The printed name of Housewindow is " window."  The description of house is " A white wooden house with a grey roof."  The Christmas tree is scenery.  The Christmas tree is a supporter. Understand "tree" as Christmas tree.  The description of Christmas tree is " A Christmas tree decorated with shiny gold colored figurines and ornaments of all different colors."  

Instead of going west from sky:
	if housewindow is open:
		say " You slide the window open and slip into the house as silently as a cat.";
		continue the action;
	otherwise:
		say " Not even Santa can walk through a closed window."

Understand "put presents under Christmas tree" or "drop presents under christmas tree" as putting presents on christmas tree.  putting presents on christmas tree is an action applying to two things.

Instead of putting presents on christmas tree:
	if player is holding presents:
		say " You put the presents under the Christmas tree.";
		continue the action.;
	Otherwise:
		say "You need to get the presents before putting them anywhere."

Presents is a thing. The description of presents is " A whole bunch of present in different colors and sizes."
		
Instead of opening toybag:
	If player is not santa1:
		say "you pull and tug, but the bag won't open";
		stop the action;
	if player is santa1:
		if player in Hawaii:
			say "it opens easily, and here's the presents";
		otherwise:
			say "It opens easily, but the bag is empty."
			
Instead of opening toybag:
	if player is not santa1:
		say " you pull and tug, but the bag won't open.";
		stop the action;
	If player is santa1:
		if player in Spain:
			say " it opens easily, and here's the presents.";
		otherwise:
			say " It opens easily, but the bag is empty."
	
	
			
every turn rule:
	If player in el pueblo:
		if presents on el alter:
			say " you have saved Christmas yay!";
			end the game in victory.
			
every turn rule:
	If player in house:
		if presents on christmas tree:
			say " You saved Christmas, Yay!.";
			end the game in victory.


use no scoring.

Chapter 11

The front door is a door.  The front door is north of the kitchen.  Artic is a room.  Artic is north of the front door.  The description of artic is " ."  Igloo is a container in the artic.  The Eskimo is a man.  The Eskimo is in the Igloo. 

The front door is a door.  The front door is north of the kitchen.  The description of the front door is " ."

Igloo is scenery.  Igloo is a container.  The description of Igloo is " ."  Eskimo is a man.  Eskimo is in Igloo.

Instead of opening front door:
	if player is not wearing coat:
		say " You are greeted by a cold blast of artic air that chills you to the core.  You're definitely going to need some protection against the elements.  After all, you're only wearing a t-shirt and shorts.";
	otherwise:
		say " You are greeted by a cold blast of artic air, but you're mostly warm because of the coat you're wearing.  Your fingertips are freezing cold, so you shove them deep into your pockets; ah much better.  Ahead of you is the cold wasteland of the artic.  There is a blizzard going on outside, but through the thick drift of snow you can see a dark shape in the distance."
		
Instead of opening gate: 
	if player is not wearing coat:
		say " You are greeted by a cold blast of artic air that chills you to the core.  You're definitely going to need some protection against the elements.  After all, you're only wearing a t-shirt and shorts..";
	otherwise:
		say " You are greeted by a cold blast of artic air, but you're mostly warm because of the coat you're wearing.  Your fingertips are freezing cold, so you shove them deep into your pockets; ah much better.  Ahead of you is the sleigh room."
		
Dark shape is scenery.  Dark shape is in the Artic.  description of the dark shape is "Dark and shadowy.  A shape in the distance that eats away at your curiosity.  It seems to be in the shape of a hemisphere."

Table of Eskimo
topic	reply
"hello"	"Hi";
	
After entering igloo for the first time:
	say " An Eskimo is here, and he asks, 'uh, need place to stay? uh, want stay with me?' and waits for you to answer yes or no.";
	If the player consents:
		say " The eskimo nods and gets busy making a place for you.  You live out the winter of 2013 sharing an igloo with this Eskimo.  You survive eating dried fish and whale blubber, a truly memorable winter vacation.";
		end the game in victory;
	otherwise:
		say " After refusing the Eskimo's kind offer, you try to find your way back to the house, but by this time the blizzard has picked up, making impossible to see 10 feet infront of you.  You backtrack for 30 minutes, but can't seem to find the house.  Maybe it was a little more to the left, or maybe the right.  After 12 hours, you are completely frozen.  This all leads you to question, was it ever there at all?";
		End the game in death.

Coat is a thing.  The coat is wearable.  The description of the coat is " Hanging on the opposite wall hangs a brown leather coat, it could help you keep warm through the winter."   The coat is in Santa's Office.  Understand "brown leather coat" as coat.

Cold is a region.  Sleigh room and Artic are in cold.


Instead of going to cold:
	if player is not wearing coat:
		say "You need to put on the coat before going to such a cold place.";
		stop the action;
	otherwise:
		continue the action.

Understand "xyzzy" as xyzzying.
xyzzying is an action applying to nothing.

Instead of xyzzying:
	say " Despite the fact that this magical word could light fires, strike lightning, and make you breath under water, that is all in your imagination."
