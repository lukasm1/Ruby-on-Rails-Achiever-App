# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# FIRST you need to SIGN UP so that you create user 1 aka Admin! 
# THEN you seed the database.

achievers = Achiever.create([
	
	{ name: "Tony Robbins", area_of_expertise: "High performance", user_id: 1 }, 
	{ name: "Will Smith", area_of_expertise: "Acting", user_id: 1 },
	{ name: "Elon Musk", area_of_expertise: "Artifical intelligence", user_id: 1 },

	{ name: "Joe Girard", area_of_expertise: "Selling", user_id: 1 },
	{ name: "Kevin Hart", area_of_expertise: "Stand-up comedy", user_id: 1 },
	{ name: "Kobe Bryant", area_of_expertise: "Basketball", user_id: 1 },

	{ name: "Jim Carrey", area_of_expertise: "Acting", user_id: 1 },
	{ name: "Michael Jordan", area_of_expertise: "Basketball", user_id: 1 },
	{ name: "Tiger Woods", area_of_expertise: "Golf", user_id: 1 },

	{ name: "Cristiano Ronaldo", area_of_expertise: "Football", user_id: 1 },
	{ name: "Kay One", area_of_expertise: "Rap", user_id: 1 },
	{ name: "Bradley Cooper", area_of_expertise: "Acting", user_id: 1 },

	{ name: "Brian Tracy", area_of_expertise: "High performance", user_id: 1 },
	{ name: "Marco Espejo", area_of_expertise: "Dancing", user_id: 1 },
	{ name: "Kendji Girac", area_of_expertise: "Singing", user_id: 1 },

	{ name: "Arnold Schwarzenegger", area_of_expertise: "Bodybuilding/Acting/Politics", user_id: 1 },
	{ name: "Zig Ziglar", area_of_expertise: "Selling", user_id: 1 },
	{ name: "Jaromír Jágr", area_of_expertise: "Ice hockey", user_id: 1 },

	{ name: "Roger Federer", area_of_expertise: "Tennis", user_id: 1 },
	{ name: "Ed Mylett", area_of_expertise: "High performance", user_id: 1 },
	{ name: "Tom Brady", area_of_expertise: "American Football", user_id: 1 },

	{ name: "Michael Phelps", area_of_expertise: "Swimming", user_id: 1 },
	{ name: "Usain Bolt", area_of_expertise: "Running", user_id: 1 }
])


