class Benefit < ActiveRecord::Base
  belongs_to :business
  belongs_to :benefit_type
  attr_accessible :begin_date, :description, :end_date, :name, :benefit_type_id, :business_id
end
