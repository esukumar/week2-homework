class DiceSubmittedController < ApplicationController
	def show()
		@start=params["start"]
		@dice1=params["dice1"]
		@dice2=params["dice2"]
		@roll=@dice1.to_i()+@dice2.to_i()
		if params["goal"].to_i()==0
			@goal=@dice1.to_i()+@dice2.to_i()
		else
			@goal=params["goal"].to_i()
		end
		@dice1_new=1+rand(6)
		@dice2_new=1+rand(6)
		@win_bool=false
		@lose_bool=false
		if @start=="true"
			if [7,11].include?(@goal)
				@win_bool=true
			elsif [2,3,12].include?(@goal)
				@lose_bool=true
			end
		else
			if @roll==7
				@lose_bool=true
			elsif @roll==@goal
				@win_bool=true
			end
		end 
	end
end