class Version < ActiveRecord::Base
  attr_accessible :number

  def increase_number
    self.increment(:number)
    self.save
  end
end

