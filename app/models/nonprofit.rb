class Nonprofit < ActiveRecord::Base
    has_one :user, :as => :profilable
end
