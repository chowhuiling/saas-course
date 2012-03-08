class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end


def rps_tournament_winner(tournament)
	rps_game_winner(tournament)
end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2

	player1 = game[0][0].kind_of?(Array)? rps_game_winner(game[0]): game[0]
	player2 = game[1][0].kind_of?(Array)? rps_game_winner(game[1]): game[1]

	compute_winner(player1, player2)
end

def compute_winner(p1,p2)
	combi = [p1[1].downcase, p2[1].downcase]
	allowedStrategy = ["p","r","s"]
	p1WinCombi = [["p","r"],["s","p"],["r","s"]]
	
	raise NoSuchStrategyError unless (combi|allowedStrategy).length == allowedStrategy.length

	if (combi.uniq.length == 1)
		p1
	elsif p1WinCombi.include?(combi)
		p1
	else 
		p2
	end
end



#  g1 = [["Armando", "r" ], [ "Dave", "s" ] ]
#  g2 = [[[ ["Armando", "p"], ["Dave", "S"] ],[ ["Richard", "R"],  ["Michael", "S"] ]],[[ ["Allen", "S"], ["Omer", "P"] ],[ ["David E.", "R"], ["Richard X.", "P"] ]]]
# g3 = [g1,g2]
# g4 = [[g1,g2],[g2,g1]]
# # g3 = [["arma","p"],["a","s"],["aa","s"]]
# #rps_game_winner([ ["Allen", "A"], ["Richard", "P"] ]) 
# # puts rps_game_winner([ ["Dave", "P"], ["Armando", "S"] ])
# # puts rps_game_winner([ ["Allen", "P"], ["Richard", "P"] ])[0]
# puts (rps_game_winner(g1)).inspect
# puts (rps_game_winner(g2)).inspect
# puts (rps_game_winner(g3)).inspect
# puts (rps_game_winner(g4)).inspect