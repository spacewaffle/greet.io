class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :registered_at, :archived_at
  
  belongs_to    :user_at_event
end
