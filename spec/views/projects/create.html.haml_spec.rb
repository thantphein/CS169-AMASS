require 'spec_helper'

describe "projects/create" do

  it "creates a project" do
    proj = [{:name => "MyString",
      :organization => "MyString",
      :blurb => "MyText",
      :nonprofit_mission => "MyText",
      :description => "MyText",
      :status => "MyString",
      :budget => 1}]
    Project.create!(proj)
    Project.stub(:find_by_id).and_return(proj)
  end
end

