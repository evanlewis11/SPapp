class Vendor < ActiveRecord::Base
  attr_accessible :name, :description, :email, :password_digest, :category_id, :logo
  has_many :passes
  belongs_to :category
end
