class RpsSubmittedController < ApplicationController
	def show()
		@player=params['val']
		@computer=['rock','paper','scissors'].sample()
		winlist = [['rock','scissors'],['scissors','paper'],['paper','rock']]
		if @player==@computer
			@result='It\'s a tie!'
		elsif winlist.include?([@player,@computer])
			@result='You win'
		else
			@result='You lose'
		end
	end
end