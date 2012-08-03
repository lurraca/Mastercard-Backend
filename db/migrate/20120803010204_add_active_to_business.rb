class AddActiveToBusiness < ActiveRecord::Migration
  def up
  	add_column :businesses, :active, :boolean
  end

  def down
  	remove_column :businesses, :active
  end
end
