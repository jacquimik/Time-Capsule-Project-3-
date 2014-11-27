require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do
	describe 'Login' do
		before do
			User.create :name => "Jacqui", :email => "jacqui@test.com", :password => "password" 
		end

		describe 'let user login if details are valid' do
			before do
				post :create, {name: "Jacqui", password: "password"}
			end 

				it 'should redirect to children_path if valid' do  
				expect(response).to redirect_to(children_path)
			end

			describe 'let the user log out' do
				before do
					get :destroy
				end
				it 'should redirect to the root path when password is incorrect' do
					expect(response).to redirect_to root_path
				end
			end
		end
		describe 'if a user enters wrong information' do 
			before do 
				post :create, {name: "Jacqui", password: "test"}
			end

			it 'should redirect to new_session_path when password is incorrect' do
				expect(response).to redirect_to new_session_path
			end
		end 
	end 
end