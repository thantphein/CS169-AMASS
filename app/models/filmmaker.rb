class Filmmaker < ActiveRecord::Base
  attr_accessible :about, :summary, :experience, :skills, :contact
  has_one :user, :as => :profilable
end
