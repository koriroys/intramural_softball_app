class Player < ActiveRecord::Base
  
  validates :team_id, :presence => true
  validates :name, :presence => true
  validates :jersey_number, :presence => true
  
  # validate :team_exists
  
  belongs_to :team
  
  def team_exists
    errors.add(:team_id, "is not a valid team id") unless team.present?
  end
  
end
