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
	FOREIGN KEY (flytjandi_ID) REFERENCES flytjandi(ID),
	FOREIGN KEY (tegund_ID) REFERENCES tegund(ID),
	FOREIGN KEY (diskur_ID) REFERENCES diskur(ID)
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
	flytjandi(nafn,faedingardagur,danardagur,flokkur_ID)
VALUES
	("Kollye East", 2000-08-09, 2017-07-07, 1),
	("Floof", 1998-03-29,2004-06-10,2),
	("Kristberg ´Poof´ Pálsson & Maggi",2005-05-05,NULL,3),
	("Karmin", 2012-01-10,NULL,4),
	("Kvennakórinn Sóley",1976-10-22,1995-02-17,5),
	("TwentyØnePiløts",2009-12-01,NULL,3);
	
INSERT INTO
	diskur(nafn,utgafudagur,utgefandi_ID)
VALUES
	("Pen",2017-05-03,1),
	("Blurryface",2015-05-17,2),
	("Rain",2016-09-26,3),
	("Vessel",2013-01-08,3),
	("Regional at Best",2011-07-08,2),
	("Drought",2013-12-05,1),
	("Gravity",2015-02-17,3);

INSERT INTO
	lag(nafn,hofundur,lengd,texti,tegund_ID,flytjandi_ID,diskur_ID)
VALUES
	("LAG", 00:00:00, "Texti", tegund,flytjandi,diskur),
	("Guns for Hands",00:04:36,"TEXTI",1,6,4),
	("Holding On to You",00:04:25,"TEXTI",4,6,5),
	("Car Radio",00:04:27,"TEXTI",1,6,5),
	("Forest",00:04:26,"TEXTI",1,6,5),
	("Kitchen Sink",00:05:34,"TEXTI",1,6,5),
	("Semi-Automatic",00:04:14,"TEXTI",1,6,4),
	("Trees",00:04:27,"TEXTI",3,6,4),
	("HeavyDirtySoul",00:03:55,"TEXTI",2,1,1),
	("Ride",00:03:35,"TEXTI",2,2,2),
	("Lane Boy",00:04,13,"TEXTI",2,3,7),
	("Tear in My Heart",00:03:08,"TEXTI",1,4,6)
	("The Judge",00:04:58,"TEXTI",6,5,3),
	
	
	
	
	
	

	("Goner",00:03:57,"I'm a goner, somebody catch my breath,
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
	I want to be known by you.",7,4,1),
	
	
	
	
	
	
	
	
	
	
	
	("Polarize",00:03:47,"Help me polarize, help me polarize,
	Help me down,
	Those stairs is where I'll be hiding all my problems,
	Help me polarize, help me polarize,
	Help me out,
	My friends and I, we've got a lot of problems.
	You know where I'm coming,
	From though I am running,
	To you, all I feel is deny, deny, denial,
	I wanted to be a better brother, better son,
	Wanted to be a better adversary to the evil I have done,
	I have none to show to the one I love,
	But deny, deny, denial.
	Help me polarize, help me polarize,
	Help me down,
	Those stairs is where I'll be hiding all my problems,
	Help me polarize, help me polarize,
	Help me out,
	My friends and I, we've got a lot of problems.
	Polarize is taking your disguises,
	Separating them, splitting them up from wrong and right,
	It's deciding where to die and deciding where to fight,
	Deny, deny, denial.
	I wanted to be a better brother, better son,
	Wanted to be a better adversary to the evil I have done,
	I have none to show to the one I love,
	But deny, deny, denial.
	Help me polarize, help me polarize,
	Help me down,
	Those stairs is where I'll be hiding all my problems,
	Help me polarize, help me polarize,
	Help me out,
	My friends and I, we've got a lot of problems.
	We have problems
	We have problems
	[2x]
	Domingo en fuego, I think I lost my halo,
	I don't know where you are,
	You'll have to come and find me, find me.
	We have problems
	We have problems
	Help me polarize, help me polarize,
	Help me out,
	My friends and I have problems.
	Help me polarize, help me polarize,
	Help me out,
	My friends and I have problems.
	Help me polarize, help me polarize,
	Help me out,
	My friends and I have problems.
	Help me polarize, help me polarize,
	Help me out,
	My friends and I have problems.
	We have problems
	We have problems
	I wanted to be a better brother, better son
	I wanted to be a better brother, better son
	I wanted to be a better brother, better son",3,2,1),
	
	
	
	
	
	

	
	

	
	
	("Message Man",00:04:00,"Eh! Eh! Eh! Eh!
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
	My people singing",7,1,2),
	
	
	
	
	
	
	
	

	
	
	
	
	
	("Oh Happy Day",00:04:59,"Oh, happy day 
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
	(Oh, happy day)",5,5,4),




	("I Wanna Get Better",00:03:24,"Hey, I hear the voice of a preacher from the back room
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
	I wanna get better",2,2,7),
	
	
	
	

	
	
	
	
	
	("We Don't Believe What's on TV",00:02:58,"Yeah, yeah, yeah!
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
	Yeah, yeah, yeah! [repeat]",4,4,2),







	("Not Today",00:03:59,"I don't know why, I just feel I'm better off,
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
	Ooh, ooh, ooh, ooh, ooh",7,2,6),

	
	
	
	
	
	
	("Rollercoaster",00:03:08,"It was summer when I saw your face
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
	Some killer queen you are",3,3,6);

	
	
--Hluti B

--a
SELECT lag.nafn as "lag"
FROM lag
JOIN diskur
WHERE diskur.nafn = "Regional at Best";
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	










