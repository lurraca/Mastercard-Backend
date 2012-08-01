class CreateBenefitTypes < ActiveRecord::Migration
  def change
    create_table :benefit_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
