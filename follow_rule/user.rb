class User
	attr_accessor :email

	def initialize(email:)
		@email = email
	end

	def set_settings(level:, status:, signed_in:)
		@settings = {:level => level, :status => status, :signed_in => signed_in}	
	end

	def get_settings
		@settings
	end

	def signed_in_today?
		settings[:signed_in] == Date.today ? true : false 
	end
	
end