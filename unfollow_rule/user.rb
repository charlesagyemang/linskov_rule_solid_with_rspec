class User
	attr_accessor :email, :settings

	def initialize(email:)
		@email = email
	end

	def signed_in_today?
		settings[:signed_in] == Date.today ? true : false 
	end
	
end