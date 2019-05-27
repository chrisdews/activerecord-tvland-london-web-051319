class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
#have to tell show about network if we want show methods to work on network.. is this right?
end

