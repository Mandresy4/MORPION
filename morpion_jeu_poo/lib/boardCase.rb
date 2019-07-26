require_relative 'board'

class BoardCase
	attr_accessor :a1, :b1, :c1, :a2, :b2, :c2, :a3, :b3, :c3
	@@positions = []
	def initialize
		position
		content
		get_move
		select_move
	end

	def position
		@@positions<<@cases
	end
	def content
		@contents = {"1"=>"X" || "O" || " ",
		"2"=>"X" || "O" || " ",
		"3"=>"X" || "O" || " ",
		"4"=>"X" || "O" || " ",
		"5"=>"X" || "O" || " ",
		"6"=>"X" || "O" || " ",
		"7"=>"X" || "O" || " ",
		"8"=>"X" || "O" || " ",
		"9"=>"X" || "O" || " "}
		@contents = @cases
	end
	def get_move(human_move = gets.chomp)
        while not ["1", "2", "3", "4", "5", "6", "7", "8", "9"].include?(human_move)
        puts "Choix non valide! De 1 à 9 on a dit !"
        human_move = gets.chomp
        end
    	@@positions[human_move.to_i]
    end
    def select_move
    	human_move = 0
    	@@positions[human_move.to_i]
    		
    		while @@positions[human_move.to_i] == @cases
    		@@positions = {"human_move" => "X"}
 			@@positions = @cases
 			Board.new
    		break
    		end
    end
end
