class User < ActiveRecord::Base
  attr_accessible :login, :password
end
