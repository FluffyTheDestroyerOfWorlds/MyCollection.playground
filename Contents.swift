//: Playground - noun: a place where people can play

import UIKit

var MusicMP3: [String: Int] = [:]
var Songs: [(String,String)] = [];
var item: (String,String);
var Played: [String] = [];

item = ("Twenty On Pilots","Heathens");
Songs.append(item);
item = ("Twenty On Pilots","Stressed Out");
Songs.append(item);
item = ("Twenty On Pilots","Ride");
Songs.append(item);
item = ("The Chainsmokers","Roses");
Songs.append(item);
item = ("The Chainsmokers","Dont Let me down");
Songs.append(item);
item = ("The Chainsmokers","Closer");
Songs.append(item);
item = ("The Chainsmokers","Until You were gone");
Songs.append(item);
item = ("Adele","Hello");
Songs.append(item);
item = ("Adele","Send My Love");
Songs.append(item);
item = ("Adele","Rolling in the Deep");
Songs.append(item);
item = ("Adele","Someone Like You");
Songs.append(item);
item = ("Adele","Skyfall");
Songs.append(item);
item = ("Selena Gomez","Kill Em with Kindness");
Songs.append(item);
item = ("Selena Gomez","Hands to Myself");
Songs.append(item);
item = ("Selena Gomez","The Heart Wants What It Wants");
Songs.append(item);
item = ("Selena Gomez","Good For You");
Songs.append(item);
item = ("Selena Gomez","Same Old Love");
Songs.append(item);
item = ("DNCE","Cake By the Ocean");
Songs.append(item);
item = ("Flo Rida","My House");
Songs.append(item);
item = ("Flo Rida","Whistle");
Songs.append(item);
item = ("Flo Rida","Wild Ones");
Songs.append(item);
item = ("Flo Rida","I Cry");
Songs.append(item);
item = ("Flo Rida","Low");
Songs.append(item);
item = ("Flo Rida","Sugar");
Songs.append(item);
item = ("The Weekend","The Hills");
Songs.append(item);
item = ("The Weekend","Cant Feel My Face");
Songs.append(item);
item = ("The Weekend","In The Night");
Songs.append(item);
item = ("Coldplay","Hymn for the Weekend");
Songs.append(item);
item = ("Coldplay","Paradise");
Songs.append(item);
item = ("Coldplay","A Sky Full of Stars");
Songs.append(item);

print(Songs[0]);

// Random playlist
var item2 : (String);

for var i = 0; i < 100; i++ {
	let randomIndex = Int(arc4random_uniform(UInt32(Songs.count)))
	item2 = (Songs[randomIndex].1);
	Played.append(item2);
}

// Most popular

//Puts played in the main dictionary counting them up to see how many times they were played
for x in Played {
	//print (x)
	MusicMP3[x] = (MusicMP3[x] ?? 0) + 1
}

print(MusicMP3);

// Most Played? - no ties
var HoldSong  = ("x",0);


for x in MusicMP3 {
	if (HoldSong.1 < x.1) {
		HoldSong.1 = x.1;
		HoldSong.0 = x.0;
	}
}

print(HoldSong);
















