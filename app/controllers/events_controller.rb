class EventsController < ApplicationController
	before_filter :get_child

	def new
		@event = @child.events.new
	end

	def create
    @event = @child.events.new event_params

    if @event.save
      redirect_to [@child, @event], notice: 'event was successfully created.'
    else
      render :new
   end
  end

	def edit
		@event = @child.events.find params[:id]
	end

	def update
		@event = @child.events.find params[:id]

		if @event.update(event_params)
			redirect_to [@child, @event], notice: 'event was successfully updated'
		else
			render :edit
		end
	end

	def index
		@events = @child.events
	end

	def show
		@event = @child.events.find params[:id]
	end

	def destroy
		@event = @child.events.find params[:id]

		@event.destroy

		redirect_to loggedin_path
	end

private
	def event_params
		 params.require(:event).permit(:name, :date, :location, :description, :image, :child_id, :longitude, :latitude)
	end

	def get_child
		@child = Child.find params[:child_id]
	end
end
