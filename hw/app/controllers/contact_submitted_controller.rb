class ContactSubmittedController < ApplicationController
	def show()
		@firstname=params['firstname']
		@lastname=params['lastname']
	end
end