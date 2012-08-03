class Business < ActiveRecord::Base
  belongs_to :category
  attr_accessible :address, :category_id, :description, :name, :phone, :logo, :active
  has_attached_file :logo
end
