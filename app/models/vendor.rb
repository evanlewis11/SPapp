class Vendor < ActiveRecord::Base
  attr_accessible :name, :description, :email, :password_digest, :category_id, :logo, :password, :password_confirmation
  has_many :passes
  belongs_to :category
  has_secure_password

end
