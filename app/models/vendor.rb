class Vendor < ActiveRecord::Base
  attr_accessible :bio, :name
  has_many :passes
end
