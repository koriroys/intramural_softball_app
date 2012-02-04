require 'spec_helper'

describe "teams/index" do
  before(:each) do
    assign(:teams, [
      stub_model(Team,
        :company_name => "Company Name",
        :nick_name => "Nick Name"
      ),
      stub_model(Team,
        :company_name => "Company Name",
        :nick_name => "Nick Name"
      )
    ])
  end

  it "renders a list of teams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nick Name".to_s, :count => 2
  end
end
