require 'rails_helper'

RSpec.describe User, :type => :model do

		describe '.new' do

			# Create a valid user when all attributes are provided
			it 'creates a valid user with the required attributes (email, password, name)' do
				user = User.new(:firstname => 'jacqui', :lastname => 'mik', :email => 'jacqui@jacqui.com', :password => 'chicken', :password_confirmation => 'chicken')
				expect(user).to be_valid
			end

			# Can a new user object be assigned a name?
			it 'assigns a name to the user object' do
				user = User.new(:firstname => 'Jacqui')
				expect(user.firstname).to eq 'Jacqui'
			end


			# Can a user be created without a name?
			it 'cannot be created without a name' do
				user = User.new(:firstname => '')
				expect(user).to_not be_valid
			end

			# Can a new user email object be created?
			it 'assigns an email address to the user object' do
				user = User.new(:email => 'jacqui@jacqui.com')
				expect(user.email).to eq 'jacqui@jacqui.com'
			end

			# Can a user be created without an email address?
			it 'cannot be created without an email address' do
				user = User.new(:email => '')
				expect(user).to_not be_valid
			end

			# Does the password and the password_confirmation match?
			it 'checks that the password and the password_confirmation match' do
				user = User.new(:firstname => 'jacqui', :lastname => 'mik', :email => 'jacqui@jacqui.com', :password => 'chicken', :password_confirmation => 'bird')
				expect(user).to_not be_valid
			end	

			# Can a user be created without a password?
			it 'cannot be created without a password' do
				user = User.new(:firstname => 'jacqui', :lastname => 'mik', :email => 'jacqui@jacqui.com', :password => '', :password_confirmation => '')
				expect(user).to_not be_valid
			end
		end
end

