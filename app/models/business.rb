class Business < ActiveRecord::Base
  belongs_to :category
  attr_accessible :address, :category_id, :description, :name, :phone, :logo, :active
  has_attached_file :logo, :styles => { :thumb => "175x175!" }

  def self.active
    Business.where(:active => true)
  end

  def self.by_category(id)
    Business.active.where(:category_id => id)
  end
end
