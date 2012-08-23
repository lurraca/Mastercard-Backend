class Benefit < ActiveRecord::Base
  belongs_to :business
  belongs_to :benefit_type
  attr_accessible :begin_date, :description, :end_date, :name, :benefit_type_id, :business_id
  validates :name, :presence => true
  validates :begin_date, :presence => true
  validates :end_date, :presence => true
  validates :description, :presence => true
  validates :benefit_type_id, :presence => true
  validates :business_id, :presence => true

  def validate_end_date_before_begin_date
	  if end_date && begin_date
		  errors.add(:end_date, "Revisar fechas") if end_date < begin_date
	  end
  end
 

end
