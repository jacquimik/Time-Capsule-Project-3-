class AddTimestampsToChildren < ActiveRecord::Migration
  def change
    add_column :children, :created_at, :datetime
    add_column :children, :updated_at, :datetime
  end
end
