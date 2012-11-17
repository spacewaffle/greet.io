class UserAtEvent < ActiveRecord::Base
  attr_accessible :event_id, :user_id, :image, :created_at, :updated_at, :archived_at
  
  belongs_to    :user_at_event
  has_many      :users
  has_many      :tags
  has_attached_file :avatar, :styles => { :medium => "125x125>", :thumb => "50x50>" }
end