quotes = Quote.create([

	{ text: '“It’s what you do when you aren’t motivated that determines success 
		or failure.”', achiever_id: Achiever.find_by(name: "Ed Mylett").id, user_id: 1 },

	{ text: '“The thing that’s going to kill your dream is the obsession about 
		what other people are going to think about you.”', 
		achiever_id: Achiever.find_by(name: "Ed Mylett").id, user_id: 1 },

	{ text: '“The elevator to success is out of order. You\'ll have to use the 
		stairs... one step at a time.”',
		 achiever_id: Achiever.find_by(name: "Joe Girard").id, user_id: 1 },

	{ text: '“If you want to turn a vision into reality, you have to give 100% and never stop believing in your dream.”',
		 achiever_id: Achiever.find_by(name: "Arnold Schwarzenegger").id, user_id: 1 },

	{ text: '“For a comedy to work, magic has to happen.”',
		 achiever_id: Achiever.find_by(name: "Bradley Cooper").id, user_id: 1 },

	{ text: '“You can fail at what you don\'t want, so you might as well take a chance on doing what you love.”',
		 achiever_id: Achiever.find_by(name: "Jim Carrey").id, user_id: 1 },

	{ text: '“Win from within.”',
		 achiever_id: Achiever.find_by(name: "Usain Bolt").id, user_id: 1 },

	{ text: '“If you want to be the best, you have to do things that other people aren’t willing to do.”',
		 achiever_id: Achiever.find_by(name: "Michael Phelps").id, user_id: 1 },

	{ text: '"Doch das Leben schenkt ei’m nichts Kämpf nicht für die and’ren, kämpfe für dich“',
		 achiever_id: Achiever.find_by(name: "Kay One").id, user_id: 1 },

	{ text: '“Fear is not real. It is a product of thoughts you create. Do not misunderstand me. Danger is very real. But fear is a choice.”',
		 achiever_id: Achiever.find_by(name: "Will Smith").id, user_id: 1 }
])


habits = Habit.create([
	{ name: "Cold Plunge", frequency: "Every day", time_demand: "5 min", user_id: 1 },
	{ name: "Priming", frequency: "Every day", time_demand: "15 min", user_id: 1 },
	{ name: "Yoga", frequency: "Every day", time_demand: "30-60 min", user_id: 1 },

	{ name: "Intermittent Fasting", frequency: "Every day", time_demand: "None", user_id: 1 },
	{ name: "Vegan diet", frequency: "Every day", time_demand: "None", user_id: 1 },
	{ name: "Gym", frequency: "5x/week", time_demand: "1,5 hours", user_id: 1 },

	{ name: "Vocal Training", frequency: "Every day", time_demand: "20 min", user_id: 1 },
	{ name: "Affirmations", frequency: "Every day", time_demand: "10 min", user_id: 1 },
	{ name: "Reading", frequency: "Every day", time_demand: "30 min", user_id: 1 },

	{ name: "Isolation muscle training", frequency: "5x/week", time_demand: "30 min", user_id: 1 },
	{ name: "Practicing the basics", frequency: "7x/week", time_demand: "2 hours", user_id: 1 },
	{ name: "Meditation", frequency: "Every day", time_demand: "20 min", user_id: 1 },

	{ name: "Waking up at 5 am", frequency: "5x/week", time_demand: "None", user_id: 1 },
	{ name: "Staying hydrated", frequency: "Every day", time_demand: "None", user_id: 1 },
	{ name: "Visualization", frequency: "Every day", time_demand: "20 min", user_id: 1 },

	{ name: "Gum chewing", frequency: "Every day", time_demand: "None", user_id: 1 },
	{ name: "Consistency", frequency: "Every day", time_demand: "None", user_id: 1 },
	{ name: "Positivity", frequency: "Every day", time_demand: "None", user_id: 1 },

	{ name: "Optimism", frequency: "Every day", time_demand: "None", user_id: 1 },
	{ name: "Gut decisions", frequency: "Every day", time_demand: "None", user_id: 1 },
	{ name: "Confidence", frequency: "Every day", time_demand: "None", user_id: 1 },

	{ name: "Socializing", frequency: "Every day", time_demand: "1-2 hours", user_id: 1 },
	{ name: "Laughter", frequency: "Every day", time_demand: "None", user_id: 1 },
])

achiever_habits = AchieverHabit.create([
	{ achiever_id: 1, habit_id: 1 },
	{ achiever_id: 1, habit_id: 2 },
	{ achiever_id: 1, habit_id: 4 },

	{ achiever_id: 20, habit_id: 4 },
	{ achiever_id: 6, habit_id: 6 },
	{ achiever_id: 10, habit_id: 6 },

	{ achiever_id: 16, habit_id: 6 },
	{ achiever_id: 18, habit_id: 6 },
	{ achiever_id: 20, habit_id: 6 },

	{ achiever_id: 21, habit_id: 6 },
	{ achiever_id: 22, habit_id: 6 },
	{ achiever_id: 23, habit_id: 6 },

	{ achiever_id: 11, habit_id: 7 },
	{ achiever_id: 15, habit_id: 7 },
	{ achiever_id: 2, habit_id: 8 },

	{ achiever_id: 4, habit_id: 8 },
	{ achiever_id: 7, habit_id: 8 },
	{ achiever_id: 15, habit_id: 8 },

	{ achiever_id: 17, habit_id: 8 },
	{ achiever_id: 20, habit_id: 8 },
	{ achiever_id: 3, habit_id: 9 },

	{ achiever_id: 17, habit_id: 9 },
	{ achiever_id: 14, habit_id: 10 },
	{ achiever_id: 6, habit_id: 11 },

	{ achiever_id: 8, habit_id: 11 },
	{ achiever_id: 7, habit_id: 12 },
	{ achiever_id: 2, habit_id: 15 },

	{ achiever_id: 4, habit_id: 15 },
	{ achiever_id: 6, habit_id: 15 },
	{ achiever_id: 7, habit_id: 15 },

	{ achiever_id: 8, habit_id: 15 },
	{ achiever_id: 9, habit_id: 15 },
	{ achiever_id: 10, habit_id: 15 },

	{ achiever_id: 12, habit_id: 15 },
	{ achiever_id: 13, habit_id: 15 },
	{ achiever_id: 14, habit_id: 15 },

	{ achiever_id: 15, habit_id: 15 },
	{ achiever_id: 18, habit_id: 15 },
	{ achiever_id: 19, habit_id: 15 },

	{ achiever_id: 21, habit_id: 15 },
	{ achiever_id: 22, habit_id: 15 },
	{ achiever_id: 23, habit_id: 15 },

	{ achiever_id: 9, habit_id: 16 },
	{ achiever_id: 8, habit_id: 16 },
	{ achiever_id: 11, habit_id: 17 },

	{ achiever_id: 5, habit_id: 18 },
	{ achiever_id: 14, habit_id: 18 },
	{ achiever_id: 16, habit_id: 18 },

	{ achiever_id: 2, habit_id: 19 },
	{ achiever_id: 3, habit_id: 19 },
	{ achiever_id: 5, habit_id: 19 },

	{ achiever_id: 16, habit_id: 19 },
	{ achiever_id: 5, habit_id: 21 },
	{ achiever_id: 11, habit_id: 21 },
	
	{ achiever_id: 21, habit_id: 21 },
	{ achiever_id: 17, habit_id: 22 },
	{ achiever_id: 4, habit_id: 23 },
])

book_recommendations = BookRecommendation.create([
	{ title: "The Emotion Code",author: "Bradley Nelson", user_id: 1 },
	{ title: "The Alchemist",author: "Paulo Coelho", user_id: 1 },
	{ title: "Free to Choose",author: "Milton Friedman", user_id: 1 },

	{ title: "Benjamin Franklin: An American Life",author: "Walter Isaacson", user_id: 1 },
	{ title: "Flow",author: "Mihaly Csikszentmihalyi", user_id: 1 },
	{ title: "Think and grow rich",author: "Napoleon Hill", user_id: 1 },

	{ title: "As You Wish",author: "Cary Elwes", user_id: 1 },
	{ title: "The Great Gatsby",author: "F. Scott Fitzgerald", user_id: 1 },
	{ title: "Atomic Habits",author: "James Clear", user_id: 1 },

	{ title: "Conversations with God",author: "Niel Donald Walsch", user_id: 1 },
	{ title: "The Bible",author: "Moses", user_id: 1 },
	{ title: "How to win friends and influence people",author: "Andrew Carnegie", user_id: 1 }
])

achiever_book_recommendations = AchieverBookRecommendation.create([
	{ achiever_id: "1",book_recommendation_id: "1" },
	{ achiever_id: "2",book_recommendation_id: "2" },
	{ achiever_id: "3",book_recommendation_id: "3" },

	{ achiever_id: "13",book_recommendation_id: "4" },
	{ achiever_id: "7",book_recommendation_id: "5" },
	{ achiever_id: "20",book_recommendation_id: "6" },

	{ achiever_id: "1",book_recommendation_id: "6" },
	{ achiever_id: "13",book_recommendation_id: "6" },
	{ achiever_id: "16",book_recommendation_id: "7" },

	{ achiever_id: "3",book_recommendation_id: "8" },
	{ achiever_id: "12",book_recommendation_id: "9" },
	{ achiever_id: "1",book_recommendation_id: "11" },

	{ achiever_id: "20",book_recommendation_id: "11" },
	{ achiever_id: "4",book_recommendation_id: "12" },
	{ achiever_id: "17",book_recommendation_id: "12" },
])
