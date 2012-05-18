class Purchase < ActiveRecord::Base
  attr_accessible :link, :pass_id, :viewer_id
  belongs_to :viewer
  belongs_to :pass
end
