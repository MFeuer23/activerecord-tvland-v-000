class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    characters.each do |character|
      shows.each do |show|
        "#{character.name} - #{show.name}"
      end
    end
  end
end
