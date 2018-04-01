class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    characters.collect do |character|
      shows.collect do |show|
        "#{character.name} - #{show.name}".flatten
      end
    end
  end
end
