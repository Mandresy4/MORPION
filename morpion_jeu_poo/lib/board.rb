require_relative 'boardCase'
require 'terminal-table'
require_relative 'player'

class Board
	
    def initialize
      #@players = players
      #@board = board
      #@current_player = @other_player = Player.new
      	cases 
		show_case
	end
	
 	def cases
 		@cases = {"1"=>" ",
 			"2" => " ",
 			"3" => " ",
 			"4" => " ",
 			"5" => " ",
 			"6" => " ",
 			"7" => " ",
 			"8" => " ",
 			"9"=> " "
 		}
 	end
 	def show_case
 	rows = []
 	a1=@cases["1"]
 	b1=@cases["2"]
 	c1=@cases["3"]
 	a2=@cases["4"]
 	b2=@cases["5"]
 	c2=@cases["6"]
 	a3=@cases["7"]
 	b3=@cases["8"]
 	c3=@cases["9"]
 	rows << [a1,b1,c3]
 	rows << :separator
 	rows << [a2,b2,c2]
  	rows << :separator
  	rows << [a3,b3,c3]
	table = Terminal::Table.new :rows => rows
 	puts table
 	end

 	
 	 def victory?
 	 end
end

=begin
def play
end
board = Board.new
=end