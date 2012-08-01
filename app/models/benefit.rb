class Benefit < ActiveRecord::Base
  belongs_to :business_id
  belongs_to :benefit_type_id
  attr_accessible :begin_date, :description, :end_date, :name
end
