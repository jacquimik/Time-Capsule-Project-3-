class CreateChild < ActiveRecord::Migration
  def change
    create_table :children do |t|
    	t.string :firstname
    	t.string :middlename
    	t.string :lastname
    	t.datetime :date_of_birth
    	t.string :gender
    	t.string :eye_color
        t.text :image
        t.integer :user_id
    end
  end
end
