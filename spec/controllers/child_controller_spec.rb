require 'rails_helper'

RSpec.describe ChildrenController, :type => :controller do
  describe 'GET to index' do
    describe 'as HTML' do
      before do 
       get :new
      end

      it 'should respond with a status 200' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'should render new template' do
        expect(response).to render_template('new')
      end
    end
  end

  describe 'POST to create' do
    describe 'a child with valid information' do
      before do
        post :create, { :child => { :name => 'Jacqui', :middlename => 'Test', :lastname => 'Smith', :date_of_birth => '06/04/1995', :gender => 'Female', :eye_color => 'Green', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoZ4UM0ztcKYp972ANxD90G9z2RGH5Ft4RQybxGc-kNXSdg-w5sA' } }
      end

      it 'should create a new child' do
        expect(Child.count).to eq(1)
      end

      it 'should redirect to @child if successfully created ' do
        expect(response).to redirect_to @child
      end
    end
  end
end

