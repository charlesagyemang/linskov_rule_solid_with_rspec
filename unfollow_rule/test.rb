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
		user.settings = {level: "MIN", signed_in: Date.today }
		expect(user.settings[:level]).to eq("MIN")
	end	


	it 'should return true if signed_in value is todays date for user settings' do 
		user = User.new(email: "micnkru@gmail.com")
		user.settings = {level: "MIN", signed_in: Date.today }
		expect(user.signed_in_today?).to eq(true)
	end	

	it 'should return false if signed_in value is todays date for user settings' do 
		user = User.new(email: "micnkru@gmail.com")
		user.settings = {level: "MIN", signed_in: Date.today.prev_day }
		expect(user.signed_in_today?).to eq(false)
	end	

	it 'should raise and error settings for signed_in_today' do 
		superAdmin = SuperAdmin.new(email: "micnkru@gmail.com")
		superAdmin.settings = [level: "MIN", signed_in: Date.today.prev_day]
		expect{superAdmin.signed_in_today?}.to raise_error(TypeError)
	end	


end