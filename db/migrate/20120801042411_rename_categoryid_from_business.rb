class RenameCategoryidFromBusiness < ActiveRecord::Migration
  def up
    rename_column(:businesses, :category_id_id, :category_id)
  end

  def down
  end
end
