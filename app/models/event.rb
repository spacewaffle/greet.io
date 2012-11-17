class Event < ActiveRecord::Base
  attr_accessible :event_name, :event_code, :created_at, :updated_at, :archived_at
  
  has_many  :user_at_events
  has_many  :tags
end
