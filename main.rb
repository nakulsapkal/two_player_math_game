require "./player"
require "./questions"

class Main
	puts "Welcome To Math Game"
	puts "Enter Name For Player 1:"
	player1name = gets.chomp
	puts "Enter Name For Player 2:"
	player2name = gets.chomp

	player_1= Player.new(player1name)
	player_2= Player.new(player2name)

	score_player_1 =player_1.lives
	score_player_2 =player_2.lives

	count = 1
	while player_1.alive? && player_2.alive? do

		if (count % 2) == 0
			current_player = player_2
			answering_player = player_1
		else
			current_player = player_1
			answering_player = player_2
		end
		count = count + 1

		new_question=Questions.new()
		puts 
		if count > 2 
			puts "-----NEW TURN-----"
		end
		puts "#{current_player.name}: #{new_question.question}"
		print ">"
		answer_input= gets.chomp
		if answer_input.to_i == new_question.answer
			puts "#{current_player.name}: Yes!, you are correct"
			puts "#{player_1.name}: #{player_1.lives}/3 vs #{player_2.name}: #{player_2.lives}/3"
		else
			puts "#{current_player.name}: Seriously? No."

			answering_player.lives = answering_player.lives - 1
			puts "#{player_1.name}: #{player_1.lives}/3 vs #{player_2.name}: #{player_2.lives}/3"
		end
	end

	puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
	puts "-----GAME OVER-----"
	puts "Good Bye!"

end

