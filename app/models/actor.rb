class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
  	"#{self.first_name} #{self.last_name}"
  end

#added 006 - add actorid to characters
  def list_roles
  	characters.map do|char| 
  		"#{char.name} - #{char.show.name}"
  	end
  end

end