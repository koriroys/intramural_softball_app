require 'spec_helper'

describe "teams/show" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :company_name => "Company Name",
      :nick_name => "Nick Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nick Name/)
  end
end
