class Business < ActiveRecord::Base
  belongs_to :category_id
  attr_accessible :address, :description, :name, :phone, :logo
  has_attached_file :logo
end
