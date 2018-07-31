module Players
  class Computer < Player 
    
    def move(board)
      move = nil 
      
        # If going first, take the middle square. If going second and middle is open, take it. 
      if !board.taken?(5)
        move = "5"
        
        # If going second and middle square is taken, take bottom left corner. 
      elsif board.turn_count == 1 
        move = "7"
        
        
      elsif board.taken?(2) 
        move = "8"
      
      else 
        Game::WIN_COMBINATION.detect do |win_combo|
          move = [1, 3, 7, 9, 2, 4, 6, 8].detect{|i| !board.taken?(i)}.to_s if move == nil
      end 
        
        
    end
    
  end 
end 