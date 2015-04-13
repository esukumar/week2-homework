class GreetController < ApplicationController
	def show()
		if params['salutation']
			@title=params['salutation']
		else
			@title="Hello"
		end
	end

end