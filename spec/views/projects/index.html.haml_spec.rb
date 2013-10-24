require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :organization => "Organization",
        :blurb => "MyText",
        :nonprofit_mission => "MyText",
        :description => "MyText",
        :status => "Status",
        :budget => 1
      ),
      stub_model(Project,
        :name => "Name",
        :organization => "Organization",
        :blurb => "MyText",
        :nonprofit_mission => "MyText",
        :description => "MyText",
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
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
