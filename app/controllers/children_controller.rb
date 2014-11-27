class ChildrenController < ApplicationController
	def new
		@child = Child.new
	end

	def create
		@child = Child.new child_params
		@child.user_id = @current_user.id

		if @child.save
			redirect_to @child
		else
			render 'new'
		end
	end

	def edit
		@child = Child.find params[:id]
	end

	def update
		@child = Child.find params[:id]

		if @child.update(child_params)
			redirect_to @child
		else
			render 'edit'
		end
	end

	def index
		@children = @current_user.children
	end

	def show
		@child = Child.find params[:id]
	end

	def destroy
		@child = Child.find params[:id]
		@child.destroy

		redirect_to loggedin_path
	end

private
	def child_params
		 params.require(:child).permit(:firstname, :middlename, :lastname, :date_of_birth, :gender, :eye_color, :image, :user_id)
	end
end
