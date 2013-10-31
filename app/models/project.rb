class Project < ActiveRecord::Base
  attr_accessible :blurb, :budget, :category, :deadline, :description, :location, :name, :nonprofit_mission, :organization, :status
end
