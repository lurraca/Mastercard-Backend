class BenefitType < ActiveRecord::Base
  attr_accessible :name
  has_many :benefits
end
