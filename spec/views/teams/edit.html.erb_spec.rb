require 'spec_helper'

describe "teams/edit" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :company_name => "MyString",
      :nick_name => "MyString"
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path(@team), :method => "post" do
      assert_select "input#team_company_name", :name => "team[company_name]"
      assert_select "input#team_nick_name", :name => "team[nick_name]"
    end
  end
end
