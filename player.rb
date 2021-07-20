class Player
	attr_accessor :lives, :name
	def initialize(name,lives=3)
		@lives =lives
		@name= name
	end

	def alive?
		@lives > 0
	end
end


# player1=Player.new("Jonty")
# puts player1.lives
# puts player1.lives = 2
# puts player1.name ="Rodes"
# puts player1.alive?
