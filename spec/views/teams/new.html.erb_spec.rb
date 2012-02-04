require 'spec_helper'

describe "teams/new" do
  before(:each) do
    assign(:team, stub_model(Team,
      :company_name => "MyString",
      :nick_name => "MyString"
    ).as_new_record)
  end

  it "renders new team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path, :method => "post" do
      assert_select "input#team_company_name", :name => "team[company_name]"
      assert_select "input#team_nick_name", :name => "team[nick_name]"
    end
  end
end
