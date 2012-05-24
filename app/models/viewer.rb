class Viewer < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :picture
  has_secure_password
  has_many :purchases
end
