require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :home_team_id => 1,
      :visiting_team_id => 1,
      :winning_team_id => 1
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path, :method => "post" do
      assert_select "input#game_home_team_id", :name => "game[home_team_id]"
      assert_select "input#game_visiting_team_id", :name => "game[visiting_team_id]"
      assert_select "input#game_winning_team_id", :name => "game[winning_team_id]"
    end
  end
end
