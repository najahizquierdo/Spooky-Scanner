class User < ActiveRecord::Base
  validates :email, :username, presence: true, uniqueness: true

  has_many :user_locations, class_name: "UserLocation", foreign_key: "user_id"
  has_many :comments, through: :user_locations, source: :user
  has_many :bookmarks, through: :user_locations, source: :user


  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate(password)
    self.password == password
  end
end
