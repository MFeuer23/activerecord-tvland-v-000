class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name(input = self)
    self.first_name self.last_name
  end
end
