require 'spec_helper'

describe Player do
  
  before(:each) do
    @player = Player.new
    @team = Team.new :id => 1
    @team.save
  end
  
  describe "creating a new Player" do
    it "must be assigned to a team" do
      @player.team_id = 1
      @player.save
      puts @player.team_id
      @player.team_id.should be_equal @team.id
    end
  end
end
