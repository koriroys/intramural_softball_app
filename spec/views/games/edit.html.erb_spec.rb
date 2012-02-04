require 'spec_helper'

describe "games/edit" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :home_team_id => 1,
      :visiting_team_id => 1,
      :winning_team_id => 1
    ))
  end

  it "renders the edit game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path(@game), :method => "post" do
      assert_select "input#game_home_team_id", :name => "game[home_team_id]"
      assert_select "input#game_visiting_team_id", :name => "game[visiting_team_id]"
      assert_select "input#game_winning_team_id", :name => "game[winning_team_id]"
    end
  end
end
