require 'rspec'
require './user.rb'
require 'date'
require './super_user'

describe 'User Behaviour' do 
	
	it 'should create user object successfully' do 
		user = User.new(email: "micnkru@gmail.com")
		expect(user.email).to eq("micnkru@gmail.com")
	end

	it 'should set the settings element of the user object successfully' do 
		user = User.new(email: "micnkru@gmail.com")
		user.set_settings(level: "MIN", status: "heheys", signed_in: Date.today )
		expect(user.get_settings[:level]).to eq("MIN")
	end	

	it 'should beable to replace class of sub' do 
		user = SuperAdmin.new(email: "micnkru@gmail.com")
		user.set_settings(level: "MIN", status: "heheys", signed_in: Date.today )
		expect(user.get_settings[:level]).to eq("MIN")
	end


end