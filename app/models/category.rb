class Category < ActiveRecord::Base
  has_many :businesses
  attr_accessible :id, :name
end
