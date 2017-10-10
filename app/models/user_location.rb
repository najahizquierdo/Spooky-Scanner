class UserLocation < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  # Remember to create a migration!
end
