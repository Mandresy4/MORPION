 require 'bundler'
Bundler.require

require_relative 'lib/game'

puts "    --------------------------------"
puts "    |    BIENVENUE DANS MORPION    |"
puts "    --------------------------------"
puts "  ************************************"
puts "Veillez saiair les noms des joueurs !"
p = Player.new("Player-2","Player-1")
puts ""
rows = []
rows << ["Player-1 :","X","",":","X"]
rows << :separator
rows << ["Player-2 :","O","",":","O"]
table = Terminal::Table.new :rows => rows
 	puts table
 puts "     ---- plateau du jeux ----"
 puts""
 p = Board.new

 puts""
 puts "C'est partie! l'épreuve se fait de l'un après l'autre . . ."
 puts "      ****partie commencé!****"
p = BoardCase.new