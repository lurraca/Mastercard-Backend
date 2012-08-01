class CreateBenefits < ActiveRecord::Migration
  def change
    create_table :benefits do |t|
      t.string :name
      t.text :description
      t.date :begin_date
      t.date :end_date
      t.references :business_id
      t.references :benefit_type_id

      t.timestamps
    end
    add_index :benefits, :business_id_id
    add_index :benefits, :benefit_type_id_id
  end
end
