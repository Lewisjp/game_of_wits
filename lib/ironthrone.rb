class Ironthrone
	attr_accessor :choice, :message, :image, :random_quote, :correct

	def initialize
		@choice = rand(9)
		@random_quote = rand(5)
		@correct = Hash.new 
				# @tracker = {
				# 	:character => choice,
				# 	:said => random_quote
				# }}
	end

	def message_random

		quote = 
		[
		#Jameie - 0
			[
			"There are no men like me. Only me.",
			"The things I do for love.",
			"I think it passing odd that I am loved by one for a kindness I never did, and reviled by so many for my finest act.",
			"I learned from Ser Arthur Dayne, the sword of the morning, who could have slain all five of you with his left hand while he was taking a piss with his right.",
			"By what right does the wolf judge the lion? By what right."
			],
		#Cersei - 1
			[
			"When you play the game of thrones, you win or you die. There is no middle ground.",
			"A woman's life is nine parts mess to one part magic, you'll learn that soon enough... and the parts that look like magic often turn out to be messiest of all.",
			"The only way to keep your people loyal is to make certain they fear you more than they do the enemy.",
			"Love is poison. A sweet poison, yes, but it will kill you all the same.",
			"I am a lioness. I will not cringe for them."
			],
		#Tyrion - 2 
			[
			"My mind is my weapon. My brother has his sword, King Robert has his warhammer and I have my mind... and a mind needs books as a sword needs a whetstone if it is to keep its edge. That’s why I read so much Jon Snow.",
			"Sorcery is the sauce fools spoon over failure to hide the flavor of their own incompetence.",
			"In the dark, I am the Knight of Flowers.",
			"Those are brave men. Let's go kill them!",
			"When you tear out a man’s tongue, you are not proving him a liar, you’re only telling the world that you fear what he might say."
			],
		#Ned - 3
			[
			"A ruler who hides behind paid executioners soon forgets what death is.",
			"If you would take a man’s life, you owe it to him to look into his eyes and hear his final words. And if you cannot bear to do that, then perhaps the man does not deserve to die.",
			"The man who passes the sentence should swing the sword.",
			"I don't fight in tournaments because when I fight a man for real, I don't want him to know what I can do.",
			"You're too fat for your armor."
			],
		#Catelyn - 4
			[
			"For they are the knights of summer, and winter is coming.",
			"Laughter is poison to fear.",
			"Show me the path I must walk and do not let me stumble in the dark places that lie ahead.",
			"The singers make much of kings who die valiantly in battle, but your life is worth more than a song.",
			"I take no joy in mead nor meat, and song and laughter have become suspicious strangers to me. I am a creature of grief and dust and bitter longings. There is an empty place within me where my heart was once."
			],
		#Peter - 5
			[
			"A bag of dragons buys a man's silence for a while, but a well-placed quarrel buys it forever.",
			"Always keep your foes confused. If they are never certain who you are or what you want, they cannot know what you are like to do next. Sometimes the best way to baffle them is to make moves that have no purpose, or even seem to work against you.",
			"In King's Landing, there are two sorts of people. The players and the pieces.",
			"Everyone wants something, Alayne. And when you know what a man wants you know who he is, and how to move him.",
			"Chaos isn't a pit. Chaos is a ladder. Many who try to climb it fail and never get to try again. The fall breaks them. And some, are given a chance to climb. They refuse, they cling to the realm or the gods or love. Illusions. Only the ladder is real. The climb is all there is."
			],
		#Jon Snow - 6
			[
			"There’s no shame in fear, my father told me, what matters is how we face it.",
			"Different roads sometimes lead to the same castle.",
			"Some men want whores on the eve of battle, and some want gods.",
			"We look up at the same stars, and see such different things.",
			"The more you give a king, the more he wants. We are walking on a bridge of ice with an abyss on either side. Pleasing one king is difficult enough. Pleasing two is hardly possible."
			],
		#Daenerys -7
			[
			"Listen to all. The highborn and the low, the strong and the weak, the noble and the venal. One voice may speak you false, but in many there is always truth to be found.",
			"Is that meant to insult me? I would return the slap, if I took you for a man.",
			"I am the blood of the dragon.",
			"A dragon is no slave.",
			"No, no, my good knight, do not fear for me. The fire is mine."
			],
		#stannis - 8
			[
			"I ask you, why did the gods inflict me with brothers? ",
			"I shall bring justice to Westeros.",
			"We must do our duty.  Great or small.",
			"The more we bleed each other, the weaker we shall all be when the real enemy falls upon us.",
			"I have a duty … If I must sacrifice one child to the flames to save a million from the dark … Sacrifice … is never easy."
			]
		]
		
		quote[choice][random_quote]

	end

	def random_one
		@choice = rand(0..2)
		@random_quote = rand(5)
		case choice
			when 0 then correct[:one] = "jaime"
			when 1 then correct[:one] = "cersei"
			when 2 then correct[:one] = "tyrion"
			else
				puts "Error in method random_one"
		end  
		message_random
	end

	def random_two
		@choice = rand(3..5)
		@random_quote = rand(5)
		case choice
			when 3 then correct[:two] = "eddard"
			when 4 then correct[:two] = "catelyn"
			when 5 then correct[:two] = "petyr"
		else
			puts "Error in method random_two"
		end  
		message_random
	end

	def random_three
		@choice = rand(6..8)
		@random_quote = rand(5)
		case choice
			when 6 then correct[:three] = "jon"
			when 7 then correct[:three] = "daenerys"
			when 8 then correct[:three] = "stannis"
		else
			puts "Error in method random_three"
		end 
		message_random
	end

	def image_random
		throne = [
			"'../img/jamie.jpg'",
			"'../img/cersei.jpg'",
			"'../img/tyrion.jpg'",
			"'../img/ned.jpg'",
			"'../img/catelyn.jpg'",
			"'../img/peter.jpg'",
			"'../img/jon_snow.jpg'",
			"'../img/daenerys.jpg'",
			"'../img/stannis.png'"
		]
		throne[choice]
	end

	def answer_sheet
		"'#{correct}'"
	end

	def results(params)

#		params["correct"] #=> {"0"=>"jaime", "1"=>"catelyn", "2"=>"stannis"}
#		params["answer"] #=> {"0"=>"jaime", "1"=>"catelyn", "2"=>"stannis"}

#		params["correct"]["0"] #=> jaime
#		params["answer"]["0"] #=> jaime

		counter = 0
		if params["correct"]["0"] == params["answer"]["0"] 
			counter += 1
		end
		if params["correct"]["1"] == params["answer"]["1"] 
			counter += 1
		end
		if params["correct"]["2"] == params["answer"]["2"] 
			counter += 1
		end

		@choice = counter

		case counter
		when 0 then "I'm not questioning your wit. I'm denying its existence."
		when 1 then "You knew one.  That is your one redeeming quality."
		when 2 then "You have given two names... correctly."
		when 3 then "You knew every name as if they were a prayer."
		end
		
	end


	def image_answer
		throne = [
			"'../img/sansa.png'",
			"'../img/hound.jpg'",
			"'../img/tywin.jpg'",
			"'../img/arya.jpg'"
		]
		throne[choice]
	end

end

