class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.references :category_id
      t.string :address
      t.string :phone
      t.text :description

      t.timestamps
    end
    add_index :businesses, :category_id_id
  end
end
