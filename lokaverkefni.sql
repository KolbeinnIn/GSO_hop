CREATE DATABASE kennitala_lokaverkefni

CREATE TABLE utgefandi(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL,
	land VARCHAR(55),
	arStofnad CHAR(4),
	stofnandi VARCHAR(55)
);
CREATE TABLE flokkur(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL
);
CREATE TABLE tegund(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL
);
CREATE TABLE hofundur(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(55) NOT NULL
);
CREATE TABLE flytjandi(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL,
	faedingardagur DATE,
	danardagur DATE,
	flokkur_ID INT,
	FOREIGN KEY (flokkur_ID) REFERENCES flokkur(ID)
);
CREATE TABLE diskur(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55),
	utgafudagur DATE,
	utgefandi_ID INT,
	FOREIGN KEY (utgefandi_ID) REFERENCES utgefandi(ID)
);
CREATE TABLE lag(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(55) NOT NULL,
	hofundur VARCHAR(55) NOT NULL,
	lengd TIME,
	texti LONGTEXT,
	tegund_ID INT,
	flytjandi_ID INT,
	diskur_ID INT,
	hofundur_ID INT,
	FOREIGN KEY (flytjandi_ID) REFERENCES flytjandi(ID),
	FOREIGN KEY (tegund_ID) REFERENCES tegund(ID),
	FOREIGN KEY (diskur_ID) REFERENCES diskur(ID),
	FOREIGN KEY (hofundur_ID) REFERENCES hofundur(ID)
);
	
INSERT INTO
	utgefandi(nafn,land,arStofnad,stofnandi)
VALUES
	("Kristbergur Útgáfa", "Ísland","1978","Kristberg Rúnar Pálsson"),
	("SH Records", "Bandaríkin", "2001","Sherlock Holmes"),
	("Fueled by Ramen LLC.","Bandaríkin", "1996","Vinnie Fiorello");
	
INSERT INTO
	flokkur(nafn)
VALUES
	("Sóló"),
	("Hljómsveit"),
	("Dúó"),
	("Kvartett"),
	("Kór");
	
INSERT INTO
	tegund(nafn)
VALUES
	("Popp"),
	("Rokk"),
	("Electronic"),
	("Indie"),
	("Gospel"),
	("Hip Hop"),
	("Rapp");
	
INSERT INTO
	hofundur(nafn)
VALUES
	("Tyler Joseph"),
	("Joshua Dun"),
	("Jack Antonoff"),
	("Philip Doddridge"),
	("Le Che De Ann Monique Martin"),
	("Thomas Schleiter");
	
	
INSERT INTO
	flytjandi(nafn,faedingardagur,danardagur,flokkur_ID)
VALUES
	("Kanye West", "2000-08-09", "2017-07-07", 1),
	("Against the Current", "2011-03-29",NULL,2),
	("Bleachers","2005-05-05",NULL,3),
	("Karmin", "2012-01-10",NULL,4),
	("Edwin Hawking Singers","1976-10-22","1995-02-17",5),
	("Twenty Øne Piløts","2009-12-01",NULL,3);
	
INSERT INTO
	diskur(nafn,utgafudagur,utgefandi_ID)
VALUES
	("Pen","2017-05-03",1),
	("Blurryface","2015-05-17",2),
	("Rain","2016-09-26",3),
	("Vessel","2013-01-08",3),
	("Regional at Best","2011-07-08",2),
	("Drought","2013-12-05",1),
	("Gravity","2015-02-17",3);

INSERT INTO
	lag(nafn,lengd,texti,tegund_ID,flytjandi_ID,diskur_ID,hofundur_ID)
