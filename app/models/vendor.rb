class Vendor < ActiveRecord::Base
  attr_accessible :name, :description, :email, :password_digest, :category_id, :logo, :password, :password_confirmation, :avatar
  has_many :passes
  belongs_to :category
  has_secure_password

  has_attached_file :avatar
end
