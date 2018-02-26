 class Game

    def determine_player(player)
    if player1 = X
      return X
    elsif player2 = O
      return O
    end
    if grid1 == "X"
	   grid1 = "X"
	elsif grid1 == "O"
		grid1 = "O"
	elsif grid1 == ""
		grid1 = ""
	else grid1 = ""
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
	out = a<<random_pick #"out" links the grid number, for example "1", with the word "grid" to make "grid1" which is returned from the function	
	return out
	puts out

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
				break
			elsif plays == o_wins
				$result = "O's have won" 
				break
			else
				$result = "No Winners Yet"
			end
	end
	return $result 
end

def play_ai(a,b,c,d,e,f,g,h,i) #this function uses logic to select the grid placement of the next "O" value to avoid losing. 
	all_hash = {1 => a, 2 => b, 3 => c, 4 => d, 5 => e, 6 => f, 7 => g, 8 => h, 9 => i} # Hash of grids and numbers
	all_grids = [a,b,c,d,e,f,g,h,i] # Array of all grids

	win1 = {1 => a, 2 => b, 3 => c} #the win 1 through win9 hashes hold the current plays that are used to decide the next "O" placement
 	win2 = {4 => d, 5 => e, 6 => f}
 	win3 = {7 => g, 8 => h, 9 => i}
 	win4 = {1 => a, 4 => d, 7 => g}
 	win5 = {1 => a, 5 => e, 9 => i}
 	win6 = {3 => c, 5 => e, 7 => g}
 	win7 = {2 => b, 5 => e, 8 => h}
	win8 = {3 => c, 6 => f, 9 => i}
	#The following is a cascade of commands that selects the grid $ai_pick to be played.
	middle_sides = {2 => b, 4 =>d, 6 => f, 8 => h} #this code selects an empty middle side location
	middle_sides.each do | key , value |
		if value == ""
			$ai_pick = key
		end
	end

	corners = {1 => a, 3 => c, 7 => g, 9 => i}	# Middle side locations may be overwritten by a corner 													selection				
	corners.each do |key, value|
		if value == ""
			$ai_pick = key
		end
	end		

# This section checks to see if 2 X's are in row with a blank and then selects the blank grid for the next play to block the X's from winning
 	win_grids = [win1,win2,win3,win3,win4,win5,win6,win7,win8]
 	(0..8).each do |i|							
		three = win_grids[i] 
 		x_num = three.select {|k,v| v == "X"} 
 		o_num = three.select {|k,v| v == "O"}
 		no_num = three.select {|k,v| v == ""}
 		if x_num.length == 2 
 			if o_num.length < 1
 					$ai_pick =  no_num.key("")
 					end
 					end
	end	 
 
# This section checks to see if 2 O's are in a row with a blank and then selects the blank grid for the next play to win the game
	(0..8).each do |i|
		three = win_grids[i] 
		x_num = three.select {|k,v| v == "X"} 
		o_num = three.select {|k,v| v == "O"}
		no_num = three.select {|k,v| v == ""}
		if o_num.length == 2 
			if x_num.length < 1
				$ai_pick =  no_num.key("")
			end	
		end			 	
 	end

	if all_hash[5] == "" # This selects the middle grid if it is open . This is always the first play for O if it is available
		$ai_pick = 5.to_s 	
 	end	

	#These two if statements respond to two unique situations that require a middle side response to avoid eventual loss. grid 2 is played but any middle side could be played 
	if all_grids == ["X","","","","O","","","","X"]
		$ai_pick  = 2
	elsif	all_grids == ["","","X","","O","","X","",""]
		$ai_pick  = 2
	end
		
 	a = "grid"
 	 out = a<<$ai_pick.to_s # "out" links the grid number, for example "1", with the word "grid" to make "grid1" which is returned from the function	
 	return out
 end
  