VALUES
	("Guns for Hands","00:04:36","Guns for Hands
	I know what you think in the morning,
	When the sun shines on the ground,
	And shows what you have done,
	It shows where your mind has gone,
	And you swear to your parents,
	That it will never happen again,
	I know, I know what that means, I know.
	That you all have guns,
	And you never put the safety on,
	And you all have plans,
	To take it, to take it,
	Don't take it, take it, take it.
	I'm trying, I'm trying to sleep,
	I'm trying, I'm trying to sleep,
	But I can't, but I can't when you all have,
	Guns for hands, yeah
	I'm trying, I'm trying to sleep,
	I'm trying, I'm trying to sleep,
	But I can't, but I can't when you all have,
	Guns for hands, yeah
	Let's take this a second at a time,
	Let's take this one song, this one rhyme,
	Together, let's breathe,
	Together, to the beat,
	But there's hope out the window,
	So that's where we'll go,
	Let's go outside and all join hands,
	But until then you'll never understand.
	That you all have guns,
	And you never put the safety on,
	And you all have plans,
	To take it, to take it,
	Don't take it, take it, take it.
	I'm trying, I'm trying to sleep,
	I'm trying, I'm trying to sleep,
	But I can't, but I can't when you all have,
	Guns for hands, yeah.
	(hey, hey, hey, hey, hey, hey,
	hey, hey, hey, hey, hey, hey,
	hey, hey, hey, hey, hey, hey,)
	(la, da, da, da, da)
	[4x]
	We've turned our hands to guns, trade in our thumbs for ammunition,
	I must forewarn you, of my disorder, or my condition,
	'Cause when the sun sets, it upsets what's left of my invested interest,
	Interested in putting my fingers to my head,
	The solution is, I see a whole room of these mutant kids,
	Fused at the wrist, I simply tell them they should shoot at this,
	Simply suggest my chest and this confused music,
	It's obviously best for them to turn their guns to a fist.
	I'm trying, I'm trying to sleep,
	I'm trying, I'm trying to sleep,
	But I can't, but I can't when you all have,
	Guns for hands, yeah.
	I'm trying, I'm trying to sleep,
	I'm trying, I'm trying to sleep,
	But I can't, but I can't when you all have,
	Guns for hands, yeah.",1,6,4,1),
	
	
	("Holding On to You","00:04:25","Holding On To You
	I'm taking over my body,
	Back in control, no more shotty,
	I bet a lot of me was lost,
	Ts uncrossed and Is undotted,
	I fought it a lot
	And it seems a lot like flesh is all I got,
	Not anymore, flesh out the door,
	Swat,
	I must've forgot, you can't trust me,
	I'm open a moment and close when you show it,
	Before you know it, I'm lost at sea,
	And now that I write and think about it,
	And the story unfolds,
	You should take my life,
	You should take my soul.
	You are surrounding all my surroundings,
	Sounding down the mountain range of my left-side brain,
	You are surrounding all my surroundings,
	Twisting the kaleidoscope behind both of my eyes.
	And I'll be holding on to you [2x]
	Remember the moment
	You know exactly where you're going,
	'Cause the next moment,
	Before you know it, time is slowing
	And it's frozen still,
	And the window sill looks really nice, right?
	You think twice about your life,
	It probably happens at night,
	Right?
	Fight it,
	Take the pain, ignite it,
	Tie a noose around your mind
	Loose enough to breathe fine and tie it
	To a tree. Tell it, You belong to me.
	This ain't a noose, this is a leash.
	And I have news for you: you must obey me.
	You are surrounding all my surroundings,
	Sounding down the mountain range of my left-side brain,
	You are surrounding all my surroundings,
	Twisting the kaleidoscope behind both of my eyes.
	Entertain my faith. [10x]
	[4x]
	Lean with it, rock with it,
	When we gonna stop with it,
	Lyrics that mean nothing,
	We were gifted with thought,
	Is it time to move our feet
	To an introspective beat,
	It ain't the speakers that bump hearts,
	It's our hearts that make the beat.
	And I'll be holding on to you. [8x]",4,6,5,2),
	
	
	
	("Car Radio","00:04:27","Car Radio
	I ponder of something great
	My lungs will fill and then deflate
	They fill with fire
	Exhale desire
	I know it's dire
	My time today
	I have these thoughts
	So often I ought
	To replace that slot
	With what I once bought
	'Cause somebody stole
	My car radio
	And now I just sit in silence
	Sometimes quiet is violent
	I find it hard to hide it
	My pride is no longer inside
	It's on my sleeve
	My skin will scream
	Reminding me of
	Who I killed inside my dream
	I hate this car that I'm driving
	There's no hiding for me
	I'm forced to deal with what I feel
	There is no distraction to mask what is real
	I could pull the steering wheel
	I have these thoughts
	So often I ought
	To replace that slot
	With what I once bought
	'Cause somebody stole
	My car radio
	And now I just sit in silence
	I ponder of something terrifying
	'Cause this time there's no sound to hide behind
	I find over the course of our human existence
	One thing consists of consistence
	And it's that we're all battling fear
	Oh dear, I don't know if we know why we're here
	Oh my,
	Too deep
	Please stop thinking
	I liked it better when my car had sound
	There are things we can do
	But from the things that work there are only two
	And from the two that we choose to do
	Peace will win
	And fear will lose
	There's faith and there's sleep
	We need to pick one please because
	Faith is to be awake
	And to be awake is for us to think
	And for us to think is to be alive
	And I will try with every rhyme
	To come across like I am dying
	To let you know you need to try to think
	I have these thoughts
	So often I ought
	To replace that slot
	With what I once bought
	'Cause somebody stole
	My car radio
	And now I just sit in silence
	(Oooh) [x4]
	(Oooh) [x6 & repeats in background]
	And now I just sit in silence [x2]
	And now I just sit
	And now I just sit in silence [x3]
	And now I just sit
	I ponder of something great
	My lungs will fill and then deflate
	They fill with fire
	Exhale desire
	I know it's dire
	My time today
	I have these thoughts
	So often I ought
	To replace that slot
	With what I once bought
	'Cause somebody stole
	My car radio
	And now I just sit in silence",1,6,5,3),
	
	
	
	("Forest","00:04:26","Forest
	I don't know why I feed on emotion
	There's a stomach inside my brain
	I don't wanna be heard
	I want to be listened to
	Does it bother anyone else
	That someone else has your name?
	Does it bother anyone else
	That someone else has your name, your name?
	I scream, you scream, we all scream
	'Cause we're terrified of what's around the corner
	We stay in place
	'Cause we don't want to lose our lives
	So let's think of something better.
	Down in the forest
	We'll sing a chorus
	One that everybody knows
	Hands held higher,
	We'll be on fire
	Singing songs that nobody wrote.
	My brain has given up
	White flags are hoisted
	I took some food for thought
	It might be poisoned
	The stomach in my brain
	Throws up onto the page
	Does it bother anyone else
	That someone else has your name?
	Does it bother anyone else
	That someone else has your name?
	I scream, you scream, we all scream
	'Cause we're terrified of what's around the corner
	We stay in place
	'Cause we don't wanna lose our lives
	So let's think of something better.
	Down in the forest
	We'll sing a chorus
	One that everybody knows
	Hands held higher,
	We'll be on fire
	Singing songs that nobody wrote.
	Quickly moving towards a storm
	Moving forward, torn
	Into pieces over reasons
	Of what these storms are for
	I don't understand why everything I adore
	Takes a different form when I squint my eyes
	Have you ever done that?
	When you squint your eyes
	And your eyelashes make it look a little not right
	And then with just enough light
	Comes from just the right side
	And you find you're not who you're supposed to be?
	This is not what you're supposed to see
	Please, remember me. I am supposed to be
	King of a kingdom or swinging on a swing
	Something happened to my imagination
	This situation's becoming dire
	My tree house is on fire
	And for some reason I smell gas on my hands
	This is not what I had planned
	This is not what I had planned.
	Down in the forest
	We'll sing a chorus
	Hands held higher,
	We'll be on fire
	Singing songs that nobody wrote.
	Down in the forest
	We'll sing a chorus
	One that everybody knows
	Hands held higher,
	We'll be on fire
	Singing songs that nobody wrote.
	Hands held higher,
	We'll be on fire
	Hands held higher,
	We'll be on fire",1,6,5,4),
	
	
	
	("Kitchen Sink","00:05:34","Nobody thinks what I think,
	Nobody dreams when they blink
	Think things on the brink of blasphemy
	I'm my own shrink
	Think things are after me, my catastrophe
	At my kitchen sink,
	You don't know what that means
	Because a kitchen sink to you
	Is not a kitchen sink to me, OK friend?
	Are you searching for purpose?
	Then write something, yeah it might be worthless
	Then paint something then, it might be wordless
	Pointless curses, nonsense verses
	You'll see purpose start to surface
	No one else is dealing with your demons
	Meaning maybe defeating them
	Could be the beginning of your meaning, friend.
	Go away [4x]
	Leave me alone [7x]
	Nobody thinks what you think, no one
	Empathy might be on the brink of extinction
	They will play a game and say
	They know what you're going through
	And I tried to come up with an artistic way to say
	They don't know you, and neither do I
	So here's a prime example of a stand up guy
	Who hates what he believes and loves it at the same time
	Here's my brother and his head's screwed up
	But that's alright.
	[Zack:]
	Time gains momentum the moment when I'm living in 'em
	I'm winning a momentary sinning a moment passing after
	A re-beginning moments mending memories
	Pretending enemies are frenemies, sending me straight to bending me
	My bad behaviour but I bet I could have been a better man
	Copy and paste caught me, and copy, better rhymes bother me
	The better the rhythm the badder I am but I bet I'll battle with 'em battle
	Better I am, gambling man, better bet I am a gambling man, I am?
	Go away [4x]
	Leave me alone [4x]
	Leave me alone
	Don't leave me alone.
	Oh [5x]",1,6,5,5),
	
	
	
	("Semi-Automatic","00:04:14","Night falls with gravity,
	The earth turns from sanity,
	Taking my only friend I know,
	He leaves a lot, his name is Hope.
	I'm never what I like,
	I'm double sided, and I just can't hide,
	I kind of like it when I make you cry,
	'Cause I'm twisted up, I'm twisted up inside.
	The horrors of the night melt away,
	Under the warm glow of survival of the day,
	Then we move on,
	My shadow grows taller, along with my fears,
	And my frame shrinks smaller as night grows near.
	When the sun is climbing window sills,
	And the silver lining rides the hills,
	I will be saved for one whole day,
	Until the sun makes the hills its grave.
	I'm never what I like,
	I'm double sided, and I just can't hide,
	I kind of like it when I make you cry,
	'Cause I'm twisted up, I'm twisted up inside.
	I'm never what I like,
	I'm double sided, and I just can't hide,
	I kind of like it when I make you cry,
	'Cause I'm twisted up, I'm twisted up inside my mind.
	Doo,
	Doo, doo, doo-doo-doo... [8x]
	Doo
	[4x:]
	I'm semi-automatic, my prayer's schizophrenic,
	But I'll live on, yeah I'll live on, yeah I'll live on.
	By the time the night wears off,
	The dust is down and shadows burn,
	I will rise and stand my ground,
	Waiting for the night's return.
	I'm never what I like,
	I'm double sided, and I just can't hide,
	I kind of like it when I make you cry,
	'Cause I'm twisted up, I'm twisted up inside.
	I'm never what I like,
	I'm double sided, and I just can't hide,
	I kind of like it when I make you cry,
	'Cause I'm twisted up, I'm twisted up inside my mind.
	Doo,
	Doo, doo, doo-doo-doo... [8x]
	Doo",1,6,4,6),
	

	
	("Trees","00:04:27","I know where you stand
	Silent in the trees
	And that's where I am
	Silent in the trees.
	Why won't you speak
	Where I happen to be?
	Silent in the trees
	Standing cowardly.
	I can feel your breath.
	I can feel my death.
	I want to know you.
	I want to see.
	I want to say hello.
	Hello. Hello-oh-o. Hello.
	Na na, na na na nah na na. [4x]
	I know where you stand
	Silent in the trees
	And that's where I am
	Silent in the trees.
	Why won't you speak
	Where I happen to be?
	Silent in the trees
	Standing cowardly.
	I can feel your breath.
	I can feel my death.
	I want to know you.
	I want to see.
	I want to say hello.
	Na na, na na na nah na na. [2x]
	Hello, hello.
	Na na, na na na nah na na. [2x]
	Hello, hello.
	Hello, hello. [2x]",3,6,4,1),
	
	
	
	("HeavyDirtySoul","00:03:55","There's an infestation in my mind's imagination,
	I hope that they choke on smoke 'cause I'm smoking them out the basement,
	This is not rap, this is not hip-hop,
	Just another attempt to make the voices stop,
	Rapping to prove nothing, just writing to say something,
	'Cause I wasn't the only one who wasn't rushing to sayin' nothing,
	This doesn't mean I lost my dream,
	It's just right now I got a really crazy mind to clean.
	Gangsters don't cry,
	Therefore, therefore I'm,
	Mr. Misty-eyed, therefore I'm.
	Can you save, can you save my—
	Can you save my heavydirtysoul?
	Can you save, can you save my—
	Can you save my heavydirtysoul?
	For me, for me, uh
	Can you save my heavydirtysoul?
	For me, for me, uh
	Can you save my heavydirtysoul?
	Nah, I didn't understand a thing you said,
	If I didn't know better I'd guess you're all already dead,
	Mindless zombies walking around with a limp and a hunch,
	Saying stuff like, You only live once.
	You've got one time to figure it out,
	One time to twist and one time to shout,
	One time to think and I say we start now,
	Sing it with me if you know what I'm talking about.
	Gangsters don't cry,
	Therefore, therefore I'm,
	Mr. Misty-eyed, therefore I'm.
	Can you save, can you save my—
	Can you save my heavydirtysoul?
	Can you save, can you save my—
	Can you save my heavydirtysoul?
	For me, for me, uh
	Can you save my heavydirtysoul?
	For me, for me, uh
	Can you save my heavydirtysoul?
	Death inspires me like a dog inspires a rabbit. [2x]
	Can you save, can you save my—
	Can you save my heavydirtysoul?
	Can you save, can you save my—
	Can you save my heavydirtysoul?
	For me, for me, uh
	Can you save my heavydirtysoul?
	For me, for me, uh
	Can you save my heavydirtysoul?
	Can you save, can you save my—save my—
	Can you save my heavydirtysoul?
	Can you save, can you save my—save my—
	Can you save my heavydirtysoul?",2,6,1,2),
	
	
	
	("Ride","00:03:35","I just wanna stay in the sun where I find
	I know it's hard sometimes
	Pieces of peace in the sun's peace of mind
	I know it's hard sometimes
	Yeah, I think about the end just way too much
	But it's fun to fantasize
	On my enemies who wouldn't wish who I was
	But it's fun to fantasize
	Oh, oh, I'm falling, so I'm taking my time on my ride
	Oh, I'm falling, so I'm taking my time on my ride
	Taking my time on my ride
	I'd die for you, that's easy to say
	We have a list of people that we would take
	A bullet for them, a bullet for you
	A bullet for everybody in this room
	But I don't seem to see many bullets coming through
	See many bullets coming through
	Metaphorically, I'm the man
	But literally, I don't know what I'd do
	I'd live for you, and that's hard to do
	Even harder to say when you know it's not true
	Even harder to write when you know that tonight
	There were people back home who tried talking to you
	But then you ignored them still
	All these questions they're for real
	Like Who would you live for?,
	Who would you die for?
	And Would you ever kill?
	Oh, oh, I'm falling, so I'm taking my time on my ride
	Oh, I'm falling, so I'm taking my time on my ride
	Taking my time on my ride
	I've been thinking too much
	I've been thinking too much
	I've been thinking too much
	I've been thinking too much
	(help me)
	I've been thinking too much (I've been thinking too much)
	I've been thinking too much (Help me)
	I've been thinking too much (I've been thinking too much)
	I've been thinking too much
	Oh, oh, I'm falling, so I'm taking my time on my ride
	Oh, I'm falling, so I'm taking my time
	Taking my time on my ride
	Oh, oh, I'm falling, so I'm taking my time on my ride
	Oh, I'm falling, so I'm taking my time on my
	I've been thinking too much
	Help me
	I've been thinking too much
	Help me
	I've been thinking too much (I've been thinking too much)
	I've been thinking too much (help me)
	I've been thinking too much (I've been thinking too much)
	I've been thinking too much
	Help me",2,6,2,3),
	
	

	("Lane Boy","00:04,13","They say, Stay in your lane, boy, lane boy,
	But we go where we want to
	They think this thing is a highway, highway,
	But will they be alive tomorrow?
	They think this thing is a highway
	If it was our way
	We'd have a tempo change every other time change
	'Cause our minds change on what we think is good
	I wasn't raised in the hood,
	But I know a thing or two about pain and darkness
	If it wasn't for this music, I don't know how I would've fought this
	Regardless,
	All these songs I'm hearing are so heartless
	Don't trust a perfect person and don't trust a song that's flawless
	Honest,
	There's a few songs on this record that feel common
	I'm in constant confrontation with what I want and what is poppin'
	In the industry
	It seems to me
	That singles on the radio are currency
	My creativity's only free when I'm playin' shows
	They say, Stay in your lane, boy, lane boy,
	But we go where we want to
	They think this thing is a highway, highway,
	But will they be alive tomorrow?
	Will they be alive tomorrow?
	I'm sorry if that question I asked last
	Scared you a bit like a hazmat
	In a gas mask
	If you ask Zack
	He's my brother, he likes when I rap fast
	But let's back track,
	Back to this
	Who would you live and die for on that list?
	But the problem is
	There's another list that exists and no one really wants to think about this
	Forget sanity,
	Forget salary,
	Forget vanity,
	My morality
	If you get in between someone I love and me
	You're gonna feel the heat of my cavalry
	All these songs I'm hearing are so heartless
	Don't trust a perfect person and don't trust a song that's flawless
	They say, Stay in your lane, boy, lane boy,
	But we go where we want to
	They think this thing is a highway, highway,
	But will they be alive tomorrow?
	They say, Stay in your lane, boy, lane boy,
	But we go where we want to
	They think this thing is a highway, highway,
	But will they be alive tomorrow?
	Will they be alive tomorrow? [4x]
	They say, Stay in your lane, boy, lane boy,
	But we go where we want to
	They think this thing is a highway, highway,
	But will they be alive tomorrow?
	They say, Stay in your lane, boy, lane boy,
	But we go where we want to
	They think this thing is a highway, highway,
	But will they be alive tomorrow?",2,6,7,4),
	
	
	
	("Tear in My Heart","00:03:08","안녕하세요 [An-nyŏng-ha-se-yo]
	Sometimes you've got to bleed to know,
	That you're alive and have a soul,
	But it takes someone to come around to show you how.
	She's the tear in my heart, I'm alive,
	She's the tear in my heart, I'm on fire,
	She's the tear in my heart, Take me higher,
	Than I've ever been.
	The songs on the radio are ok,
	But my taste in music is your face,
	And it takes a song to come around to show you how.
	She's the tear in my heart, I'm alive,
	She's the tear in my heart, I'm on fire,
	She's the tear in my heart, Take me higher,
	Than I've ever been.
	Than I've ever been
	Than I've ever been
	Than I've ever been
	You fell asleep in my car, I drove the whole time,
	But that's ok, I'll just avoid the holes so you sleep fine,
	I'm driving here I sit, cursing my government,
	For not using my taxes to fill holes with more cement.
	You fell asleep in my car, I drove the whole time,
	But that's ok, I'll just avoid the holes so you sleep fine,
	I'm driving here I sit, cursing my government,
	For not using my taxes to fill holes with more cement.
	Sometimes you've got to bleed to know,
	That you're alive and have a soul,
	But it takes someone to come around to show you how.
	She's the tear in my heart, I'm alive,
	She's the tear in my heart, I'm on fire,
	She's the tear in my heart, Take me higher,
	Than I've ever been.
	My heart is my armor,
	She's the tear in my heart, she's a carver,
	She's a butcher with a smile, cut me farther,
	Than I've ever been.
	Than I've ever been
	Than I've ever been
	Than I've ever been
	My heart is my armor,
	She's the tear in my heart, she's a carver,
	She's a butcher with a smile, cut me farther,
	Than I've ever been.",1,6,6,5),
	
	
	
	("The Judge","00:04:58","Na na na na, oh oh
	Na na na na, oh oh
	Na na na na, oh oh
	When the leader of the bad guys sang,
	Something soft and soaked in pain,
	I heard the echo from his secret hideaway,
	He must've forgot to close his door,
	As he cranked out those dismal chords,
	And his four walls declared him insane.
	I found my way,
	Right time, wrong place,
	As I pled my case.
	You're the judge, oh no, set me free,
	You're the judge, oh no, set me free,
	I know my soul's freezing,
	Hell's hot for good reason, so please, take me.
	Na na na na, oh oh
	Na na na na, oh oh
	Na na na na, oh oh
	Three lights are lit but the fourth one's out,
	I can tell 'cause it's a bit darker than the last night's bout,
	I forgot about the drought of light bulbs in this house,
	So I head out, down a route I think is heading south,
	But I'm not good with directions and I hide behind my mouth,
	I'm a pro at imperfections and I'm best friends with my doubt,
	And now that my mind's out, and now I hear it clear and loud,
	I'm thinking, Wow, I probably shoulda stayed inside my house.
	I found my way,
	Right time, wrong place,
	As I pled my case.
	You're the judge, oh no, set me free,
	You're the judge, oh no, set me free,
	I know my soul's freezing,
	Hell's hot for good reason, so please,
	I don't know if this song is a surrender or a revel,
	I don't know if this one is about me or the devil.
	I don't know if this song is a surrender or a revel,
	I don't know if this one is about me or the devil.
	You're the judge, oh no, set me free, oh no
	You're the judge, oh no, set me free, oh no
	I know my soul's freezing,
	Hell's hot for good reason, so please,
	Na na na na, oh oh
	Na na na na, oh oh
	Na na na na, oh oh
	Na na na na, oh oh (You're the judge, oh no, set me free)
	Na na na na, oh oh (You're the judge, oh no, set me free)
	Na na na na, oh oh (You're the judge, oh no, set me free)
	(Josh Dun!)
	(You're the judge, oh no, set me free)",6,6,3,6),
	
	

	("Goner","00:03:57","I'm a goner, somebody catch my breath,
	I'm a goner, somebody catch my breath,
	I want to be known by you,
	I want to be known by you.
	I'm a goner, somebody catch my breath,
	I'm a goner, somebody catch my breath,
	I want to be known by you,
	I want to be known by you.
	Though I'm weak and beaten down,
	I'll slip away into this sound,
	The ghost of you is close to me,
	I'm inside-out, you're underneath.
	I've got two faces, blurry's the one I'm not,
	I've got two faces, blurry's the one I'm not,
	I need your help to take him out,
	I need your help to take him out.
	Though I'm weak and beaten down,
	I'll slip away into this sound,
	The ghost of you is close to me,
	I'm inside-out, you're underneath.
	Though I'm weak and beaten down,
	I'll slip away into this sound,
	The ghost of you is close to me,
	I'm inside-out, you're underneath.
	Don't let me be gone.
	Don't let me be gone.
	Don't let me be gone.
	Don't let me be gone.
	Don't let me be.
	Don't let me be.
	(Ah, yeah)
	I'm a goner, somebody catch my breath,
	I'm a goner, somebody catch my breath,
	I want to be known by you,
	I want to be known by you.",7,6,1,1),
	

	
	("Gravity","00:03:53","Do you remember feeling invincible?
	When there was trouble it was us against the world
	We kept running, running through the night
	Chasing the sun 'til anything felt right
	Can you save me now?
	I get lost up in the clouds
	Can you save me now?
	You were my gravity
	Can you save me now?
	When the ground drops out I get lost in the clouds
	Save me now
	You were my gravity
	Now my world is shattering
	Ooooh, you were my gravity
	Ooooh, you were my gravity
	You left me out there with no one but myself
	In an open field for the lightning to strike me down
	I was the moon, you were the sun
	I can't seem to shine now that you're gone
	Now I'm out of orbit cause you left without warning
	Are you somewhere better now?
	Can you save me now?
	I get lost up in the clouds
	Can you save me now?
	You were my gravity
	Can you save me now?
	When the ground drops out I get lost in the clouds
	Save me now
	You were my gravity
	Now my world is shattering
	Ooooh, you were my gravity
	Ooooh, you were my gravity
	When you went away, thought I'd never be the same
	Would the nightmare ever end?
	If I could do it again I wouldn't change a thing 'cause it's made me who I am
	And now I'm shattering
	Can you save me now?
	When the ground drops out I get lost up in the clouds
	Save me now
	You were my gravity
	Can you save me now?
	When the ground drops out I get lost up in the clouds
	Save me now
	You were my gravity
	Now my world is shattering
	Ooooh, now my world is shattering
	Ooooh, you were my gravity",3,2,7,2),
	
	
	
	("Message Man","00:04:00","Eh! Eh! Eh! Eh!
	Eh! Eh! Eh! Eh!
	No no no no no no (Eh! Eh! Eh! Eh!)
	Yeah yeah yeah yeah yeah yeah (Eh! Eh! Eh! Eh!)
	A loser hides behind a mask of my disguise,
	And who I am today is worse than other times,
	You don't know what I've done, I'm wanted and on the run.
	I'm wanted and on the run.
	So I'm taking this moment to live in the future
	Release me from the present,
	I'm obsessing all these questions,
	Why I'm in denial that they tried the suicidal session,
	Please use discretion when you're messing with the message, man,
	These lyrics aren't for everyone, only few understand.
	Eh! Eh! Eh! Eh!
	Eh! Eh! Eh! Eh!
	No no no no no no (Eh! Eh! Eh! Eh!)
	Yeah yeah yeah yeah yeah yeah (Eh! Eh! Eh! Eh!)
	You don't know my brain the way you know my name,
	You don't know my heart the way you know my face,
	You don't know what I've done, I'm wanted and on the run.
	I'm wanted and on the run.
	So I'm taking this moment to live in the future
	Release me from the present,
	I'm obsessing all these questions,
	Why I'm in denial that they tried the suicidal session,
	Please use discretion when you're messing with the message, man,
	These lyrics aren't for everyone, only few understand.
	My people singing
	My people singing
	Hope you're dead
	'Cause how could you sleep at a time like this,
	People, they rhyme like this,
	We're all impressed by this,
	They rip it, flip it,
	But these are just triplets,
	Wrote this in three minutes, three words to a line,
	It's just poetry divided.
	I'm the kind of guy
	Who takes every moment he knows he confided in music to use it
	For others to use it,
	You're dead
	'Cause how could you sleep at a time like this.
	Life is up here, but you comment below,
	And the comments will always become common motivation to promote
	Your show's next episode,
	So your brain knows to keep going even though hope is far from this moment,
	But you and I know it gets better when morning finally rears its head.
	Together we're losers,
	Remember the future,
	Remember the morning is when night is dead.
	Release me from the present,
	I'm obsessing all these questions,
	Why I'm in denial that they tried the suicidal session,
	Please use discretion when you're messing with the message, man,
	These lyrics aren't for everyone, only few understand.
	Please use discretion when you're messing with the message, man,
	These lyrics aren't for everyone, only few understand.
	My people singing
	My people singing
	My people singing",7,6,2,3),
	
	
	
	("Oh Happy Day","00:04:59","Oh, happy day 
	(Oh, happy day) 
	Oh, happy day 
	(Oh, happy day) 
	When Jesus washed 
	(When Jesus washed) 
	Oh, when he washed 
	(When Jesus washed) 
	When Jesus washed 
	(When Jesus washed) 
	He washed my sins away! 
	(Oh, happy day)
	Ah, happy day 
	(Oh, happy day) 
	Oh, happy day 
	(Oh, happy day) 
	Oh, happy day 
	(Oh, happy day) 
	When Jesus washed 
	(When Jesus washed)
	Oh when he washed 
	(When Jesus washed)
	When Jesus washed 
	(When Jesus washed)
	He washed my sins away! 
	(Oh, happy day)
	Ah, it's a happy day 
	(Oh, happy day) 
	(He taught me how)
	He taught me how
	(To watch) 
	(Fight and pray) 
	(Fight and pray)
	(And he'll rejoice) 
	(In things we say)
	(Everyday) 
	Oh, happy day 
	(Oh, happy day) 
	Oh, happy day 
	(Oh, happy day) 
	When Jesus washed 
	(When Jesus washed)
	Oh, when he washed 
	(When Jesus washed)
	When Jesus washed 
	(When Jesus washed)
	He washed my sins away! 
	(Oh, happy day)
	Ah, happy day
	(Oh, happy day)
	(He taught me how)
	He taught me how
	(To watch) 
	(Fight and pray) 
	(Fight and pray)
	(And he'll rejoice) 
	(In things we say)
	(Everyday) 
	Oh, happy day 
	(Oh, happy day) 
	Oh, happy day 
	(Oh, happy day) 
	(Oh, happy day)
	Repeat
	Oh, happy day 
	(Oh, happy day) 
	Oh, happy day 
	(Oh, happy day) 
	When Jesus washed 
	(When Jesus washed) 
	Oh, when he washed 
	(When Jesus washed) 
	When Jesus washed 
	(When Jesus washed) 
	He washed my sins away! 
	(Oh, happy day)
	Ah, it's a happy day 
	(Oh, happy day) 
	Oh lord
	(Oh, happy day)
	Mmm, good god
	(Oh, happy day)
	Oh yeah
	(Oh, happy day)
	Mmm, lord
	(Oh, happy day)",5,5,4,4),



	("I Wanna Get Better","00:03:24","Hey, I hear the voice of a preacher from the back room
	Calling my name and I follow just to find you
	I trace the faith to a broken down television and put on the weather
	And I've trained myself to give up on the past 'cause
	I froze in time between hearses and caskets
	Lost control when I panicked at the acid test
	I wanna get better
	While my friends were getting high and chasing girls down parkway lines
	I was losing my mind because the love, the love, the love, the love, the love
	That I gave wasted on a nice face
	In a blaze of fear I put a helmet on a helmet
	Counting seconds through the night and got carried away
	So now I'm standing on the overpass screaming at the cars,
	Hey, I wanna get better!
	I didn’t know I was lonely 'til I saw your face
	I wanna get better, better, better, better,
	I wanna get better
	I didn't know I was broken 'til I wanted to change
	I wanna get better, better, better, better,
	I wanna get better
	I go up to my room and there's girls on the ceiling
	Cut out their pictures and I chase that feeling
	Of an eighteen year old who didn't know what loss was
	Now I'm a stranger
	And I miss the days of a life still permanent
	Mourn the years before I got carried away
	So now I'm staring at the interstate screaming at myself,
	Hey, I wanna get better!
	I didn't know I was lonely 'til I saw your face
	I wanna get better, better, better, better,
	I wanna get better
	I didn't know I was broken 'til I wanted to change
	I wanna get better, better, better, better,
	I wanna get better
	'Cause I'm sleeping in the back of a taxi
	I'm screaming from my bedroom window
	Even if its gonna kill me
	Woke up this morning early before my family
	From this dream where she was trying to show me
	How a life can move from the darkness
	She said to get better
	So I put a bullet where I shoulda put a helmet
	And I crash my car cause I wanna get carried away
	That's why I'm standing on the overpass screaming at myself,
	Hey, I wanna get better!
	I didn't know I was lonely 'til I saw your face
	I wanna get better, better, better, better,
	I wanna get better
	I didn't know I was broken 'til I wanted to change
	I wanna get better, better, better, better,
	I wanna get better",2,3,7,5),
	
	
	
	("We Don't Believe What's on TV","00:02:58","Yeah, yeah, yeah!
	We don't believe what's on TV,
	Because it's what we want to see,
	And what we want, we know we can't believe,
	We have all learned to kill our dreams.
	I need to know that when I fail you'll still be here,
	'Cause if you stick around I'll sing you pretty sounds,
	And we'll make money selling your hair.
	I don't care what's in your hair,
	I just wanna know what's on your mind,
	I used to say, I wanna die before I'm old,
	But because of you I might think twice.
	Yeah, yeah, yeah! [2x]
	Alright. Second verse.
	What if my dream does not happen?
	Would I just change what I've told my friends?
	Don't wanna know who I would be,
	When I wake up from a dreamer's sleep.
	I need to know that when I fail you'll still be here,
	'Cause if you stick around I'll sing you pretty sounds,
	And we'll make money selling your hair.
	But I don't care what's in your hair,
	I just wanna know what's on your mind,
	I used to say, I wanna die before I'm old,
	But because of you I might think twice.
	I don't care what's in your hair,
	I just wanna know what's on your mind,
	I used to say, I wanna die before I'm old,
	But because of you I might think twice.
	Yeah, yeah, yeah! [repeat]",4,4,2,6),



	("Not Today","00:03:59","I don't know why, I just feel I'm better off,
	Staying in the same room I was born in,
	I look outside, and see a whole world better off,
	Without me in it trying to transform it,
	You are out of my mind, you aren't seeing my side,
	You waste all this time trying to get to me,
	But you are out of my mind,
	Listen, I know this one's a contradiction because of how happy it sounds,
	But the lyrics are so down,
	It's OK though, because it represents, wait better yet, it is,
	Who I feel I am right now,
	You are out of my mind, you aren't seeing my side,
	You waste all this time trying to get to me,
	But you are out of my mind,
	Heard you say, Not today.
	Tore the curtains down, windows open now, make a sound,
	Heard your voice, There's no choice.
	Tore the curtains down, windows open now, make a noise,
	Don't you test me though, just because I play the piano,
	Doesn't mean I am not willing to take you down, I'm sorry
	I'm, I'm out of my mind, I'm not seeing things right,
	I waste all this time trying to run from you,
	But I'm, I'm out of my mind.
	Heard you say, Not today.
	Tore the curtains down, windows open now, make a sound,
	Heard your voice, There's no choice.
	Tore the curtains down, windows open now, make a noise,
	You are out of my mind, you aren't seeing my side,
	You waste all this time trying to get to me,
	But you are out of my mind,
	Heard you say, Not today.
	Tore the curtains down, windows open now, make a sound,
	Heard your voice, There's no choice.
	Tore the curtains down, windows open now, make a noise.
	Buh buh bah, buh buh bah
	Bah bah bah bah bah, bah bah bah bah bah
	Buh buh bah, buh buh bah
	Bah bah bah bah bah, bah bah bah bah bah
	Buh buh bah, not today (not today)
	Bah bah bah bah bah (not today), bah bah bah bah bah (not today, no, not today)
	Buh buh bah, buh buh bah (not today, oh nah nah no)
	Bah bah bah bah bah, bah bah bah bah bah
	Ooh, ooh, ooh, ooh, ooh",7,6,6,1),

	
	
	("Rollercoaster","00:03:08","It was summer when I saw your face
	But like a teenage runaway
	Oh god I never thought we'd take it that far
	Some killer queen you are
	Now I'm running and I can't stop anywhere I go
	I think about it everyday and night I can't let go
	Man, I'm never the same
	We were shot gun lovers I was shot gun running away
	So come a little closer
	There was something I could tell ya
	You were such a rollercoaster
	And a killer queen you are
	Rollercoaster, I don't say no
	Rollercoaster, when you don't say no
	And it's such a rollercoaster
	Some killer queen you are
	We took the bones out from the road
	Those endless nights that we traveled we stole
	You let your clothes fall to the floor
	And lit a fire while I waited for more
	Now I'm running and I won't stop I don't wanna go
	I think about it everyday and night I can't let go
	And hey, I'm never the same
	It's a hundred miles an hour on a dirt road running away
	So come a little closer
	There was something I could tell ya
	You were such a rollercoaster
	And a killer queen you are
	Rollercoaster, I don't say no
	Rollercoaster, when you don't say no
	And it's such a rollercoaster
	Some killer queen you are
	Come a little closer
	I'm sure, come a little closer
	Why don't you come a little closer
	There was something I could tell ya
	You were such a rollercoaster
	Some killer queen you are
	Rollercoaster, I don't say no
	Rollercoaster, when you don't say no
	And it's such a rollercoaster
	Some killer queen you are
	Rollercoaster, I don't say no
	Rollercoaster, when you don't say no
	And it's such a rollercoaster
	Some killer queen you are",3,3,6,2);

	
	
--Hluti B

--a
SELECT lag.nafn as "lag"
FROM lag
JOIN diskur
WHERE diskur.nafn = "Regional at Best";













