 class Game

    def determine_player(player)
    if player1 = X
      return X
    elsif player2 = O
      return O
    end
  
    end	
 end

def play_random(a,b,c,d,e,f,g,h,i) 
	grid_hash = {1 => a, 2 => b, 3 => c, 4 => d, 5 => e, 6 => f, 7 => g, 8 => h, 9 => i}
	all_grids = [1,2,3,4,5,6,7,8,9]
	taken_grids = []
	(1..9).each do |i|
		if grid_hash[i] != ""
			taken_grids.push(i)
		end
	end

	untaken_grids = all_grids - taken_grids	
	random_pick = untaken_grids.shuffle.pop.to_s
	a = "grid"
	out = a<<random_pick 
	return out

end

def winners(a,b,c,d,e,f,g,h,i)
	x_wins = ["X", "X", "X"]
	o_wins = ["O", "O", "O"]	
	grid_hash = {1 => a, 2 => b, 3 => c, 4 => d, 5 => e, 6 => f, 7 => g, 8 => h, 9 => i}
	win_grids = [[grid_hash[1],grid_hash[2],grid_hash[3]],[grid_hash[3],grid_hash[6],grid_hash[9]],[grid_hash[7],grid_hash[8],grid_hash[9]],[grid_hash[1],grid_hash[4],grid_hash[7]],[grid_hash[1],grid_hash[5],grid_hash[9]],[grid_hash[3],grid_hash[5],grid_hash[7]],[grid_hash[2],grid_hash[5],grid_hash[8]],[grid_hash[4],grid_hash[5],grid_hash[6]]]
	(0..7).each do |i|
		plays = win_grids[i] 
			if plays == x_wins
				$result = "X's have won"
			elsif plays == o_wins
				$result = "O's have won"  
			end
	end
	return $result 
end

