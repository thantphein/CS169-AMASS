require 'spec_helper'

=begin
describe "View a Project" do
  subject {page}
  before do
    let(:project) { FactoryGirl.create(:project) }
    visit project_path(project.id)
=end

=begin
describe Project do
  before do
    @proj1 = mock(Project, :name=>"A",:organization=>"A Org", :blurb=>"A blurb", :nonprofit_mission=>"A Mission", :description=>"A Description",:deadline=>"01-01-2014", :status=>"open", :budget=>"50")
    @proj2 = mock(Project, :name=>"B",:organization=>"B Org", :blurb=>"B blurb", :nonprofit_mission=>"B Mission", :description=>"B Description",:deadline=>"03-01-2014", :status=>"open", :budget=>"10")
  end

  describe "Show a detail project" do
    it "should call show method" do
      post :show, {:id=>"1"}
      response.should render_template('show')
    end
  end
end
=end
