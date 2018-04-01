class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name(input = nil)
    self.first_name self.last_name
  end
end
