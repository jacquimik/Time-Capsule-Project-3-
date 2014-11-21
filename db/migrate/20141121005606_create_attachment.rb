class CreateAttachment < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
    	t.string :name
    	t.string :url
    	t.integer :event_id
    end
  end
end
