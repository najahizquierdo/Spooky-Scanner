class Location < ActiveRecord::Base
  validates :name, :body, :address, presence: true


  has_many :user_locations, class_name: "UserLocation", foreign_key: "location_id"
  has_many :user_comments, through: :user_locations, source: :location
  has_many :user_bookmarks, through: :user_locations, source: :location

  # Remember to create a migration!
end
