class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :name
    	t.datetime :date
    	t.string :location
    	t.text :description
    	t.integer :child_id
    	t.float :longitude
    	t.float :latitude
    end
  end
end
