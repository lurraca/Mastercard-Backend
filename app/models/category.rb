class Category < ActiveRecord::Base
  has_many :businesses
  attr_accessible :id, :name
  validates :name, :presence => true
end
