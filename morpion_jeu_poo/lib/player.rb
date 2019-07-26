require 'pry'

class Player
	attr_accessor :name1, :name2
	@@players = []
	def initialize(player1,player2)
		print "player1 = "
		player1 = gets.chomp
		print "player2 = "
		player2 = gets.chomp
		@name1 = player1
		@name2 = player2
		@@players << self
	end
end


binding.pry
puts "end of file"