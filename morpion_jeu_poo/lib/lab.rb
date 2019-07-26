def play_turn
      @current_player, @other_player = @other_player, @current_player

      puts "
      TROP DE CHANCE #{current_player.name}!! Tu commences la partie
      "
    end
    # On indique  quel joueur joue et ce qu'il doit faire
    def solicit_move
      "
      Merci à #{current_player.name} de choisir une position (de 1 à 9)
      "
    end


    sleep(1)
      # On lance la grille vide et l'invitation au jeu, ou le message de fin de partie, ou en change le joueur en cours
      while true
        board.show_case
        puts ""
        puts solicit_move
        #{}"X" || "O"= get_move
        board.show_case("X" || "O", current_player.position)
        if board.end_game
          board.show_case
          puts Game
          return
        else
          play_turn
        end
      end

      attr_reader :players, :board, :current_player, :other_player