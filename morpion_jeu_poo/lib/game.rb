require_relative 'board'
require_relative 'player'
require_relative 'boardCase'

class Game
	attr_accessor :a1, :b1, :c1, :a2, :b2, :c2, :a3, :b3, :c3
	def initialize
		end_game
	end


 def end_game
		end_of_game = false
		while (not end_of_game)
		if (a1==a2 && a2==a3 && a1==a3) || (b1==b2 && b2==b3 && b1==b3) || (c1==c2 && c2==c3 && c1==c3)
			end_of_game = true
			puts"****partie terminé!****"
			break
		elsif (a1==b1 && b1==c1 && a1==c1) || (a2==b2 && b2==c2 && a2==c2) || (a3==b3 && b3==c3 && a3==c3)
			end_of_game = true
			puts"****partie terminé!****"
			break
		elsif (a1==b2 && b2==c3 && a1==c3) || (c1==b2 && b2==a3 && a3==c1)
			end_of_game = true
			puts"****partie terminé!****"
			break
		else
			puts"****partie nulle!****"
		end
		end
end
end