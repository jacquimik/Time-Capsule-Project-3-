class ChildrenController < ApplicationController
	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def index
	end

	def show
	end

	def destroy
	end

private
	def user_params
		 params.require(:child).permit(:firstname, :middlename, :lastname, :date_of_birth, :gender, :eye_color, :image, :user_id)
	end
end
