class Project < ActiveRecord::Base
  attr_accessible :blurb, :budget, :deadline, :description, :name, :nonprofit_mission, :organization, :status
end
