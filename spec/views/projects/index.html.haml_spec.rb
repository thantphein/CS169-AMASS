require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :organization => "Organization",
        :blurb => "Blurb",
        :nonprofit_mission => "NonProfit",
        :description => "Description",
        :status => "Status",
        :budget => 1
      ),
      stub_model(Project,
        :name => "Name",
        :organization => "Organization",
        :blurb => "Blurb",
        :nonprofit_mission => "NonProfit",
        :description => "Description",
        :status => "Status",
        :budget => 1
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    assert_select "tr>td", :text => "Blurb".to_s, :count => 2
    assert_select "tr>td", :text => "NonProfit".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
