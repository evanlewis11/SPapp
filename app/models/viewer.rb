class Viewer < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :picture
end
