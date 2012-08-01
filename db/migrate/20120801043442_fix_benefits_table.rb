class FixBenefitsTable < ActiveRecord::Migration
  def up
	rename_column("benefits", "benefit_type_id_id", "benefit_type_id")
	rename_column("benefits", "business_id_id", "business_id")
  end

  def down
	rename_column("benefits", "benefit_type_id", "benefit_type_id_id")
	rename_column("benefits", "business_id", "business_id_id")
  end
end
