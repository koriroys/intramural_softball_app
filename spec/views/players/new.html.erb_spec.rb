require 'spec_helper'

describe "players/new" do
  before(:each) do
    assign(:player, stub_model(Player,
      :name => "MyString",
      :jersey_number => 1
    ).as_new_record)
  end

  it "renders new player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path, :method => "post" do
      assert_select "input#player_name", :name => "player[name]"
      assert_select "input#player_jersey_number", :name => "player[jersey_number]"
    end
  end
end
