class DiceController < ApplicationController
	def play()
		@dice1=1+rand(6)
		@dice2=1+rand(6)
	end
end