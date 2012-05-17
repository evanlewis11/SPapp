class Pass < ActiveRecord::Base
  attr_accessible :availability_date, :description, :embed_code, :live_stream, :title, :vendor_id
  belongs_to :vendor
end
