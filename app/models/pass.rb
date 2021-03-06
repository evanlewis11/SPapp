class Pass < ActiveRecord::Base
  attr_accessible :availability_date, :description, :embed_code, :live_stream, :title, :vendor_id, :price
  belongs_to :vendor
  has_many :purchases
end
