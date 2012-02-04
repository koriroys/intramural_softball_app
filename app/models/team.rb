class Team < ActiveRecord::Base
  
  has_many :performances
  has_many :players
  
end
