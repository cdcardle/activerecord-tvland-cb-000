class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    roles.tap(characters.each {|c| puts "#{c.name} - #{c.show}"})
  end
end
